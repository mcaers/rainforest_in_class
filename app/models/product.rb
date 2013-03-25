class Product < ActiveRecord::Base
  attr_accessible :description, :name, :price_in_cents, :price_in_dollars

  validates :description, :name, :presence => true
  validates :price_in_dollars, :numericality => true

  # Since we are validating price_in_dollars already, one approach is to not validate
  # price_in_cents and make sure price_in_dollars' getter/setter are well tested
  # validates :price_in_cents, :numericality => {:only_integer => true}

  def price_in_dollars
    if self.price_in_cents?
      self.price_in_cents.to_f / 100
    end
  end

  def price_in_dollars=(amount)
    if amount.present?
      self.price_in_cents = (amount.to_f * 100.00).to_i
    end
  end

end
