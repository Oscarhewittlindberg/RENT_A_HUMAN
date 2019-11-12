class Actor < ApplicationRecord
  belongs_to :owner, class_name: 'User'
  has_many :bookings

  mount_uploader :image, PhotoUploader
end
