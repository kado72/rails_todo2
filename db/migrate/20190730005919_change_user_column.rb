class ChangeUserColumn < ActiveRecord::Migration[5.2]
  def change
    add_column :users,:secure_password, :string
  
    remove_column :users, :password, :string
    add_column :todos, :user_id, :integer
  end
end
