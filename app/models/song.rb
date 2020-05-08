class Song < ApplicationRecord
  validates :title, presence: true
  validates :title, uniqueness: { scope: [:artist_name, :release_year] }
  validates :released, inclusion: { in: [true, false], message: "%{value} must be true or false" }
  validates :release_year, presence: true, numericality: { less_than: Date.current.year }, if: :released?
  validates :artist_name, presence: true

end
