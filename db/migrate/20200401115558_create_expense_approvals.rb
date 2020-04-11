class CreateExpenseApprovals < ActiveRecord::Migration[5.2]
  def change
    create_table :expense_approvals do |t|
      t.references :expense_statement, foreign_key: true
      t.references :user, foreign_key: true
      t.text :comment
      t.boolean :approved
      t.timestamps
    end
  end
end
