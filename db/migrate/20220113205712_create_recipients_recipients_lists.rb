class CreateRecipientsRecipientsLists < ActiveRecord::Migration[5.0]
  def change
    create_table :recipients_recipients_lists do |t|
      t.integer :listing_type
      t.belongs_to :recipient, foreign_key: true
      t.belongs_to :recipients_list, foreign_key: true

      t.timestamps
    end
  end
end
