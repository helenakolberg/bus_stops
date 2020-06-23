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
    
    def pick_up_from_queue(bus_stop)
        for person in bus_stop.queue()
            pick_up(person)
        end
        bus_stop.clear_queue()
    end

end