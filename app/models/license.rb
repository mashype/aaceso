class License < ActiveRecord::Base

	has_many :licexpirations
	has_many :providers, through: :licexpirations

end
