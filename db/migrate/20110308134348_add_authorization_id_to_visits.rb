class AddAuthorizationIdToVisits < ActiveRecord::Migration
  def self.up
    add_column :visits, :authorization_id, :integer
  end

  def self.down
    remove_column :visits, :authorization_id
  end
end
