# frozen_string_literal: true

# User model
class Comment < ApplicationRecord
  belongs_to :suggestion
  belongs_to :user
end
