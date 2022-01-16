class ChangeListingDefault < ActiveRecord::Migration[5.0]
  def change
    change_column_default :recipients_recipients_lists, :listing_type, 0
  end
end
