require "open-uri"

class Stand < ApplicationRecord
  belongs_to :category
  
  has_attached_file :image, :styles => { :biggest => ["750x750>", :jpg], :big => ["350x350>", :jpg], :medium => ["150x150>", :jpg] },
                    :url  => "/images/stand/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/images/stand/:id/:style/:basename.:extension"

  validates_attachment_presence :image
  validates_attachment_content_type :image, :content_type => ['image/jpeg', 'image/jpg', 'image/png', 'image/gif']
  validates_presence_of :artikul

  attr_reader :image_remote_url
  def image_remote_url=(url_value)
    self.image = URI.parse(url_value)
    url_value
  end
end
