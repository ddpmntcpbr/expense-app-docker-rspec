class AddColumnsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :last_name, :string
    add_column :users, :first_name, :string
    add_column :users, :approver, :boolean, default:false
    add_column :users, :admin, :boolean, default:false
  end
end
