class AddAccountColumnToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :account_balance, :decimal
  end
end
