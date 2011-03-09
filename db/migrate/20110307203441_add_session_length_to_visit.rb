class AddSessionLengthToVisit < ActiveRecord::Migration
  def self.up
    add_column :visits, :session_length, :string
  end

  def self.down
    remove_column :visits, :session_length
  end
end
