defmodule GenerateParenthesesTest do
  use ExUnit.Case

  test "generate_parentheses with n = 1" do
    assert GenerateParentheses.execute(1) == ["()"]
  end

  test "generate_parentheses with n = 2" do
    assert GenerateParentheses.execute(2) == ["()()", "(())"]
  end

  test "generate_parentheses with n = 3" do
    assert GenerateParentheses.execute(3) == ["()()()", "()(())", "(())()", "(()())", "((()))"  ]
  end

  test "generate_parentheses with n = 0" do
    assert GenerateParentheses.execute(0) == [""]
  end
end
