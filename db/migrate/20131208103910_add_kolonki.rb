class AddKolonki < ActiveRecord::Migration

  def change

    add_column :messages, :user_id, :integer
    add_column :messages, :sender_id, :integer
    add_column :messages, :receiver_id, :integer
    add_column :messages, :content, :text
    add_column :messages, :title, :string

  end

end
