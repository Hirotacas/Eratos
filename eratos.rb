class Eratos
  def self.prime(num)
    search_list = (2..num).to_a
    prime_list  = Array.new
    delete_list = Array.new
    loop {
      prime = search_list.shift
      break if prime.nil?
      prime_list.push prime
      search_list.map { |n| delete_list.push n if n % prime == 0 }
      search_list -= delete_list
    }
    prime_list.join(', ')
  end
end

Eratos.prime(ARGV[0].to_i)
