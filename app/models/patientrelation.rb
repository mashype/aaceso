class Patientrelation < ActiveRecord::Base

	belongs_to :provider
	belongs_to :patient
	belongs_to :patientrelationtype

	accepts_nested_attributes_for :patient
end