class Bus
    
    attr_reader :route, :destination
    
    def initialize(route, destination)
        @route = route
        @destination = destination
        @passengers = []
    end

    def drive()
        return "Vroom"
    end
    
end