class CreateRecipientsLists < ActiveRecord::Migration[5.0]
  def change
    create_table :recipients_lists do |t|
      t.string :name
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
