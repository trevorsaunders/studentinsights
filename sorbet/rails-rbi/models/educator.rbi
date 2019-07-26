# This is an autogenerated file for dynamic methods in Educator
# Please rerun rake rails_rbi:models to regenerate.
# typed: strong

class Educator::ActiveRecord_Relation < ActiveRecord::Relation
  include Educator::ModelRelationShared
  extend T::Generic
  Elem = type_member(fixed: Educator)
end

class Educator::ActiveRecord_Associations_CollectionProxy < ActiveRecord::Associations::CollectionProxy
  include Educator::ModelRelationShared
  extend T::Generic
  Elem = type_member(fixed: Educator)
end

class Educator < ApplicationRecord
  extend T::Sig
  extend T::Generic
  extend Educator::ModelRelationShared
  include Educator::InstanceMethods
  Elem = type_template(fixed: Educator)
end

module Educator::InstanceMethods
  extend T::Sig

  sig { returns(T.nilable(T::Boolean)) }
  def admin(); end

  sig { params(value: T.nilable(T::Boolean)).void }
  def admin=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def admin?(*args); end

  sig { returns(T::Boolean) }
  def can_set_districtwide_access(); end

  sig { params(value: T::Boolean).void }
  def can_set_districtwide_access=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def can_set_districtwide_access?(*args); end

  sig { returns(T::Boolean) }
  def can_view_restricted_notes(); end

  sig { params(value: T::Boolean).void }
  def can_view_restricted_notes=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def can_view_restricted_notes?(*args); end

  sig { returns(T.nilable(DateTime)) }
  def created_at(); end

  sig { params(value: T.nilable(DateTime)).void }
  def created_at=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def created_at?(*args); end

  sig { returns(T.nilable(DateTime)) }
  def current_sign_in_at(); end

  sig { params(value: T.nilable(DateTime)).void }
  def current_sign_in_at=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def current_sign_in_at?(*args); end

  sig { returns(T.nilable(T.untyped)) }
  def current_sign_in_ip(); end

  sig { params(value: T.nilable(T.untyped)).void }
  def current_sign_in_ip=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def current_sign_in_ip?(*args); end

  sig { returns(T::Boolean) }
  def districtwide_access(); end

  sig { params(value: T::Boolean).void }
  def districtwide_access=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def districtwide_access?(*args); end

  sig { returns(String) }
  def email(); end

  sig { params(value: String).void }
  def email=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def email?(*args); end

  sig { returns(T.nilable(String)) }
  def full_name(); end

  sig { params(value: T.nilable(String)).void }
  def full_name=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def full_name?(*args); end

  sig { returns(T.nilable(T::Array[T.untyped])) }
  def grade_level_access(); end

  sig { params(value: T.nilable(T::Array[T.untyped])).void }
  def grade_level_access=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def grade_level_access?(*args); end

  sig { returns(Integer) }
  def id(); end

  sig { params(value: Integer).void }
  def id=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def id?(*args); end

  sig { returns(T.nilable(DateTime)) }
  def last_sign_in_at(); end

  sig { params(value: T.nilable(DateTime)).void }
  def last_sign_in_at=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def last_sign_in_at?(*args); end

  sig { returns(T.nilable(T.untyped)) }
  def last_sign_in_ip(); end

  sig { params(value: T.nilable(T.untyped)).void }
  def last_sign_in_ip=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def last_sign_in_ip?(*args); end

  sig { returns(T.nilable(String)) }
  def local_id(); end

  sig { params(value: T.nilable(String)).void }
  def local_id=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def local_id?(*args); end

  sig { returns(String) }
  def login_name(); end

  sig { params(value: String).void }
  def login_name=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def login_name?(*args); end

  sig { returns(T.nilable(String)) }
  def phone(); end

  sig { params(value: T.nilable(String)).void }
  def phone=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def phone?(*args); end

  sig { returns(T.nilable(DateTime)) }
  def remember_created_at(); end

  sig { params(value: T.nilable(DateTime)).void }
  def remember_created_at=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def remember_created_at?(*args); end

  sig { returns(T::Boolean) }
  def restricted_to_english_language_learners(); end

  sig { params(value: T::Boolean).void }
  def restricted_to_english_language_learners=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def restricted_to_english_language_learners?(*args); end

  sig { returns(T::Boolean) }
  def restricted_to_sped_students(); end

  sig { params(value: T::Boolean).void }
  def restricted_to_sped_students=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def restricted_to_sped_students?(*args); end

  sig { returns(T.nilable(Integer)) }
  def school_id(); end

  sig { params(value: T.nilable(Integer)).void }
  def school_id=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def school_id?(*args); end

  sig { returns(T::Boolean) }
  def schoolwide_access(); end

  sig { params(value: T::Boolean).void }
  def schoolwide_access=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def schoolwide_access?(*args); end

  sig { returns(Integer) }
  def sign_in_count(); end

  sig { params(value: Integer).void }
  def sign_in_count=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def sign_in_count?(*args); end

  sig { returns(T.nilable(String)) }
  def staff_type(); end

  sig { params(value: T.nilable(String)).void }
  def staff_type=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def staff_type?(*args); end

  sig { returns(T.nilable(String)) }
  def state_id(); end

  sig { params(value: T.nilable(String)).void }
  def state_id=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def state_id?(*args); end

  sig { returns(T.nilable(DateTime)) }
  def updated_at(); end

  sig { params(value: T.nilable(DateTime)).void }
  def updated_at=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def updated_at?(*args); end

end

class Educator
  extend T::Sig

  sig { returns(::EducatorLabel::ActiveRecord_Associations_CollectionProxy) }
  def educator_labels(); end

  sig { params(value: T.any(T::Array[::EducatorLabel], ::EducatorLabel::ActiveRecord_Associations_CollectionProxy)).void }
  def educator_labels=(value); end

  sig { returns(::EducatorSectionAssignment::ActiveRecord_Associations_CollectionProxy) }
  def educator_section_assignments(); end

  sig { params(value: T.any(T::Array[::EducatorSectionAssignment], ::EducatorSectionAssignment::ActiveRecord_Associations_CollectionProxy)).void }
  def educator_section_assignments=(value); end

  sig { returns(::EventNote::ActiveRecord_Associations_CollectionProxy) }
  def event_notes(); end

  sig { params(value: T.any(T::Array[::EventNote], ::EventNote::ActiveRecord_Associations_CollectionProxy)).void }
  def event_notes=(value); end

  sig { returns(T.nilable(::Homeroom)) }
  def homeroom(); end

  sig { params(value: T.nilable(::Homeroom)).void }
  def homeroom=(value); end

  sig { returns(::Intervention::ActiveRecord_Associations_CollectionProxy) }
  def interventions(); end

  sig { params(value: T.any(T::Array[::Intervention], ::Intervention::ActiveRecord_Associations_CollectionProxy)).void }
  def interventions=(value); end

  sig { returns(::LoginActivity::ActiveRecord_Associations_CollectionProxy) }
  def login_activities(); end

  sig { params(value: T.any(T::Array[::LoginActivity], ::LoginActivity::ActiveRecord_Associations_CollectionProxy)).void }
  def login_activities=(value); end

  sig { returns(T.nilable(::School)) }
  def school(); end

  sig { params(value: T.nilable(::School)).void }
  def school=(value); end

  sig { returns(::Student::ActiveRecord_Associations_CollectionProxy) }
  def section_students(); end

  sig { params(value: T.any(T::Array[::Student], ::Student::ActiveRecord_Associations_CollectionProxy)).void }
  def section_students=(value); end

  sig { returns(::Section::ActiveRecord_Associations_CollectionProxy) }
  def sections(); end

  sig { params(value: T.any(T::Array[::Section], ::Section::ActiveRecord_Associations_CollectionProxy)).void }
  def sections=(value); end

  sig { returns(::Student::ActiveRecord_Associations_CollectionProxy) }
  def students(); end

  sig { params(value: T.any(T::Array[::Student], ::Student::ActiveRecord_Associations_CollectionProxy)).void }
  def students=(value); end

  sig { returns(::TransitionNote::ActiveRecord_Associations_CollectionProxy) }
  def transition_notes(); end

  sig { params(value: T.any(T::Array[::TransitionNote], ::TransitionNote::ActiveRecord_Associations_CollectionProxy)).void }
  def transition_notes=(value); end

end

module Educator::ModelRelationShared
  extend T::Sig

  sig { returns(Educator::ActiveRecord_Relation) }
  def all(); end

  sig { params(block: T.nilable(T.proc.void)).returns(Educator::ActiveRecord_Relation) }
  def unscoped(&block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Educator::ActiveRecord_Relation) }
  def select(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Educator::ActiveRecord_Relation) }
  def order(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Educator::ActiveRecord_Relation) }
  def reorder(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Educator::ActiveRecord_Relation) }
  def group(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Educator::ActiveRecord_Relation) }
  def limit(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Educator::ActiveRecord_Relation) }
  def offset(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Educator::ActiveRecord_Relation) }
  def joins(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Educator::ActiveRecord_Relation) }
  def left_joins(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Educator::ActiveRecord_Relation) }
  def left_outer_joins(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Educator::ActiveRecord_Relation) }
  def where(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Educator::ActiveRecord_Relation) }
  def rewhere(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Educator::ActiveRecord_Relation) }
  def preload(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Educator::ActiveRecord_Relation) }
  def eager_load(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Educator::ActiveRecord_Relation) }
  def includes(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Educator::ActiveRecord_Relation) }
  def from(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Educator::ActiveRecord_Relation) }
  def lock(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Educator::ActiveRecord_Relation) }
  def readonly(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Educator::ActiveRecord_Relation) }
  def extending(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Educator::ActiveRecord_Relation) }
  def or(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Educator::ActiveRecord_Relation) }
  def having(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Educator::ActiveRecord_Relation) }
  def create_with(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Educator::ActiveRecord_Relation) }
  def distinct(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Educator::ActiveRecord_Relation) }
  def references(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Educator::ActiveRecord_Relation) }
  def none(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Educator::ActiveRecord_Relation) }
  def unscope(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Educator::ActiveRecord_Relation) }
  def merge(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Educator::ActiveRecord_Relation) }
  def except(*args, &block); end

end
