class AddUserIdToArticals < ActiveRecord::Migration[6.1]
  def change
    add_column :articals, :user_id, :integer
  end
end
