class Patient < ActiveRecord::Base

	has_many :patientrelations
	has_many :providers, through: :patientrelations

	has_many :appointments
end
