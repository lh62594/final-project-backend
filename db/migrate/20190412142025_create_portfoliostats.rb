class CreatePortfoliostats < ActiveRecord::Migration[5.2]
  def change
    create_table :portfoliostats do |t|
      t.integer :portfolio_id
      t.date :date
      t.decimal :value
      t.timestamps
    end
  end
end
