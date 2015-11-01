class Provider < ActiveRecord::Base
	searchkick

	belongs_to :user
	
	belongs_to :specialty

	has_many :patients
	accepts_nested_attributes_for :patients, reject_if: :all_blank, allow_destroy: true

	has_many :locations
	accepts_nested_attributes_for :locations, reject_if: :all_blank, allow_destroy: true

	has_many :licexpirations
	has_many :licenses, through: :licexpirations
	accepts_nested_attributes_for :licexpirations, reject_if: :all_blank, allow_destroy: true
	accepts_nested_attributes_for :licenses, reject_if: :all_blank, allow_destroy: true

	validates :name, :specialty, :image, presence: true
	has_attached_file :image, styles: { :medium => "400x400#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
