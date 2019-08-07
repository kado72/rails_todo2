class AddStar < ActiveRecord::Migration[5.2]
  def change
    add_column :todos, :star, :boolean, default: false
  end
end
