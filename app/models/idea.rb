class Idea < ActiveRecord::Base
    acts_as_followable
    acts_as_votable

    has_attached_file :photo, :styles => { :large => "900x900>", :medium => "300x300>", :thumb => "100x100>" } #, :default_url => "/images/:style/missing.png"
    validates_attachment :photo, #:presence => true,
      :content_type => { :content_type => ["image/jpg", "image/gif", "image/png"] },
      :size => { :in => 0..200.kilobytes }
end
