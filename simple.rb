# frozen_string_literal: true

require_relative 'ruby'

class Simple
  def initialize(user)
    @user = user
    @tata = 'tata'
  end

  def full_name
    # on met tout dans la variable d'instance
    # le puts est déclenché une seule fois car la methode full_name a stocké la valeur dans la variable d'instance et
    # ||= est l'equivalent de @toto = @toto || 'valeur'

    @full_name ||= begin
      puts 'calculated'
      "#{@user.first_name} #{@user.last_name}"
    end
  end
end

puts user = User.first
puts simple = Simple.new(user)
puts simple.full_name
puts simple.full_name
puts simple.full_name
