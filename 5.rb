class Morseable
  def initialize(number)
    @number = number
  end

  def generate_hash(number)
    hash = { "0" => '-----', "1" => '.----', "2" =>'..---', "3" => '...--', "4" => '....-', "5" => '.....', "6" => '-....', "7" => '--...', "8" =>'---..', "9" => '----.'}
    h = hash[number.to_s]
  end

  def to_morse
    self.generate_hash(@number)
  end
end
m = Morseable.new(9)
puts m.to_morse
