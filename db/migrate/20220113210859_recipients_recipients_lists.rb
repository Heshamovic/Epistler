class RecipientsRecipientsLists < ActiveRecord::Migration[5.0]
  def change
    change_column_default :recipients_recipients_lists, :listing_type, 1
    change_column_null :recipients_recipients_lists, :listing_type, false
  end
end
