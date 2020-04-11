class CreateExpenseStatements < ActiveRecord::Migration[5.2]
  def change
    create_table :expense_statements do |t|
      t.references :user, foreign_key: true
      t.boolean :applied, default:false
      t.boolean :approved

      t.timestamps
    end
  end
end
