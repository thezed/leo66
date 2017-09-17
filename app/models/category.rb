class Category < ApplicationRecord
  acts_as_nested_set
  include ::TheSortableTree::Scopes
  
  validates_presence_of :name
  validates_presence_of :permalink
  validates_uniqueness_of :permalink
  
  has_many :stands, dependent: :destroy
  
  def to_param
    absolute_permalink
  end
  
  before_save :update_absolute_permalink
  def update_absolute_permalink
    self.absolute_permalink = self.self_and_ancestors.map(&:permalink).join('/')
  end
end
