class Product
  attr_accessor :name, :talla
  def initialize(name, *talla, xsmal)
    @name = name
    @talla = talla.map(&:to_i)
  end

  def promedio()
    @talla.inject(&:+) / @talla.size
  end

  def new_catalogo()
    "#{@name}, #{@talla.join(', ')}"
  end
end

products_list = []
data = []
File.open('catalogo.txt', 'r') { |file| data = file.readlines}
data.each do |prod|
  ls = prod.split(', ')
  products_list << Product.new(*ls)
  end


File.open('nuevo_catalogo.txt', 'w')
  products_list.each do |e|
    open('nuevo_catalogo.txt', 'a') { |i| i.puts e.new_catalogo}
  end
