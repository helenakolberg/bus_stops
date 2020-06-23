require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../person')

class PersonTest < MiniTest::Test

    def setup()
        @passenger = Person.new("Jane", 22)
    end

    def test_passenger_name()
        assert_equal("Jane", @passenger.name)
    end

    def test_passenger_age()
        assert_equal(22, @passenger.age)
    end




end