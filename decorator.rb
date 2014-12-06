class Archer
  attr_reader :atk, :defense

  def initialize(atk, defense)
    @atk = atk
    @defense = defense
  end

  def shoot
    atk * 0.15
  end

  def walk
    "walking"
  end

  def stand
    "standing"
  end
end

class DrunkArcher
  def initialize(archer)
    @archer = archer
  end

  def shoot
    0
  end

  def walk
    @archer.walk + "...hic!"
  end

  def method_missing(method, *args)
    @archer.public_send(method, *args)
  end
end

archer = Archer.new(100, 20)
drunk_archer = DrunkArcher.new(archer)

puts drunk_archer.shoot
puts drunk_archer.walk
puts drunk_archer.stand
