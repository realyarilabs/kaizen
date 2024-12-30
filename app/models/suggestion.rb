# frozen_string_literal: true

# Suggestion model
class Suggestion < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :delete_all
  has_many :votes, dependent: :delete_all
  has_and_belongs_to_many :categories
  has_and_belongs_to_many :tags
end
