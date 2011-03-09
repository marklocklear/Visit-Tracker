class Therapist < ActiveRecord::Base
	has_many :visits
	has_many :patients, :through => :visits
	has_many :authorization_periods, :through => :visits

	def first_and_last_name
    "#{first_name} #{last_name}"
  end
end
