class CreateRecipients < ActiveRecord::Migration[5.0]
  def change
    create_table :recipients do |t|
      t.string :name
      t.string :email
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
