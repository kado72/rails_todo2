class CreateTodos < ActiveRecord::Migration[5.2]
  def change
    create_table :todos do |t|
      t.string :content
      t.integer :post_id

      t.timestamps
    end
  end
end
