class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.text :name_of_product
      t.datetime :date
      t.text :origin
      t.text :packaging_measure
      t.text :supplier
      t.integer :quantity

      t.timestamps
    end
  end
end
