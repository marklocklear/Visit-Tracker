class AuthorizationPeriod < ActiveRecord::Base
	has_many :visits
	has_many :therapists, :through => :visits
	has_many :patients, :through => :visits

	def from_and_to_date
		"#{from_date.to_s[0..-13]}  to  #{to_date.to_s[0..-13]}"
	end
end
