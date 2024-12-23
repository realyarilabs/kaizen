class Suggestion < ApplicationRecord
  belongs_to :user
    # length: { minimum: 1 , maximum: 100 } ?
  validates :title, presence: true
  validates :description, presence: true
  validates :solution, presence: true
end
