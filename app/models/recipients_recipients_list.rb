class RecipientsRecipientsList < ApplicationRecord
  belongs_to :recipient
  belongs_to :recipients_list
  validates :recipient_id, uniqueness: { scope: :recipients_list_id }
end
