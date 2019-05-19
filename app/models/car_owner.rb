class CarOwner

  attr_reader :name,:car,:mechanic

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def cars_owner_has
    Car.all.select do |car|
  # - Get a list of all the cars that a specific owner has
    car.car_owner == self
    end
  end

  def cars_owned
    self.cars_owner_has
  end

  def personal_list
    cars_owner_has.map do |car|
    # - Get a list of all the mechanics that a specific
     # owner goes to
     car.mechanic
    end
  end

  def avg_amount_owned
  # - Get the average amount of cars owned for all owners
  end


end
