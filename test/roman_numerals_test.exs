defmodule RomanNumeralsTest do
  use ExUnit.Case
  doctest RomanNumerals

  @integers %{
       1 => "I",
       2 => "II",
       3 => "III",
       4 => "IV",
       5 => "V",
       6 => "VI",
       9 => "IX",
      10 => "X",
      11 => "XI",
      12 => "XII",
      14 => "XIV",
      16 => "XVI",
      20 => "XX",
      21 => "XXI",
      22 => "XXII",
      24 => "XXIV",
      25 => "XXV",
      26 => "XXVI",
      27 => "XXVII",
      29 => "XXIX",
      30 => "XXX",
      31 => "XXXI",
      34 => "XXXIV",
      35 => "XXXV",
      36 => "XXXVI",
      39 => "XXXIX",
      40 => "XL",
      41 => "XLI",
      44 => "XLIV",
      50 => "L",
      51 => "LI",
      59 => "LIX",
      60 => "LX",
      89 => "LXXXIX",
      90 => "XC",
      99 => "XCIX",
     100 => "C",
     500 => "D",
     501 => "DI",
     530 => "DXXX",
     550 => "DL",
     707 => "DCCVII",
     890 => "DCCCXC",
     903 => "CMIII",
    1519 => "MDXIX",
    1804 => "MDCCCIV"
  }

  def assert_mapping({integer, roman}) do
    actual_result = RomanNumerals.to_roman(integer)
    assert actual_result == roman, "Expected #{integer} to convert to #{roman}, got #{actual_result}"
  end

  test "it translates from integer to roman numeral" do
    @integers |> Enum.each(&assert_mapping(&1))
  end
end
