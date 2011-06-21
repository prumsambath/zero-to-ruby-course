require 'test/unit'
require './CurrencyExchange'

class CurrencyExchangeTest < Test::Unit::TestCase
  def test_1_dollar_to_riel
    assert_equal(1.dollar.to_riel, "4000.0 riels")
  end

  def test_raise_1_dollars
    assert_raise RuntimeError do
      1.dollars.to_riel
    end
  end

  def test_2000_riel_to_dollar
    assert_equal(2000.riels.to_dollar, "0.5 dollars")
  end

  def test_raise_1_riel
    assert_raise RuntimeError do
      1.riels.to_dollar
    end
  end

end
  
