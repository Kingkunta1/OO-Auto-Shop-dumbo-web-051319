class Mechanic

  attr_reader :name, :specialty,:car,:car_owner,:classification,:title

  @@all = []

  def initialize(name, specialty)
  @name = name
  @specialty = specialty
  @@all << self
  end

  def self.all
    @@all
  end

  def serviced_cars
    Car.all.select do |car|
    # - Get a list of all cars that a mechanic services
    car.mechanic == self
    end
  end


  def car_owners
    serviced_cars.map do |car|
    # - Get a list of all the car owners that go to a specific mechanic
    # binding.pry
    car.car_owner
    end
  end

  def car_owners_name
    car_owners.map do |car_owner|
    # - Get a list of the names of all car owners who
    # go to a specific mechanic
    # binding.pry
    car_owner.name
    end
  end


end
