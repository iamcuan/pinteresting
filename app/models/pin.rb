class Pin < ActiveRecord::Base
	belongs_to :user

	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/system/pins/images/000/000/005/medium/missing.jpg"
	validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]

	validates :image, presence: true
  validates :description, presence: true
end
