class Player

  attr_reader :name

  def initialize(name = "default_name")
    @name = name
  end

  def say_name
    @name
  end

end