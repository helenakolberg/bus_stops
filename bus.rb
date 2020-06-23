class Bus
    
    attr_reader :route, :destination
    attr_accessor :passengers
    
    def initialize(route, destination)
        @route = route
        @destination = destination
        @passengers = []
    end

    def drive()
        return "Vroom"
    end

    def count_passengers()
        return @passengers.length()
    end

    def pick_up(new_passenger)
        @passengers.push(new_passenger)
    end

    def drop_off(passenger)
        @passengers.delete(passenger)
    end

    def empty_bus(status)
        @passengers.clear if (status)
    end

end