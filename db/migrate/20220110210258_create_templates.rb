class CreateTemplates < ActiveRecord::Migration[5.0]
  def change
    create_table :templates do |t|
      t.string :name
      t.text :description
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
