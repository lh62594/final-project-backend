class EditColumnsInUserAndPortfolioTables < ActiveRecord::Migration[5.2]
  def change
    add_column :portfolios, :account_balance, :decimal

    remove_column :users, :account_balance
    
  end
end
