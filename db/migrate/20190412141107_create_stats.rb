class CreateStats < ActiveRecord::Migration[5.2]
  def change
    create_table :stats do |t|
      t.integer :subportfolio_id
      t.date :date
      t.decimal :price
      t.integer :quantity
      t.decimal :value
      t.timestamps
    end
  end
end
