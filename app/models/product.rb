class Product < ApplicationRecord
	validates_presence_of :name_of_product, :date, :origin, :packaging_measure, :supplier, :quantity
	validates_uniqueness_of :name_of_product
	validates_numericality_of :quantity

	validate :year_up_to_present
	def year_up_to_present
		errors.add(:field_name, 'Year must not be in the future') if date >
		Time.now.year
	end
end