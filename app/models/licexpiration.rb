class Licexpiration < ActiveRecord::Base

	belongs_to :provider
	belongs_to :license

	accepts_nested_attributes_for :license
	
end
