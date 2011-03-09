class CreatePatients < ActiveRecord::Migration
  def self.up
    create_table :patients do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :state
      t.integer :zip
      t.string :phone
      t.integer :number_of_visits

      t.timestamps
    end
  end

  def self.down
    drop_table :patients
  end
end
