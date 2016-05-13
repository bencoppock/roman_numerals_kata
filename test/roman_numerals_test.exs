defmodule RomanNumeralsTest do
  use ExUnit.Case
  doctest RomanNumerals

  test "it translates 1" do
    assert RomanNumerals.to_roman(1) == "I"
  end

  test "it translates 2" do
    assert RomanNumerals.to_roman(2) == "II"
  end

  test "it translates 3" do
    assert RomanNumerals.to_roman(3) == "III"
  end

  test "it translates 4" do
    assert RomanNumerals.to_roman(4) == "IV"
  end

  test "it translates 5" do
    assert RomanNumerals.to_roman(5) == "V"
  end

  test "it translates 6" do
    assert RomanNumerals.to_roman(6) == "VI"
  end

  test "it translates 9" do
    assert RomanNumerals.to_roman(9) == "IX"
  end

  test "it translates 10" do
    assert RomanNumerals.to_roman(10) == "X"
  end

  test "it translates 11" do
    assert RomanNumerals.to_roman(11) == "XI"
  end

  test "it translates 12" do
    assert RomanNumerals.to_roman(12) == "XII"
  end

  test "it translates 14" do
    assert RomanNumerals.to_roman(14) == "XIV"
  end

  test "it translates 16" do
    assert RomanNumerals.to_roman(16) == "XVI"
  end

  test "it translates 20" do
    assert RomanNumerals.to_roman(20) == "XX"
  end

  test "it translates 21" do
    assert RomanNumerals.to_roman(21) == "XXI"
  end

  test "it translates 22" do
    assert RomanNumerals.to_roman(22) == "XXII"
  end

  test "it translates 24" do
    assert RomanNumerals.to_roman(24) == "XXIV"
  end

  test "it translates 25" do
    assert RomanNumerals.to_roman(25) == "XXV"
  end

  test "it translates 26" do
    assert RomanNumerals.to_roman(26) == "XXVI"
  end

  test "it translates 27" do
    assert RomanNumerals.to_roman(27) == "XXVII"
  end

  test "it translates 29" do
    assert RomanNumerals.to_roman(29) == "XXIX"
  end

  test "it translates 30" do
    assert RomanNumerals.to_roman(30) == "XXX"
  end

  test "it translates 31" do
    assert RomanNumerals.to_roman(31) == "XXXI"
  end

  test "it translates 34" do
    assert RomanNumerals.to_roman(34) == "XXXIV"
  end

  test "it translates 35" do
    assert RomanNumerals.to_roman(35) == "XXXV"
  end

  test "it translates 39" do
    assert RomanNumerals.to_roman(39) == "XXXIX"
  end

  test "it translates 40" do
    assert RomanNumerals.to_roman(40) == "XL"
  end

  test "it translates 41" do
    assert RomanNumerals.to_roman(41) == "XLI"
  end

  test "it translates 50" do
    assert RomanNumerals.to_roman(50) == "L"
  end

  test "it translates 51" do
    assert RomanNumerals.to_roman(51) == "LI"
  end

  test "it translates 59" do
    assert RomanNumerals.to_roman(59) == "LIX"
  end

  test "it translates 60" do
    assert RomanNumerals.to_roman(60) == "LX"
  end

  test "it translates 90" do
    assert RomanNumerals.to_roman(90) == "XC"
  end

  test "it translates 99" do
    assert RomanNumerals.to_roman(99) == "XCIX"
  end

  test "it translates 100" do
    assert RomanNumerals.to_roman(100) == "C"
  end
end
