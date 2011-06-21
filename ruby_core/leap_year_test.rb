$:.push '~/Documents/ruby/zero-to-ruby-course/ruby_core'
require 'test/unit'
require 'leap_year'

class LeapYearTest < Test::Unit::TestCase
  def test_century_1700_false
    assert_equal(false, leap_year?(1700), "1700 is not a leap year")
  end

  def test_normal_year_2006_false
    assert_equal(false, leap_year?(2006), "2006 is not a leap year")
  end

  def test_leap_year_2004_true
    assert_equal(true, leap_year?(2004), "2004 is a leap year")
  end
end                                 
