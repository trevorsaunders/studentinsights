# This class is authorization-aware, and checks authorization for the grade level
# in a different, more permissive way than normal.  This lets a classroom teacher
# at a particular grade access all students in their school at that same grade level.
#
# And it lets districtwide and schoolwide users work as expected, with no additional
# cases for grade-level access, sped or ELL levels of access.
class ClassroomBalancing
  def initialize(educator)
    @educator = educator
  end

  # What grade levels do we want to support balancing for?
  def grade_levels_next_year_to_balance
    ['1','2','3','4','5','6']
  end

  # What schools are supported?
  def schools_to_balance
    School.where(school_type: ['ESMS', 'ES', 'MS'])
  end

  # This is authorization-aware, and checks authorization for the grade level
  # in a different, more permissive way than normal.
  def authorized_students_for_next_year(school_id, grade_level_next_year)
    grade_level_now = GradeLevels.new.previous(grade_level_next_year)
    return [] unless is_authorized_for_grade_level_now?(school_id, grade_level_now)

    # Query for those students (outside normal authorization rules)
    Student.active.where({
      school_id: school_id,
      grade: grade_level_now
    })
  end

  # This is authorization-aware, and it also only lets @educators read their own writes.
  def authorized_balancing(balance_id)
    # Read only most recent own write
    balancings = ClassroomsForGrade
      .order(created_at: :desc)
      .limit(1)
      .where({
        balance_id: balance_id,
        created_by_educator_id: @educator.id
      })
    return nil unless balancings.size == 1

    # Check that educator is authorized for that grade level
    balancing = balancings.first
    grade_level_now = GradeLevels.new.previous(balancing.grade_level_next_year)
    return nil unless is_authorized_for_grade_level_now?(balancing.school_id, grade_level_now)

    balancing
  end

  # This is intended only for use in this controller, and allows more people
  # "grade level access" than the standard authorization rules.  It's based off
  # code in `authorizer#is_authorized_for_student?` but is different and more permissive.
  def is_authorized_for_grade_level_now?(school_id, grade_level_now)
    return false unless GradeLevels.new.next(grade_level_now).in?(grade_levels_next_year_to_balance)
    return false unless school_id.in?(schools_to_balance.map(&:id))
    return false unless is_authorized_for_school_id?(school_id)

    return true if @educator.districtwide_access?
    return true if @educator.admin?
    return true if @educator.schoolwide_access?
    return true if grade_level_now == @educator.homeroom.try(:grade)

    false
  end

  # Is the user assigned to that school? (ie, this isn't the same as "do they
  # have access to everything in that school, it's more permissive).
  def is_authorized_for_school_id?(school_id)
    return true if @educator.districtwide_access?
    return true if @educator.school_id == school_id
    false
  end
end