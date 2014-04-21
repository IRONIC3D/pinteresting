class Pin < ActiveRecord::Base
  belongs_to :user

  has_attached_file :image, :styles => { :high => "480x480>", :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/missing.jpg"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
