class Patient < ActiveRecord::Base

	belongs_to :user

	has_many :patientrelations
	has_many :providers, through: :patientrelations
	has_many :appointments

end