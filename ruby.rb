# frozen_string_literal: true

require 'json'

class User
  USERS = [
    { id: 1, first_name: 'cam', last_name: 'anelli', email: 'example@ex.com'},
    { id: 2, first_name: 'James', last_name: 'Do', email: 'ixample@ex.com'}
  ]

  class << self
    def find(int)
      new.find(int)
    end

    def first
      new.first
    end

    def all
      new.all
    end
  end

  def find(int)
    return unless int

    user = USERS.find { |user| user[:id] == int }
    objectify(user)
  end

  def first
    return unless USERS.size.positive?

    objectify(USERS.first)
  end

  def all
    USERS.map { |user| objectify(user) }
  end

  private

  def objectify(obj)
    # cette methode est utile pour obtenir des objets et les manipuler en tant qu'objet
    # on peut aussi passer l'object souhaité en reponse
    JSON.parse(obj.to_json, object_class: OpenStruct)
  end
end

puts User.find(1)
puts User.first

puts User.all
puts user = User.first
puts user.first_name
