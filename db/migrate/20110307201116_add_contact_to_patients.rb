class AddContactToPatients < ActiveRecord::Migration
  def self.up
    add_column :patients, :contact, :string
  end

  def self.down
    remove_column :patients, :contact
  end
end
