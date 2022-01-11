class RecipientsList < ApplicationRecord
  belongs_to :user
  validates :name, uniqueness: { scope: :user_id }
end
