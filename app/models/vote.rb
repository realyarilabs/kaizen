# frozen_string_literal: true

# User model
class Vote < ApplicationRecord
  belongs_to :user
  belongs_to :suggestion
end
