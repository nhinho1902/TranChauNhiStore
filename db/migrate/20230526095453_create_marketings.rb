class CreateMarketings < ActiveRecord::Migration[7.0]
  def change
    create_table :marketings do |t|
      t.string :Content
      t.integer :Marcom_ID
      t.text :Content_Name
      t.text :Description
      t.string :Social_Networking_Platform
      t.text :Person_in_Charge
      t.text :Note

      t.timestamps
    end
  end
end
