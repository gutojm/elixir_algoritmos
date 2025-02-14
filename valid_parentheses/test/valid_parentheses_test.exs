defmodule ValidParenthesesTest do
  use ExUnit.Case

  test "valid parentheses with balanced parentheses" do
    assert ValidParentheses.is_valid?("()") == true
    assert ValidParentheses.is_valid?("(())") == true
    assert ValidParentheses.is_valid?("()()") == true
    assert ValidParentheses.is_valid?("(()(()))") == true
  end

  test "invalid parentheses with unbalanced parentheses" do
    assert ValidParentheses.is_valid?("(") == false
    assert ValidParentheses.is_valid?(")") == false
    assert ValidParentheses.is_valid?("(()") == false
    assert ValidParentheses.is_valid?("())") == false
    assert ValidParentheses.is_valid?("(()))") == false
  end

  test "valid parentheses with empty string" do
    assert ValidParentheses.is_valid?("") == true
  end

  test "valid parentheses with mixed types" do
    assert ValidParentheses.is_valid?("()[]{}") == true
    assert ValidParentheses.is_valid?("{[()]}") == true
    assert ValidParentheses.is_valid?("[{()}]") == true
    assert ValidParentheses.is_valid?("({[]})") == true
  end

  test "invalid parentheses with mixed types" do
    assert ValidParentheses.is_valid?("([)]") == false
    assert ValidParentheses.is_valid?("{[}") == false
    assert ValidParentheses.is_valid?("{[(])}") == false
    assert ValidParentheses.is_valid?("({[})") == false
  end

end
