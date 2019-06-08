propiedades = {nombre: 'Beethoven', raza: 'San Bernardo', color: 'Café'}

class Dog

attr_accessor :nombre, :raza, :color
  def initialize(propiedades)
    @nombre = propiedades[:nombre]
    @raza = propiedades[:raza]
    @color = propiedades[:color]
  end

  def ladrar
    puts "#{@nombre} está ladrando!"
  end
end

d1 = Dog.new(propiedades)
d1.ladrar
