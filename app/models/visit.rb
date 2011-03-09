class Visit < ActiveRecord::Base
	belongs_to :patient
	belongs_to :therapist
	belongs_to :authorization_period
end
