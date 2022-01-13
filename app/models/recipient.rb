class Recipient < ApplicationRecord
  belongs_to :user
  validates :email, uniqueness: { scope: :user_id, case_sensitive: false }
  has_many :recipients_lists, through: :recipients_recipients_lists
end
