class AddSiteIdToVisits < ActiveRecord::Migration
  def self.up
    add_column :visits, :site_id, :integer
  end

  def self.down
    remove_column :visits, :site_id
  end
end
