class ProductPresenter < SimpleDelegator
	attr_reader :product

	def initialize(product)
		@product = product
		__setobj__(product)
	end

	def eql?(target)
		target == self || product.eql?(target)
	end

	def name		
			helpers.content_tag(:h1, product.name)
	end

	def description
		if product.description.present?
			helpers.content_tag(:p, product.description, class: "description")
		end
	end

	private

	def helpers
		ApplicationController.helpers
	end

end