defmodule GenerateParentheses do
  @spec execute(n :: integer) :: [String.t]
  def execute(n) do
    generate(n, n, "", [])
  end

  defp generate(open, close, current, result) when open == 0 and close == 0 do
    [current | result]
  end

  defp generate(open, close, current, result) do
    result = if open > 0 do
                generate(open - 1, close, current <> "(", result)
             else
                result
             end

    result = if close > open do
                generate(open, close - 1, current <> ")", result)
             else
                result
             end

    result
  end
end
