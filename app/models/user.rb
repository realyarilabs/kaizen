# frozen_string_literal: true

# User model
class User < ApplicationRecord
  has_many :suggestions, dependent: nil
  has_many :comments, dependent: nil
  has_many :votes, dependent: nil

  enum :role, { admin: 0, staff: 1 }
end
