class Category < ApplicationRecord
  acts_as_nested_set
  include ::TheSortableTree::Scopes
  
  validates_presence_of :name
  validates_presence_of :permalink
  validates_uniqueness_of :permalink
  
  has_many :stands, dependent: :destroy
  
  def to_param
    permalink
  end
end
