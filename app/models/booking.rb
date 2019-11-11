class Booking < ApplicationRecord
  belongs_to :actor
  belongs_to :renter, class_name: 'User'
end
