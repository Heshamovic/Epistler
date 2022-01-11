class RecipientsRecipientsList < ActiveRecord::Migration[5.0]
  def change
    create_table :recipients_recipients_lists, :id => false do |t|
      t.references :recipients, foreign_key: true
      t.references :recipients_lists, foreign_key: true
      t.integer :listing_type, null: false, default: 1
    end
  end
end
