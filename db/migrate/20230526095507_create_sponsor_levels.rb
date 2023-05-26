class CreateSponsorLevels < ActiveRecord::Migration[7.0]
  def change
    create_table :sponsor_levels do |t|
      t.integer :Level_ID
      t.text :Level_Name
      t.integer :Value
      t.text :Description

      t.timestamps
    end
  end
end
