class Product
  attr_accessor :name, :talla
  def initialize(name, *talla)
    @name = name
    @talla = talla.map(&:to_i)
  end

  def promedio()
    @talla.inject(&:+) / @talla.size
  end
end

products_list = []
data = []
File.open('catalogo.txt', 'r') { |file| data = file.readlines}
data.each do |prod|
  ls = prod.split(', ')
  products_list << Product.new(*ls)
  end

puts products_list

products_list.each do |prod|
    puts prod.name
    puts prod.promedio
end
