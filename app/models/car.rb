class Car

  attr_reader :make, :model,:car_owner,:mechanic,:classification

  @@all = []

  def initialize(make, model,classification,car_owner,mechanic)
    @make = make
    @model = model
    @classification = classification
    @@all << self
    @car_owner = car_owner
    @mechanic = mechanic
  end

  def self.all
    @@all
    # - Get a list of all cars
  end

  def self.classifications
    @@all.map do |car|
    # - Get a list of all car classifications
    # binding.pry
    car.classification
    end
  end
  #
  # def features
  #     self.car_features
  # end


  def mechanics
    Mechanic.all.select do |mechanic|
# - Get a list of mechanics that have an expertise that matches the car classification
    mechanic.specialty == self.classification
    end
  end



end
