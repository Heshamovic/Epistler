class RecipientsList < ApplicationRecord
  belongs_to :user
  validates :name, uniqueness: { scope: :user_id, case_sensitive: false }
  has_many :recipients_recipients_lists
  has_many :recipients, through: :recipients_recipients_lists, dependent: :destroy
end
