class CreateExpenseContents < ActiveRecord::Migration[5.2]
  def change
    create_table :expense_contents do |t|
      t.references :expense_statement, foreign_key: true
      t.datetime :account_date
      t.string :purpose
      t.string :facility
      t.string :section
      t.boolean :round_trip, default:false
      t.integer :amount

      t.timestamps
    end
  end
end
