class ProductPresenter < Burgundy::Item
# class ProductPresenter < SimpleDelegator
	# attr_reader :product

	# def initialize(product)
	# 	@product = product
	# 	__setobj__(product)
	# end

	# def eql?(target)
	# 	target == self || product.eql?(target)
	# end

	# obs: item = product(no gem)

	def name		
		h.content_tag(:h1, item.name)
	end

	def description
		if item.description.present?
			h.content_tag(:p, item.description, class: "description")
		end
	end

	def paid_partial
		item.paid ? "shared/order" : "shared/download"	
	end

	# private

	# def helpers
	# 	ApplicationController.helpers
	# end

end