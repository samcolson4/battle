class Player

  HP = 100
  ATTACK_VALUE = 10

  attr_reader :name, :hp

  def initialize(name = "default_name", hp = HP)
    @name = name
    @hp = hp
  end

  def say_name
    @name
  end

  def be_attacked
    @hp -= ATTACK_VALUE
  end

end