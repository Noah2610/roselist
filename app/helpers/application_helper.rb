module ApplicationHelper
	def full_title (base)
		base.blank? ? "Roselist" : "#{base} | Roselist"
	end
end
