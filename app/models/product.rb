class Product < ActiveRecord::Base
  attr_accessible :description, :name, :price_in_cents, :price_in_dollars

  validates :description, :name, :presence => true
  validates :price_in_cents, :numericality => {:only_integer => true}

  def price_in_dollars
    self.price_in_cents.to_f / 100
  end

  #product.price_in_dollars = 500.50
  def price_in_dollars=(amount)
    #amount #=> 6.42
    self.price_in_cents = (amount * 100).to_i
  end

end
