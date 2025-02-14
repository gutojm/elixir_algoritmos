defmodule PalindromeNumber do
  @spec is_palindrome?(x :: integer) :: boolean
  def is_palindrome?(x) when x < 0 do
    false
  end

  def is_palindrome?(x) when x < 10 do
    true
  end

  def is_palindrome?(x) do
    str = Integer.to_string(x)

    rstr = String.reverse(str)

    if str === rstr do
      true
    else
      false
    end
  end
end
