class AddConstraints < ActiveRecord::Migration[5.0]
  def change
    add_index :recipients_recipients_lists, [:recipient_id, :recipients_list_id], name: 'recipients_recipients_lists index'
  end
end
