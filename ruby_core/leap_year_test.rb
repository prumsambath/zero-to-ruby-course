$:.push '~/Documents/ruby/zero-to-ruby-course/ruby_core'
require 'test/unit'
require 'leap_year'

class LeapYearTest < Test::Unit::TestCase
  def test_century_with_divide_by_400_leap_year
    assert_equal(true, leap_year?(2000))
  end

  def test_century_with_divide_by_100_not_leap_year
    assert_equal(false, leap_year?(1900))
  end

  def test_year_with_divide_by_4_leap_year
    assert_equal(true, leap_year?(2004))
  end

  def test_year_with_no_divide_by_4_not_leap_year
    assert_equal(false, leap_year?(2005))
  end
end                                 
