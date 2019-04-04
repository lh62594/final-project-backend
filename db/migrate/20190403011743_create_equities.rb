class CreateEquities < ActiveRecord::Migration[5.2]
  def change
    create_table :equities do |t|
      t.string :symbol
      t.string :company_name
      t.string :exchange
      t.string :industry
      t.string :website
      t.string :description
      t.string :ceo
      t.string :sector
      t.string :tags

      t.timestamps
    end
  end
end
