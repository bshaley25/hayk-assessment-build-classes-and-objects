require "pry"
class Building

    attr_accessor :name, :number_of_tenants, :number_of_floors
    attr_reader :address

    @@all = []

    def initialize(name, address, number_of_floors, number_of_tenants)
        @name = name
        @address = address
        @number_of_floors = number_of_floors
        @number_of_tenants = number_of_tenants

        @@all << self
    end

    def self.find_building what_building
        all.find{|building| what_building.name == building.name}
    end

    def self.average_number_of_tentants what_building
        building = find_building what_building 
        building.number_of_tenants 
    end

    def placard_method
        "#{self.name} on #{self.address}"
    end

    def average_number_of_tenants_per_floor
        self.number_of_tenants / self.number_of_floors
    end

    def self.all
        @@all
    end

end

building1 = Building.new("building 1", "1 street", 1, 100) #average = 2
building2 = Building.new("building 2", "2 street", 2, 250) #average = 3
building3 = Building.new("building 3", "3 street", 3, 400) #average = 4
building4 = Building.new("building 4", "4 street", 4, 550) #average = 5
building5 = Building.new("building 5", "5 street", 5, 600) #average = 6
building6 = Building.new("building 6", "6 street", 6, 700) #average = 7

binding.pry