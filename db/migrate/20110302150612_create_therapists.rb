class CreateTherapists < ActiveRecord::Migration
  def self.up
    create_table :therapists do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :state
      t.integer :zip
      t.string :phone

      t.timestamps
    end
  end

  def self.down
    drop_table :therapists
  end
end
