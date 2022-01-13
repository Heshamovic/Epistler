class RecipientsRecipientsList < ApplicationRecord
  belongs_to :recipient
  belongs_to :recipients_list
end

