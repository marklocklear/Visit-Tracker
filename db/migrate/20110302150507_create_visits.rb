class CreateVisits < ActiveRecord::Migration
  def self.up
    create_table :visits do |t|
      t.datetime :visit_date
      t.integer :patient_id
      t.integer :therapist_id
      t.string :visit_notes

      t.timestamps
    end
  end

  def self.down
    drop_table :visits
  end
end
