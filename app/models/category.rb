# frozen_string_literal: true

# User model
class Category < ApplicationRecord
  has_and_belongs_to_many :suggestions, dependent: :restrict_with_error
end
