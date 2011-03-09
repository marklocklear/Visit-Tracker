class CreateAuthorizationPeriods < ActiveRecord::Migration
  def self.up
    create_table :authorization_periods do |t|
      t.datetime :from_date
      t.datetime :to_date

      t.timestamps
    end
  end

  def self.down
    drop_table :authorization_periods
  end
end
