class Post < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  validates :address, presence: true
  validates :text, presence: true, unless: :was_attached?

  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  def full_address
    [prefecture, address].compact.join('')
  end

  def was_attached?
    self.image.attached?
  end
end
