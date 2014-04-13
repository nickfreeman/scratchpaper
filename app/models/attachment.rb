class Attachment < ActiveRecord::Base

	has_attached_file :attach, :styles => { :large => "900x900>", :medium => "300x300#", :thumb => "100x100#" } , :default_url => "/images/:style/missing.png"
    validates_attachment_content_type :attach, :content_type => /\Aimage\/.*\Z/
    validates_attachment :attach, :size => { :in => 0..5.megabytes }

	belongs_to :idea
end
