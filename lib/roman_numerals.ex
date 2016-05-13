defmodule RomanNumerals do
  def to_roman(1) do
    "I"
  end

  def to_roman(5) do
    "V"
  end

  def to_roman(10) do
    "X"
  end

  def to_roman(50) do
    "L"
  end

  def to_roman(100) do
    "C"
  end

  def to_roman(4) do
    to_roman(1) <> to_roman(5)
  end

  def to_roman(9) do
    to_roman(1) <> to_roman(10)
  end

  def to_roman(14) do
    to_roman(10) <> to_roman(4)
  end

  def to_roman(15) do
    to_roman(10) <> to_roman(5)
  end

  def to_roman(24) do
    to_roman(20) <> to_roman(4)
  end

  def to_roman(25) do
    to_roman(20) <> to_roman(5)
  end

  def to_roman(29) do
    to_roman(20) <> to_roman(9)
  end

  def to_roman(34) do
    to_roman(30) <> to_roman(4)
  end

  def to_roman(40) do
    to_roman(10) <> to_roman(50)
  end

  def to_roman(90) do
    to_roman(10) <> to_roman(100)
  end

  def to_roman(99) do
    to_roman(90) <> to_roman(9)
  end

  def to_roman(n) when n < 4 do
    to_roman(1)
    |> String.duplicate(n)
  end

  def to_roman(n) when n > 50 and rem(n, 10) == 0 do
    to_roman(50) <> to_roman(n - 50)
  end

  def to_roman(n) when rem(n, 10) == 0 do
    to_roman(10)
    |> String.duplicate(div n, 10)
  end

  def to_roman(n) when n > 50 do
    to_roman(50) <> to_roman(n - 50)
  end

  def to_roman(n) when n > 40 do
    to_roman(40) <> to_roman(n - 40)
  end

  def to_roman(n) when n > 30 do
    to_roman(30) <> to_roman(n - 30)
  end

  def to_roman(n) when n > 20 do
    to_roman(20) <> to_roman(n - 20)
  end

  def to_roman(n) when n > 10 do
    to_roman(10) <> to_roman(n - 10)
  end

  def to_roman(n) when n > 25 do
    to_roman(20) <> to_roman(5) <> to_roman(n - 25)
  end

  def to_roman(n) when n > 15 do
    to_roman(15) <> to_roman(n - 15)
  end

  def to_roman(n) when n > 5 do
    to_roman(5) <> to_roman(n - 5)
  end
end
