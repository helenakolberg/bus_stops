require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../bus')
require_relative('../person')

class BusTest < MiniTest::Test

    def setup()
        @bus = Bus.new(16, "Colinton")
        @passenger1 = Person.new("Colin", 30)
        @passenger2 = Person.new("Rita", 50)
        @passengers = [@passenger1, @passenger2]
    
    end

    def test_route_number()
        assert_equal(16, @bus.route())
    end

    def test_destination()
        assert_equal("Colinton", @bus.destination())
    end

    def test_drive()
        assert_equal("Vroom", @bus.drive())
    end

    def test_number_of_passengers()
        assert_equal(0, @bus.count_passengers())
    end

    def test_add_passenger()
        @bus.pick_up(@passenger1)
        assert_equal(1, @bus.count_passengers())
    end

    def test_remove_passenger()
        @bus.passengers = @passengers
        @bus.drop_off(@passenger2)
        assert_equal(1, @bus.count_passengers())
    end

    def test_remove_all_passengers_final_destination()
        @bus.passengers = @passengers
        final_destination = true
        @bus.empty_bus(final_destination)
        assert_equal(0, @bus.count_passengers)
    end

    def test_remove_all_passengers_not_final_destination()
        @bus.passengers = @passengers
        final_destination = false
        @bus.empty_bus(final_destination)
        assert_equal(2, @bus.count_passengers)
    end

    def test_remove_all_passengers_break_down()
        @bus.passengers = @passengers
        break_down = true
        @bus.empty_bus(break_down)
        assert_equal(0, @bus.count_passengers)
    end
end  