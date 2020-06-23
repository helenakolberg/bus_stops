require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../bus')
require_relative('../person')

class BusTest < MiniTest::Test

    def setup()
        @bus = Bus.new(16, "Colinton")
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

end  