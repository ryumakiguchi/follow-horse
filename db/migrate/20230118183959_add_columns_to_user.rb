class AddColumnsToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :phone, :integer
    add_column :users, :age, :integer
    add_column :users, :description, :string
    add_column :users, :establishment, :string
  end
end
