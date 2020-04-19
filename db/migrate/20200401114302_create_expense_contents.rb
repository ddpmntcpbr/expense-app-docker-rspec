class CreateExpenseContents < ActiveRecord::Migration[5.2]
  def change
    create_table :expense_contents do |t|
      t.references :expense_statement, foreign_key: true
      t.date :account_date
      t.string :facility
      t.string :section_from
      t.string :section_to
      t.boolean :round_trip, default:false
      t.integer :amount

      t.timestamps
    end
  end
end
