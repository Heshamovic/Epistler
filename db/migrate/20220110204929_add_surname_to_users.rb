class AddSurnameToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :surname, :string
  end
end
