class AddColumnsToSubportfolios < ActiveRecord::Migration[5.2]
  def change
    add_column :subportfolios, :equity_id, :integer
    add_column :subportfolios, :category, :string
    add_column :subportfolios, :initial_px, :integer
    add_column :subportfolios, :date_bought, :date
    add_column :subportfolios, :date_sold, :date
  end
end
