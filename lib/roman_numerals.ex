defmodule RomanNumerals do
  def to_numeric(roman_numeral) when is_bitstring(roman_numeral) do
    roman_numeral
    |> String.replace(" ", "")
    |> String.graphemes()
    |> to_numeric(0)
  end

  defp to_numeric(["I", "V" | tail], number), do: to_numeric(tail, number + 4)
  defp to_numeric(["I", "X" | tail], number), do: to_numeric(tail, number + 9)
  defp to_numeric(["X", "L" | tail], number), do: to_numeric(tail, number + 40)
  defp to_numeric(["X", "C" | tail], number), do: to_numeric(tail, number + 90)
  defp to_numeric(["C", "D" | tail], number), do: to_numeric(tail, number + 400)
  defp to_numeric(["C", "M" | tail], number), do: to_numeric(tail, number + 900)

  defp to_numeric(["I" | tail], number), do: to_numeric(tail, number + 1)
  defp to_numeric(["V" | tail], number), do: to_numeric(tail, number + 5)
  defp to_numeric(["X" | tail], number), do: to_numeric(tail, number + 10)
  defp to_numeric(["L" | tail], number), do: to_numeric(tail, number + 50)
  defp to_numeric(["C" | tail], number), do: to_numeric(tail, number + 100)
  defp to_numeric(["D" | tail], number), do: to_numeric(tail, number + 500)
  defp to_numeric(["M" | tail], number), do: to_numeric(tail, number + 1000)
  defp to_numeric(["ↁ" | tail], number), do: to_numeric(tail, number + 5000)
  defp to_numeric(["ↂ" | tail], number), do: to_numeric(tail, number + 10000)

  defp to_numeric([], number), do: number


  def to_roman(number), do: next_roman("", number)
  defp next_roman(roman, number), do: roman

end
