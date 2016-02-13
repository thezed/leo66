class Price < ActiveRecord::Base
  has_attached_file :pricefile,
                    :url  => "/files/prices/:id/:basename.:extension",
                    :path => ":rails_root/public/files/prices/:id/:basename.:extension"

  validates_attachment_presence :pricefile
  validates_presence_of :name, :order
end
