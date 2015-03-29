class Listing < ActiveRecord::Base
  belongs_to :category
  belongs_to :location
  belongs_to :user
  has_many :listing_pictures

  validates :name,
            :description,
            :price,
            :contact_name,
            :email,
            :telephone, presence: true

  validates :price, numericality: { greater_than: 0 }
  validates :category, :location, :user, presence: true
end
