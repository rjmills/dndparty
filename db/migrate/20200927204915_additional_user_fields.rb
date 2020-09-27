class AdditionalUserFields < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :username, :string, null: false
    add_column :users, :admin, :boolean, default: false

    add_index :users, :username, unique: true
  end
end
