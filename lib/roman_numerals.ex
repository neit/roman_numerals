defmodule RomanNumerals do
  @moduledoc """
  Roman numerals converter
  """

  @numerals [
    {"M", 1000},
    {"CM", 900},
    {"D", 500},
    {"CD", 400},
    {"C", 100},
    {"XC", 90},
    {"L", 50},
    {"XL", 40},
    {"X", 10},
    {"IX", 9},
    {"V", 5},
    {"IV", 4},
    {"I", 1},
  ]

  @doc """
  Converts an integer into the corresponding roman numeral.

  ## Examples

    iex> RomanNumerals.to_roman(45)
    "XLV"

    iex> RomanNumerals.to_roman(99)
    "XCIX"
  """
  @spec to_roman(number) :: String.t
  def to_roman(number) do
    @numerals
    |> Enum.reduce({number, ""}, fn {numeral, v}, {number, roman} ->
        {
          rem(number, v),
          roman <> String.duplicate(numeral, div(number, v))
        }
    end)
    |> elem(1)
  end

  @doc """
  Converts a roman numeral string into the corresponding integer.

  ## Examples

    iex> RomanNumerals.to_numeric("XLIV")
    44

    iex> RomanNumerals.to_numeric("MMMCMXCIX")
    3999
  """
  @spec to_numeric(String.t) :: integer
  def to_numeric(roman_numeral) when is_bitstring(roman_numeral) do
    roman_numeral
    |> String.replace(" ", "")
    |> String.graphemes()
    |> to_numeric(0)
  end

  defp to_numeric(["M" | tail], number), do: to_numeric(tail, number + 1000)
  defp to_numeric(["C", "M" | tail], number), do: to_numeric(tail, number + 900)
  defp to_numeric(["D" | tail], number), do: to_numeric(tail, number + 500)
  defp to_numeric(["C", "D" | tail], number), do: to_numeric(tail, number + 400)
  defp to_numeric(["C" | tail], number), do: to_numeric(tail, number + 100)
  defp to_numeric(["X", "C" | tail], number), do: to_numeric(tail, number + 90)
  defp to_numeric(["L" | tail], number), do: to_numeric(tail, number + 50)
  defp to_numeric(["X", "L" | tail], number), do: to_numeric(tail, number + 40)
  defp to_numeric(["X" | tail], number), do: to_numeric(tail, number + 10)
  defp to_numeric(["I", "X" | tail], number), do: to_numeric(tail, number + 9)
  defp to_numeric(["V" | tail], number), do: to_numeric(tail, number + 5)
  defp to_numeric(["I", "V" | tail], number), do: to_numeric(tail, number + 4)
  defp to_numeric(["I" | tail], number), do: to_numeric(tail, number + 1)
  defp to_numeric([], number), do: number

end
