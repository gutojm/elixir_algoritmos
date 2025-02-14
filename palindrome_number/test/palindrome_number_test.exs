defmodule PalindromeNumberTest do
  use ExUnit.Case
  doctest PalindromeNumber

  test "checks if a number is a palindrome" do
    assert PalindromeNumber.is_palindrome?(121) == true
    assert PalindromeNumber.is_palindrome?(12321) == true
    assert PalindromeNumber.is_palindrome?(123) == false
    assert PalindromeNumber.is_palindrome?(10) == false
  end

  test "checks if a negative number is a palindrome" do
    assert PalindromeNumber.is_palindrome?(-121) == false
  end

  test "checks if a single digit number is a palindrome" do
    assert PalindromeNumber.is_palindrome?(7) == true
  end
end
