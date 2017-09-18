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
  
  before_save :save_absolute_permalink
  def save_absolute_permalink
    if self.self_and_ancestors.blank?
      self.absolute_permalink = self.permalink
    else
      self.absolute_permalink = self.self_and_ancestors.map(&:permalink).join('/')
    end
  end
  
  after_move :rebuild_permalink
  def rebuild_permalink
    self.save
  end
end
