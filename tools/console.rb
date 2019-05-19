require_relative '../config/environment.rb'


def reload
  load 'config/environment.rb'
end
   #begin car_owner instances

   kay_1 = CarOwner.new("Kay_1")
   kay_2 = CarOwner.new("Kay_2")
   kay_3 = CarOwner.new("Kay_3")
   kay_4 = CarOwner.new("Kay_4")

    #begin mechanic instances
    mike = Mechanic.new("Mike","luxury")
    james = Mechanic.new("James","antique")
    luke = Mechanic.new("Luke","super_light")
    roger = Mechanic.new("Roger","wheels")

    #begin car instances
car_1 = Car.new("make_1","model_1","antique",kay_1,james)
car_2 = Car.new("make_2","model_2","wheels",kay_2,roger)
car_3 = Car.new("make_3","model-3","super_light",kay_3,luke)
car_4 = Car.new("make_4","model_4","luxury",kay_4,mike)


binding.pry
