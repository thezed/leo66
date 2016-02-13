class Standpred < ActiveRecord::Base
    has_attached_file :image, :styles => { :biggest => ["750x750>", :jpg], :verybig => ["600x600>", :jpg], :big => ["350x350>", :jpg], :big300 => ["300x300>", :jpg], :medium => ["150x150>", :jpg], :small => ["100x70>", :jpg] },
                      :url  => "/images/standpred/:id/:style/:basename.:extension",
                      :path => ":rails_root/public/images/standpred/:id/:style/:basename.:extension"

    validates_attachment_presence :image                  
    validates_attachment_content_type :image, :content_type => ['image/jpeg', 'image/jpg', 'image/png', 'image/gif']
    validates_presence_of :artikul
end
