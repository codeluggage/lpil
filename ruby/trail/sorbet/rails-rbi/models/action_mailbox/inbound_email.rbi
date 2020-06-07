# This is an autogenerated file for dynamic methods in ActionMailbox::InboundEmail
# Please rerun rake rails_rbi:models[ActionMailbox::InboundEmail] to regenerate.

# typed: strong
module ActionMailbox::InboundEmail::EnumInstanceMethods
  extend T::Sig

  sig { returns(T::Boolean) }
  def pending?; end

  sig { void }
  def pending!; end

  sig { returns(T::Boolean) }
  def processing?; end

  sig { void }
  def processing!; end

  sig { returns(T::Boolean) }
  def delivered?; end

  sig { void }
  def delivered!; end

  sig { returns(T::Boolean) }
  def failed?; end

  sig { void }
  def failed!; end

  sig { returns(T::Boolean) }
  def bounced?; end

  sig { void }
  def bounced!; end
end

module ActionMailbox::InboundEmail::ActiveRelation_WhereNot
  sig { params(opts: T.untyped, rest: T.untyped).returns(T.self_type) }
  def not(opts, *rest); end
end

module ActionMailbox::InboundEmail::CustomFinderMethods
  sig { params(limit: Integer).returns(T::Array[ActionMailbox::InboundEmail]) }
  def first_n(limit); end

  sig { params(limit: Integer).returns(T::Array[ActionMailbox::InboundEmail]) }
  def last_n(limit); end

  sig { params(args: T::Array[T.any(Integer, String)]).returns(T::Array[ActionMailbox::InboundEmail]) }
  def find_n(*args); end

  sig { params(id: Integer).returns(T.nilable(ActionMailbox::InboundEmail)) }
  def find_by_id(id); end

  sig { params(id: Integer).returns(ActionMailbox::InboundEmail) }
  def find_by_id!(id); end
end

class ActionMailbox::InboundEmail < ActiveRecord::Base
  include ActionMailbox::InboundEmail::EnumInstanceMethods
  include ActionMailbox::InboundEmail::GeneratedAssociationMethods
  extend ActionMailbox::InboundEmail::CustomFinderMethods
  extend T::Sig
  extend T::Generic

  sig { returns(T::Hash[T.any(String, Symbol), Integer]) }
  def self.statuses; end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_Relation) }
  def self.bounced(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_Relation) }
  def self.delivered(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_Relation) }
  def self.failed(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_Relation) }
  def self.not_bounced(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_Relation) }
  def self.not_delivered(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_Relation) }
  def self.not_failed(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_Relation) }
  def self.not_pending(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_Relation) }
  def self.not_processing(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_Relation) }
  def self.pending(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_Relation) }
  def self.processing(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_Relation) }
  def self.with_attached_raw_email(*args); end

  sig { returns(ActionMailbox::InboundEmail::ActiveRecord_Relation) }
  def self.all; end

  sig { params(block: T.nilable(T.proc.void)).returns(ActionMailbox::InboundEmail::ActiveRecord_Relation) }
  def self.unscoped(&block); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_Relation) }
  def self.select(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_Relation) }
  def self.reselect(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_Relation) }
  def self.order(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_Relation) }
  def self.reorder(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_Relation) }
  def self.group(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_Relation) }
  def self.limit(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_Relation) }
  def self.offset(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_Relation) }
  def self.joins(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_Relation) }
  def self.left_joins(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_Relation) }
  def self.left_outer_joins(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_Relation) }
  def self.where(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_Relation) }
  def self.rewhere(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_Relation) }
  def self.preload(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_Relation) }
  def self.extract_associated(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_Relation) }
  def self.eager_load(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_Relation) }
  def self.includes(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_Relation) }
  def self.from(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_Relation) }
  def self.lock(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_Relation) }
  def self.readonly(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_Relation) }
  def self.or(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_Relation) }
  def self.having(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_Relation) }
  def self.create_with(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_Relation) }
  def self.distinct(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_Relation) }
  def self.references(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_Relation) }
  def self.none(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_Relation) }
  def self.unscope(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_Relation) }
  def self.optimizer_hints(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_Relation) }
  def self.merge(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_Relation) }
  def self.except(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_Relation) }
  def self.only(*args); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(ActionMailbox::InboundEmail::ActiveRecord_Relation) }
  def self.extending(*args, &block); end

  sig { params(conditions: T.untyped).returns(T::Boolean) }
  def self.exists?(conditions = nil); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def self.any?(*args); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def self.many?(*args); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def self.none?(*args); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def self.one?(*args); end
end

class ActionMailbox::InboundEmail::ActiveRecord_Relation < ActiveRecord::Relation
  include ActionMailbox::InboundEmail::ActiveRelation_WhereNot
  include ActionMailbox::InboundEmail::CustomFinderMethods
  include Enumerable
  extend T::Sig
  extend T::Generic
  Elem = type_member(fixed: ActionMailbox::InboundEmail)

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_Relation) }
  def bounced(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_Relation) }
  def delivered(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_Relation) }
  def failed(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_Relation) }
  def not_bounced(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_Relation) }
  def not_delivered(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_Relation) }
  def not_failed(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_Relation) }
  def not_pending(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_Relation) }
  def not_processing(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_Relation) }
  def pending(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_Relation) }
  def processing(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_Relation) }
  def with_attached_raw_email(*args); end

  sig { returns(ActionMailbox::InboundEmail::ActiveRecord_Relation) }
  def all; end

  sig { params(block: T.nilable(T.proc.void)).returns(ActionMailbox::InboundEmail::ActiveRecord_Relation) }
  def unscoped(&block); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_Relation) }
  def select(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_Relation) }
  def reselect(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_Relation) }
  def order(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_Relation) }
  def reorder(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_Relation) }
  def group(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_Relation) }
  def limit(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_Relation) }
  def offset(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_Relation) }
  def joins(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_Relation) }
  def left_joins(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_Relation) }
  def left_outer_joins(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_Relation) }
  def where(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_Relation) }
  def rewhere(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_Relation) }
  def preload(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_Relation) }
  def extract_associated(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_Relation) }
  def eager_load(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_Relation) }
  def includes(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_Relation) }
  def from(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_Relation) }
  def lock(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_Relation) }
  def readonly(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_Relation) }
  def or(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_Relation) }
  def having(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_Relation) }
  def create_with(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_Relation) }
  def distinct(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_Relation) }
  def references(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_Relation) }
  def none(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_Relation) }
  def unscope(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_Relation) }
  def optimizer_hints(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_Relation) }
  def merge(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_Relation) }
  def except(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_Relation) }
  def only(*args); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(ActionMailbox::InboundEmail::ActiveRecord_Relation) }
  def extending(*args, &block); end

  sig { params(conditions: T.untyped).returns(T::Boolean) }
  def exists?(conditions = nil); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def any?(*args); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def many?(*args); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def none?(*args); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def one?(*args); end
end

class ActionMailbox::InboundEmail::ActiveRecord_AssociationRelation < ActiveRecord::AssociationRelation
  include ActionMailbox::InboundEmail::ActiveRelation_WhereNot
  include ActionMailbox::InboundEmail::CustomFinderMethods
  include Enumerable
  extend T::Sig
  extend T::Generic
  Elem = type_member(fixed: ActionMailbox::InboundEmail)

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_AssociationRelation) }
  def bounced(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_AssociationRelation) }
  def delivered(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_AssociationRelation) }
  def failed(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_AssociationRelation) }
  def not_bounced(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_AssociationRelation) }
  def not_delivered(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_AssociationRelation) }
  def not_failed(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_AssociationRelation) }
  def not_pending(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_AssociationRelation) }
  def not_processing(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_AssociationRelation) }
  def pending(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_AssociationRelation) }
  def processing(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_AssociationRelation) }
  def with_attached_raw_email(*args); end

  sig { returns(ActionMailbox::InboundEmail::ActiveRecord_AssociationRelation) }
  def all; end

  sig { params(block: T.nilable(T.proc.void)).returns(ActionMailbox::InboundEmail::ActiveRecord_AssociationRelation) }
  def unscoped(&block); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_AssociationRelation) }
  def select(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_AssociationRelation) }
  def reselect(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_AssociationRelation) }
  def order(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_AssociationRelation) }
  def reorder(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_AssociationRelation) }
  def group(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_AssociationRelation) }
  def limit(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_AssociationRelation) }
  def offset(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_AssociationRelation) }
  def joins(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_AssociationRelation) }
  def left_joins(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_AssociationRelation) }
  def left_outer_joins(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_AssociationRelation) }
  def where(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_AssociationRelation) }
  def rewhere(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_AssociationRelation) }
  def preload(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_AssociationRelation) }
  def extract_associated(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_AssociationRelation) }
  def eager_load(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_AssociationRelation) }
  def includes(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_AssociationRelation) }
  def from(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_AssociationRelation) }
  def lock(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_AssociationRelation) }
  def readonly(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_AssociationRelation) }
  def or(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_AssociationRelation) }
  def having(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_AssociationRelation) }
  def create_with(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_AssociationRelation) }
  def distinct(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_AssociationRelation) }
  def references(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_AssociationRelation) }
  def none(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_AssociationRelation) }
  def unscope(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_AssociationRelation) }
  def optimizer_hints(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_AssociationRelation) }
  def merge(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_AssociationRelation) }
  def except(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_AssociationRelation) }
  def only(*args); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(ActionMailbox::InboundEmail::ActiveRecord_AssociationRelation) }
  def extending(*args, &block); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail) }
  def find(*args); end

  sig { params(args: T.untyped).returns(T.nilable(ActionMailbox::InboundEmail)) }
  def find_by(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail) }
  def find_by!(*args); end

  sig { params(attributes: T.untyped, block: T.nilable(T.proc.params(object: ActionMailbox::InboundEmail).void)).returns(ActionMailbox::InboundEmail) }
  def find_or_initialize_by(attributes, &block); end

  sig { params(attributes: T.untyped, block: T.nilable(T.proc.params(object: ActionMailbox::InboundEmail).void)).returns(ActionMailbox::InboundEmail) }
  def find_or_create_by(attributes, &block); end

  sig { params(attributes: T.untyped, block: T.nilable(T.proc.params(object: ActionMailbox::InboundEmail).void)).returns(ActionMailbox::InboundEmail) }
  def find_or_create_by!(attributes, &block); end

  sig { returns(T.nilable(ActionMailbox::InboundEmail)) }
  def first; end

  sig { returns(ActionMailbox::InboundEmail) }
  def first!; end

  sig { returns(T.nilable(ActionMailbox::InboundEmail)) }
  def second; end

  sig { returns(ActionMailbox::InboundEmail) }
  def second!; end

  sig { returns(T.nilable(ActionMailbox::InboundEmail)) }
  def third; end

  sig { returns(ActionMailbox::InboundEmail) }
  def third!; end

  sig { returns(T.nilable(ActionMailbox::InboundEmail)) }
  def third_to_last; end

  sig { returns(ActionMailbox::InboundEmail) }
  def third_to_last!; end

  sig { returns(T.nilable(ActionMailbox::InboundEmail)) }
  def second_to_last; end

  sig { returns(ActionMailbox::InboundEmail) }
  def second_to_last!; end

  sig { returns(T.nilable(ActionMailbox::InboundEmail)) }
  def last; end

  sig { returns(ActionMailbox::InboundEmail) }
  def last!; end

  sig { params(conditions: T.untyped).returns(T::Boolean) }
  def exists?(conditions = nil); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def any?(*args); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def many?(*args); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def none?(*args); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def one?(*args); end

  sig { override.params(block: T.proc.params(e: ActionMailbox::InboundEmail).void).returns(T::Array[ActionMailbox::InboundEmail]) }
  def each(&block); end

  sig { params(level: T.nilable(Integer)).returns(T::Array[ActionMailbox::InboundEmail]) }
  def flatten(level); end

  sig { returns(T::Array[ActionMailbox::InboundEmail]) }
  def to_a; end

  sig do
    type_parameters(:U).params(
        blk: T.proc.params(arg0: Elem).returns(T.type_parameter(:U)),
    )
    .returns(T::Array[T.type_parameter(:U)])
  end
  def map(&blk); end
end

class ActionMailbox::InboundEmail::ActiveRecord_Associations_CollectionProxy < ActiveRecord::Associations::CollectionProxy
  include ActionMailbox::InboundEmail::CustomFinderMethods
  include Enumerable
  extend T::Sig
  extend T::Generic
  Elem = type_member(fixed: ActionMailbox::InboundEmail)

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_AssociationRelation) }
  def bounced(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_AssociationRelation) }
  def delivered(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_AssociationRelation) }
  def failed(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_AssociationRelation) }
  def not_bounced(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_AssociationRelation) }
  def not_delivered(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_AssociationRelation) }
  def not_failed(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_AssociationRelation) }
  def not_pending(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_AssociationRelation) }
  def not_processing(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_AssociationRelation) }
  def pending(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_AssociationRelation) }
  def processing(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_AssociationRelation) }
  def with_attached_raw_email(*args); end

  sig { returns(ActionMailbox::InboundEmail::ActiveRecord_AssociationRelation) }
  def all; end

  sig { params(block: T.nilable(T.proc.void)).returns(ActionMailbox::InboundEmail::ActiveRecord_AssociationRelation) }
  def unscoped(&block); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_AssociationRelation) }
  def select(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_AssociationRelation) }
  def reselect(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_AssociationRelation) }
  def order(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_AssociationRelation) }
  def reorder(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_AssociationRelation) }
  def group(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_AssociationRelation) }
  def limit(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_AssociationRelation) }
  def offset(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_AssociationRelation) }
  def joins(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_AssociationRelation) }
  def left_joins(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_AssociationRelation) }
  def left_outer_joins(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_AssociationRelation) }
  def where(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_AssociationRelation) }
  def rewhere(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_AssociationRelation) }
  def preload(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_AssociationRelation) }
  def extract_associated(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_AssociationRelation) }
  def eager_load(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_AssociationRelation) }
  def includes(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_AssociationRelation) }
  def from(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_AssociationRelation) }
  def lock(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_AssociationRelation) }
  def readonly(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_AssociationRelation) }
  def or(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_AssociationRelation) }
  def having(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_AssociationRelation) }
  def create_with(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_AssociationRelation) }
  def distinct(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_AssociationRelation) }
  def references(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_AssociationRelation) }
  def none(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_AssociationRelation) }
  def unscope(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_AssociationRelation) }
  def optimizer_hints(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_AssociationRelation) }
  def merge(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_AssociationRelation) }
  def except(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail::ActiveRecord_AssociationRelation) }
  def only(*args); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(ActionMailbox::InboundEmail::ActiveRecord_AssociationRelation) }
  def extending(*args, &block); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail) }
  def find(*args); end

  sig { params(args: T.untyped).returns(T.nilable(ActionMailbox::InboundEmail)) }
  def find_by(*args); end

  sig { params(args: T.untyped).returns(ActionMailbox::InboundEmail) }
  def find_by!(*args); end

  sig { params(attributes: T.untyped, block: T.nilable(T.proc.params(object: ActionMailbox::InboundEmail).void)).returns(ActionMailbox::InboundEmail) }
  def find_or_initialize_by(attributes, &block); end

  sig { params(attributes: T.untyped, block: T.nilable(T.proc.params(object: ActionMailbox::InboundEmail).void)).returns(ActionMailbox::InboundEmail) }
  def find_or_create_by(attributes, &block); end

  sig { params(attributes: T.untyped, block: T.nilable(T.proc.params(object: ActionMailbox::InboundEmail).void)).returns(ActionMailbox::InboundEmail) }
  def find_or_create_by!(attributes, &block); end

  sig { returns(T.nilable(ActionMailbox::InboundEmail)) }
  def first; end

  sig { returns(ActionMailbox::InboundEmail) }
  def first!; end

  sig { returns(T.nilable(ActionMailbox::InboundEmail)) }
  def second; end

  sig { returns(ActionMailbox::InboundEmail) }
  def second!; end

  sig { returns(T.nilable(ActionMailbox::InboundEmail)) }
  def third; end

  sig { returns(ActionMailbox::InboundEmail) }
  def third!; end

  sig { returns(T.nilable(ActionMailbox::InboundEmail)) }
  def third_to_last; end

  sig { returns(ActionMailbox::InboundEmail) }
  def third_to_last!; end

  sig { returns(T.nilable(ActionMailbox::InboundEmail)) }
  def second_to_last; end

  sig { returns(ActionMailbox::InboundEmail) }
  def second_to_last!; end

  sig { returns(T.nilable(ActionMailbox::InboundEmail)) }
  def last; end

  sig { returns(ActionMailbox::InboundEmail) }
  def last!; end

  sig { params(conditions: T.untyped).returns(T::Boolean) }
  def exists?(conditions = nil); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def any?(*args); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def many?(*args); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def none?(*args); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def one?(*args); end

  sig { override.params(block: T.proc.params(e: ActionMailbox::InboundEmail).void).returns(T::Array[ActionMailbox::InboundEmail]) }
  def each(&block); end

  sig { params(level: T.nilable(Integer)).returns(T::Array[ActionMailbox::InboundEmail]) }
  def flatten(level); end

  sig { returns(T::Array[ActionMailbox::InboundEmail]) }
  def to_a; end

  sig do
    type_parameters(:U).params(
        blk: T.proc.params(arg0: Elem).returns(T.type_parameter(:U)),
    )
    .returns(T::Array[T.type_parameter(:U)])
  end
  def map(&blk); end

  sig { params(records: T.any(ActionMailbox::InboundEmail, T::Array[ActionMailbox::InboundEmail])).returns(T.self_type) }
  def <<(*records); end

  sig { params(records: T.any(ActionMailbox::InboundEmail, T::Array[ActionMailbox::InboundEmail])).returns(T.self_type) }
  def append(*records); end

  sig { params(records: T.any(ActionMailbox::InboundEmail, T::Array[ActionMailbox::InboundEmail])).returns(T.self_type) }
  def push(*records); end

  sig { params(records: T.any(ActionMailbox::InboundEmail, T::Array[ActionMailbox::InboundEmail])).returns(T.self_type) }
  def concat(*records); end
end

module ActionMailbox::InboundEmail::GeneratedAssociationMethods
  extend T::Sig

  sig { returns(T.nilable(::ActiveStorage::Attachment)) }
  def raw_email_attachment; end

  sig { params(value: T.nilable(::ActiveStorage::Attachment)).void }
  def raw_email_attachment=(value); end

  sig { returns(T.nilable(::ActiveStorage::Blob)) }
  def raw_email_blob; end

  sig { params(value: T.nilable(::ActiveStorage::Blob)).void }
  def raw_email_blob=(value); end

  sig { returns(T.nilable(ActiveStorage::Attached::One)) }
  def raw_email; end

  sig { params(attachable: T.untyped).returns(T.untyped) }
  def raw_email=(attachable); end
end
