class Bookmark < ApplicationRecord
  belongs_to :list
  belongs_to :movie

  validates :movie_id, :list_id, presence: :true
  validates :movie_id, uniqueness: { scope: :list_id }
  validates :comment, length: { minimum: 6,
  too_short: "${count} characters is the maximum allowed"}
end
