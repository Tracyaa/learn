require 'pry'

class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand
  BRANDS = []

  def initialize(brand)
      @brand = brand
      # BRANDS << brand unless BRANDS.include?(brand)
      if !(BRANDS.include?(brand))
        BRANDS << brand
      end

    # if BRANDS.include?()
    # binding.pry
    # @brand = BRANDS.uniq_by {|brand| brand.id}
  end


  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end
  #
  # def brand=(more_brands)
  #   @brand = more_brands
  #   BRANDS << more_brands
  # end
end

puts 0
