class Patient < ActiveRecord::Base
	has_many :visits
	has_many :therapists, :through => :visits
	has_many :authorization_periods, :through => :visits

def before_destroy
    if !self.visits.empty?
      errors.add "This therapist is assigned to a visit" 
      false
    end
  end


	def first_and_last_name
    "#{first_name} #{last_name}"
  end
end
