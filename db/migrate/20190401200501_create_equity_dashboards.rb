class CreateEquityDashboards < ActiveRecord::Migration[5.2]
  def change
    create_table :equity_dashboards do |t|
      t.integer :dashboard_id
      t.integer :equity_id
      t.string :category #category will be user input --> like if it will be part of their FANG, etc.

      t.timestamps
    end
  end
end
