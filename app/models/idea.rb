class Idea < ActiveRecord::Base
    acts_as_followable
    acts_as_votable

    belongs_to :user

    has_attached_file :photo, :styles => { :large => "900x900>", :medium => "300x300>", :thumb => "100x100>" } , :default_url => "/images/:style/missing.png"
    validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/
    validates_attachment :photo, :size => { :in => 0..200.kilobytes }
end
