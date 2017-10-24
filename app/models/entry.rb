class Entry < ApplicationRecord
	belongs_to :list
	validates :name, presence: true
	after_create :custom_validation

	# name description quantity metric

	private

		def custom_validation
			self.quantity = 1.0  if (self.quantity.blank?)
			self.save
		end

end
