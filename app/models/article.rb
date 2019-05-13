class Article < ApplicationRecord
  validates :title, presence: true,
                      length: { minimum: 3 }
  belongs_to :user
  delegate :filename, to: :file, allow_nil: true
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  acts_as_votable
end
