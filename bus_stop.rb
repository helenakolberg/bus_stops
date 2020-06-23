class BusStop

    attr_reader :name
    attr_accessor :queue

    def initialize(name)
        @name = name
        @queue = []
    end

    def check_queue()
       return @queue.length
    end

    def add_passenger_to_queue(passenger)
        return @queue.push(passenger)
    end
end