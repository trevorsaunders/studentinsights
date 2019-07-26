# This is an autogenerated file for dynamic methods in PasswordCheck
# Please rerun rake rails_rbi:models to regenerate.
# typed: strong

class PasswordCheck::ActiveRecord_Relation < ActiveRecord::Relation
  include PasswordCheck::ModelRelationShared
  extend T::Generic
  Elem = type_member(fixed: PasswordCheck)
end

class PasswordCheck::ActiveRecord_Associations_CollectionProxy < ActiveRecord::Associations::CollectionProxy
  include PasswordCheck::ModelRelationShared
  extend T::Generic
  Elem = type_member(fixed: PasswordCheck)
end

class PasswordCheck < ApplicationRecord
  extend T::Sig
  extend T::Generic
  extend PasswordCheck::ModelRelationShared
  include PasswordCheck::InstanceMethods
  Elem = type_template(fixed: PasswordCheck)
end

module PasswordCheck::InstanceMethods
  extend T::Sig

  sig { returns(T.untyped) }
  def id(); end

  sig { params(value: T.untyped).void }
  def id=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def id?(*args); end

  sig { returns(T.nilable(String)) }
  def json_encrypted(); end

  sig { params(value: T.nilable(String)).void }
  def json_encrypted=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def json_encrypted?(*args); end

end

class PasswordCheck
  extend T::Sig

end

module PasswordCheck::ModelRelationShared
  extend T::Sig

  sig { returns(PasswordCheck::ActiveRecord_Relation) }
  def all(); end

  sig { params(block: T.nilable(T.proc.void)).returns(PasswordCheck::ActiveRecord_Relation) }
  def unscoped(&block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(PasswordCheck::ActiveRecord_Relation) }
  def select(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(PasswordCheck::ActiveRecord_Relation) }
  def order(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(PasswordCheck::ActiveRecord_Relation) }
  def reorder(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(PasswordCheck::ActiveRecord_Relation) }
  def group(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(PasswordCheck::ActiveRecord_Relation) }
  def limit(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(PasswordCheck::ActiveRecord_Relation) }
  def offset(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(PasswordCheck::ActiveRecord_Relation) }
  def joins(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(PasswordCheck::ActiveRecord_Relation) }
  def left_joins(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(PasswordCheck::ActiveRecord_Relation) }
  def left_outer_joins(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(PasswordCheck::ActiveRecord_Relation) }
  def where(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(PasswordCheck::ActiveRecord_Relation) }
  def rewhere(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(PasswordCheck::ActiveRecord_Relation) }
  def preload(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(PasswordCheck::ActiveRecord_Relation) }
  def eager_load(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(PasswordCheck::ActiveRecord_Relation) }
  def includes(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(PasswordCheck::ActiveRecord_Relation) }
  def from(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(PasswordCheck::ActiveRecord_Relation) }
  def lock(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(PasswordCheck::ActiveRecord_Relation) }
  def readonly(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(PasswordCheck::ActiveRecord_Relation) }
  def extending(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(PasswordCheck::ActiveRecord_Relation) }
  def or(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(PasswordCheck::ActiveRecord_Relation) }
  def having(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(PasswordCheck::ActiveRecord_Relation) }
  def create_with(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(PasswordCheck::ActiveRecord_Relation) }
  def distinct(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(PasswordCheck::ActiveRecord_Relation) }
  def references(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(PasswordCheck::ActiveRecord_Relation) }
  def none(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(PasswordCheck::ActiveRecord_Relation) }
  def unscope(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(PasswordCheck::ActiveRecord_Relation) }
  def merge(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(PasswordCheck::ActiveRecord_Relation) }
  def except(*args, &block); end

end
