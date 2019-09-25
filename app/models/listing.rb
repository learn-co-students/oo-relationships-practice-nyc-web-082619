class Listing
    attr_accessor :city

    @@all = []

    def initialize(city)
        @city= city

        @@all << self
    end

    def self.all
        @@all
    end

    def trips
        Trip.all.select{|trip|trip.listing==self}
    end

    def trip_count
        trips.count
    end

    def guests
       trips.map{|trip|trip.guest}
        #binding.pry
    end

    def self.find_all_by_city(city)
        self.all.select{|trip|trip.city == city}
    end

    def self.most_popular
        self.all.max_by{|listing|listing.trips.count}
    end


end