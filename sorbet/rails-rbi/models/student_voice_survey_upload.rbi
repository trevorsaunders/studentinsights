# This is an autogenerated file for dynamic methods in StudentVoiceSurveyUpload
# Please rerun rake rails_rbi:models to regenerate.
# typed: true

class StudentVoiceSurveyUpload::ActiveRecord_Relation < ActiveRecord::Relation
  include StudentVoiceSurveyUpload::ModelRelationShared
  extend T::Generic
  Elem = type_member(fixed: StudentVoiceSurveyUpload)
end

class StudentVoiceSurveyUpload::ActiveRecord_Associations_CollectionProxy < ActiveRecord::Associations::CollectionProxy
  include StudentVoiceSurveyUpload::ModelRelationShared
  extend T::Generic
  Elem = type_member(fixed: StudentVoiceSurveyUpload)
end

class StudentVoiceSurveyUpload < ApplicationRecord
  extend T::Sig
  extend T::Generic
  extend StudentVoiceSurveyUpload::ModelRelationShared
  include StudentVoiceSurveyUpload::InstanceMethods
  Elem = type_template(fixed: StudentVoiceSurveyUpload)
end

module StudentVoiceSurveyUpload::InstanceMethods
  extend T::Sig

  sig { returns(T::Boolean) }
  def completed(); end

  sig { params(value: T::Boolean).void }
  def completed=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def completed?(*args); end

  sig { returns(DateTime) }
  def created_at(); end

  sig { params(value: DateTime).void }
  def created_at=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def created_at?(*args); end

  sig { returns(String) }
  def file_digest(); end

  sig { params(value: String).void }
  def file_digest=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def file_digest?(*args); end

  sig { returns(String) }
  def file_name(); end

  sig { params(value: String).void }
  def file_name=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def file_name?(*args); end

  sig { returns(Integer) }
  def file_size(); end

  sig { params(value: Integer).void }
  def file_size=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def file_size?(*args); end

  sig { returns(Integer) }
  def id(); end

  sig { params(value: Integer).void }
  def id=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def id?(*args); end

  sig { returns(T.any(Array, T::Boolean, Float, Hash, Integer, String)) }
  def stats(); end

  sig { params(value: T.any(Array, T::Boolean, Float, Hash, Integer, String)).void }
  def stats=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def stats?(*args); end

  sig { returns(DateTime) }
  def updated_at(); end

  sig { params(value: DateTime).void }
  def updated_at=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def updated_at?(*args); end

  sig { returns(Integer) }
  def uploaded_by_educator_id(); end

  sig { params(value: Integer).void }
  def uploaded_by_educator_id=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def uploaded_by_educator_id?(*args); end

end

class StudentVoiceSurveyUpload
  extend T::Sig

  sig { returns(::StudentVoiceCompletedSurvey::ActiveRecord_Associations_CollectionProxy) }
  def student_voice_completed_surveys(); end

  sig { params(value: T.any(T::Array[::StudentVoiceCompletedSurvey], ::StudentVoiceCompletedSurvey::ActiveRecord_Associations_CollectionProxy)).void }
  def student_voice_completed_surveys=(value); end

  sig { returns(::Student::ActiveRecord_Associations_CollectionProxy) }
  def students(); end

  sig { params(value: T.any(T::Array[::Student], ::Student::ActiveRecord_Associations_CollectionProxy)).void }
  def students=(value); end

  sig { returns(::Educator) }
  def uploaded_by_educator(); end

  sig { params(value: ::Educator).void }
  def uploaded_by_educator=(value); end

end

module StudentVoiceSurveyUpload::ModelRelationShared
  extend T::Sig

  sig { returns(StudentVoiceSurveyUpload::ActiveRecord_Relation) }
  def all(); end

  sig { params(block: T.nilable(T.proc.void)).returns(StudentVoiceSurveyUpload::ActiveRecord_Relation) }
  def unscoped(&block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(StudentVoiceSurveyUpload::ActiveRecord_Relation) }
  def select(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(StudentVoiceSurveyUpload::ActiveRecord_Relation) }
  def order(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(StudentVoiceSurveyUpload::ActiveRecord_Relation) }
  def reorder(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(StudentVoiceSurveyUpload::ActiveRecord_Relation) }
  def group(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(StudentVoiceSurveyUpload::ActiveRecord_Relation) }
  def limit(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(StudentVoiceSurveyUpload::ActiveRecord_Relation) }
  def offset(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(StudentVoiceSurveyUpload::ActiveRecord_Relation) }
  def joins(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(StudentVoiceSurveyUpload::ActiveRecord_Relation) }
  def left_joins(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(StudentVoiceSurveyUpload::ActiveRecord_Relation) }
  def left_outer_joins(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(StudentVoiceSurveyUpload::ActiveRecord_Relation) }
  def where(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(StudentVoiceSurveyUpload::ActiveRecord_Relation) }
  def rewhere(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(StudentVoiceSurveyUpload::ActiveRecord_Relation) }
  def preload(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(StudentVoiceSurveyUpload::ActiveRecord_Relation) }
  def eager_load(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(StudentVoiceSurveyUpload::ActiveRecord_Relation) }
  def includes(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(StudentVoiceSurveyUpload::ActiveRecord_Relation) }
  def from(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(StudentVoiceSurveyUpload::ActiveRecord_Relation) }
  def lock(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(StudentVoiceSurveyUpload::ActiveRecord_Relation) }
  def readonly(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(StudentVoiceSurveyUpload::ActiveRecord_Relation) }
  def extending(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(StudentVoiceSurveyUpload::ActiveRecord_Relation) }
  def or(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(StudentVoiceSurveyUpload::ActiveRecord_Relation) }
  def having(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(StudentVoiceSurveyUpload::ActiveRecord_Relation) }
  def create_with(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(StudentVoiceSurveyUpload::ActiveRecord_Relation) }
  def distinct(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(StudentVoiceSurveyUpload::ActiveRecord_Relation) }
  def references(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(StudentVoiceSurveyUpload::ActiveRecord_Relation) }
  def none(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(StudentVoiceSurveyUpload::ActiveRecord_Relation) }
  def unscope(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(StudentVoiceSurveyUpload::ActiveRecord_Relation) }
  def merge(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(StudentVoiceSurveyUpload::ActiveRecord_Relation) }
  def except(*args, &block); end

end
