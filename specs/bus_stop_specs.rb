require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../bus_stop')
require_relative('../person')

class BusStopTest < MiniTest::Test

    def setup()
        @bus_stop = BusStop.new("Princes St")
        @passenger1 = Person.new("James", 65)
    end

    def test_bus_stop_name()
        assert_equal("Princes St", @bus_stop.name)
    end
    
    def test_bus_stop_queue()
        assert_equal(0, @bus_stop.check_queue())
    end

    def test_add_passenger_to_queue()
        @bus_stop.add_passenger_to_queue(@passenger1)
        assert_equal(1, @bus_stop.check_queue())
    end

end