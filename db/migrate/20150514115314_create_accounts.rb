class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :expense
      t.float :money

      t.timestamps null: false
    end
  end
end
