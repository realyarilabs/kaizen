# frozen_string_literal: true

# User model
class User < ApplicationRecord
  has_many :suggestions, dependent: nil

  enum :role, { admin: 0, staff: 1 }
end
