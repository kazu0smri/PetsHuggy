class Listing < ActiveRecord::Base
  belongs_to :user
  has_many :photos
  has_many :reservations
  has_many :reviews

#必須項目
  validates :home_type, presence: true
  validates :pet_type, presence: true
  validates :pet_size, presence: true
  validates :breeding_years, presence: true

  geocoded_by :address
  after_validation :geocode, :if => :address_changed?
end
