class Recipient < ApplicationRecord
  belongs_to :user
  validates :email, uniqueness: { scope: :user_id }
end
