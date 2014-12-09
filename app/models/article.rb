class Article < ActiveRecord::Base
  	has_attached_file :image, 

  	:path => ":rails_root/public/system/:attachment/:id/:basename_:style.:extension",
	:url => "/system/:attachment/:id/:basename_:style.:extension",

  	:styles => { :medium => "300x300>", :thumb => "100x100>" }

  	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

	validates :title, presence: true,
	length: { minimum: 5 }

    validates :content, presence: true,
	length: { minimum: 10 }

    validates :status, presence: true


end
