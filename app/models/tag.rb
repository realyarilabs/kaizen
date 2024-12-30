# frozen_string_literal: true

# Tag model
class Tag < ApplicationRecord
  has_and_belongs_to_many :suggestions, dependent: :restrict_with_error
end
