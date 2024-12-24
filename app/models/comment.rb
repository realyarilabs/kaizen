# frozen_string_literal: true

# Comment model
class Comment < ApplicationRecord
  belongs_to :suggestion
  belongs_to :user
end
