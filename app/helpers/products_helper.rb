module ProductsHelper

  def product_price(product)
    number_to_currency @product.price_in_dollars
  end

end
