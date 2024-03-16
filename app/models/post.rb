class Post < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  
  with_options presence: true do
    validates :address
    validates :comment
  end

  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  validate :address_must_be_geocodable

  private

  def address_must_be_geocodable
    geocode
    if address.present? && !geocoded?
      errors.add(:address, "could not be geocoded")
    end
  end
end
