defmodule RomanNumeralsTest do
  use ExUnit.Case
  doctest RomanNumerals

  test "5" do
    assert RomanNumerals.to_numeric("V") == 5
  end

  test "9" do
    assert RomanNumerals.to_numeric("IX") == 9
  end

  test "12" do
    assert RomanNumerals.to_numeric("XII") == 12
  end

  test "16" do
    assert RomanNumerals.to_numeric("XVI") == 16
  end

  test "29" do
    assert RomanNumerals.to_numeric("XXIX") == 29
  end

  test "44" do
    assert RomanNumerals.to_numeric("XLIV") == 44
  end

  test "45" do
    assert RomanNumerals.to_numeric("XLV") == 45
  end

  test "68" do
    assert RomanNumerals.to_numeric("LXVIII") == 68
  end

  test "83" do
    assert RomanNumerals.to_numeric("LXXXIII") == 83
  end

  test "97" do
    assert RomanNumerals.to_numeric("XCVII") == 97
  end

  test "99" do
    assert RomanNumerals.to_numeric("XCIX") == 99
  end

  test "500" do
    assert RomanNumerals.to_numeric("D") == 500
  end

  test "501" do
    assert RomanNumerals.to_numeric("DI") == 501
  end

  test "649" do
    assert RomanNumerals.to_numeric("DCXLIX") == 649
  end

  test "798" do
    assert RomanNumerals.to_numeric("DCCXCVIII") == 798
  end

  test "891" do
    assert RomanNumerals.to_numeric("DCCCXCI") == 891
  end

  test "1000" do
    assert RomanNumerals.to_numeric("M") == 1000
  end

  test "1004" do
    assert RomanNumerals.to_numeric("MIV") == 1004
  end

  test "1006" do
    assert RomanNumerals.to_numeric("MVI") == 1006
  end

  test "1023" do
    assert RomanNumerals.to_numeric("MXXIII") == 1023
  end

  test "2014" do
    assert RomanNumerals.to_numeric("MMXIV") == 2014
  end

  test "3999" do
    assert RomanNumerals.to_numeric("MMMCMXCIX") == 3999
  end

  test "V" do
    assert RomanNumerals.to_roman(5) == "V"
  end

  test "IX" do
    assert RomanNumerals.to_roman(9) == "IX"
  end

  test "XII" do
    assert RomanNumerals.to_roman(12) == "XII"
  end

  test "XVI" do
    assert RomanNumerals.to_roman(16) == "XVI"
  end

  test "XXIX" do
    assert RomanNumerals.to_roman(29) == "XXIX"
  end

  test "XLIV" do
    assert RomanNumerals.to_roman(44) == "XLIV"
  end

  test "XLV" do
    assert RomanNumerals.to_roman(45) == "XLV"
  end

  test "LXVIII" do
    assert RomanNumerals.to_roman(68) == "LXVIII"
  end

  test "LXXXIII" do
    assert RomanNumerals.to_roman(83) == "LXXXIII"
  end

  test "XCVII" do
    assert RomanNumerals.to_roman(97) == "XCVII"
  end

  test "XCIX" do
    assert RomanNumerals.to_roman(99) == "XCIX"
  end

  test "D" do
    assert RomanNumerals.to_roman(500) == "D"
  end

  test "DI" do
    assert RomanNumerals.to_roman(501) == "DI"
  end

  test "DCXLIX" do
    assert RomanNumerals.to_roman(649) == "DCXLIX"
  end

  test "DCCXCVIII" do
    assert RomanNumerals.to_roman(798) == "DCCXCVIII"
  end

  test "DCCCXCI" do
    assert RomanNumerals.to_roman(891) == "DCCCXCI"
  end

  test "M" do
    assert RomanNumerals.to_roman(1000) == "M"
  end

  test "MIV" do
    assert RomanNumerals.to_roman(1004) == "MIV"
  end

  test "MVI" do
    assert RomanNumerals.to_roman(1006) == "MVI"
  end

  test "MXXIII" do
    assert RomanNumerals.to_roman(1023) == "MXXIII"
  end

  test "MMXIV" do
    assert RomanNumerals.to_roman(2014) == "MMXIV"
  end

  test "MMMCMXCIX" do
    assert RomanNumerals.to_roman(3999) == "MMMCMXCIX"
  end

end
