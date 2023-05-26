class SponsorLevel < ApplicationRecord
	has_many :Sponsors
	validates_presence_of :Level_Name, :Value, :Description
	validates :Value, numericality: { greater_than: 0 }
end
