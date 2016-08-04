require 'Prime'

class Eratos
  def self.prime(n)
   p Prime.each(n.to_i).to_a.join(', ')
  end
end

Eratos.prime(ARGV[0].to_i)
