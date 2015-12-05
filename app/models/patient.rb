class Patient < ActiveRecord::Base

	belongs_to :user

	has_many :patientrelations
	has_many :providers, through: :patientrelations
	has_many :appointments

	has_attached_file :image, styles: { medium: "400x400#", small: "200x200#", thumb: "100x100" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

end