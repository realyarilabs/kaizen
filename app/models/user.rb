class User < ApplicationRecord
  has_many :suggestions

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :role, presence: true, inclusion: { in: %w[staff admin] }
  validates :active, presence: true, inclusion: { in: [true, false] }

  before_save :downcase_email

  def change_user_status
    update(active: !active)
  end

  private

  def downcase_email
    self.email = email.downcase
  end
end
