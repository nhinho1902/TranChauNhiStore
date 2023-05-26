class CreateSponsors < ActiveRecord::Migration[7.0]
  def change
    create_table :sponsors do |t|
      t.integer :Sponsor_ID
      t.text :Sponsor_Name
      t.integer :Contact_Number
      t.text :Email
      t.text :Address
      t.text :Sponsor_Type
      t.text :Sponsorship_Level
      t.string :Website_Link
      t.text :Person_in_Charge
      t.text :Note

      t.timestamps
    end
  end
end
