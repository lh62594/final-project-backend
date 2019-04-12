class AddMoreColumnsToSubportfolios < ActiveRecord::Migration[5.2]
  def change
    add_column :subportfolios, :quantity, :integer
    add_column :subportfolios, :end_px, :decimal
    add_column :subportfolios, :initial_value, :decimal
    add_column :subportfolios, :end_value, :decimal

    change_column :subportfolios, :initial_px, :decimal

    remove_column :subportfolios, :name
  end
end
