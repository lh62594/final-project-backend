class CreateSubportfolios < ActiveRecord::Migration[5.2]
  def change
    create_table :subportfolios do |t|
      t.string :name
      t.integer :portfolio_id

      t.timestamps
    end
  end
end
