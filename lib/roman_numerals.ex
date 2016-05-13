defmodule RomanNumerals do
  @integers_to_romans %{
    1000 => "M",
     500 => "D",
     100 => "C",
      50 => "L",
      10 => "X",
       5 => "V",
       1 => "I",
  }

  @recognized_integers_small_to_large Map.keys(@integers_to_romans) |> Enum.sort
  @recognized_integers_large_to_small Enum.reverse(@recognized_integers_small_to_large)

  @doc """
  Converts integers to roman numerals.

  ## Examples
  iex> RomanNumerals.to_roman(9)
  "IX"
  """
  def to_roman(n) when n in @recognized_integers_large_to_small do
    @integers_to_romans[n]
  end

  def to_roman(n) do
    to_roman(n, subtractor(n), upper_bound(n))
  end

  def to_roman(n, subtractor, upper) when n >= upper - subtractor do
    to_roman(subtractor) <> to_roman(n + subtractor)
  end

  def to_roman(n, _, _) do
    lower = lower_bound(n)
    to_roman(lower) <> to_roman(n - lower)
  end

  # Returns the biggest possible subtractor (i.e. a mapped integer starting with 1)
  defp subtractor(n) do
    @recognized_integers_large_to_small |> Enum.find(&(&1 <= n && valid_subtractor?(&1)))
  end

  # Only numbers starting with 1 and divisible by 10 are used as subtractors
  defp valid_subtractor?(n) do
    [first | _rest] = Integer.to_string(n) |> String.to_char_list
    first == 49 # char code for the numeral '1'
  end

  # Returns the largest mapping contained in `n`
  defp lower_bound(n) do
    @recognized_integers_large_to_small |> Enum.find(&(&1 <= n))
  end

  # Returns the integer for the next mapping larger than `n`
  defp upper_bound(n) do
    @recognized_integers_small_to_large |> Enum.find(&(&1 > n))
  end
end
