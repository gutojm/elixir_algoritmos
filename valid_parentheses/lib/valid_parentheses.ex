defmodule ValidParentheses do
  @spec is_valid?(s :: String.t) :: boolean
  def is_valid?(s) do
    s
    |> String.graphemes()
    |> validate([]);
  end

  defp validate([], []) do
    true
  end

  defp validate([], _) do
    false
  end

  defp validate([h|_],[]) when h == ")" or h == "]" or h == "}" do
    false
  end

  defp validate([h|_],[sh|_]) when h != sh and (h == ")" or h == "]" or h == "}") do
    false
  end

  defp validate([h|t],[sh|st]) when h == sh and (h == ")" or h == "]" or h == "}") do
    validate(t, st)
  end

  defp validate([h|t],c) when h == "(" or h == "[" or h == "{" do
    validate(t,[close_char(h)|c])
  end

  defp close_char("(") do
    ")"
  end

  defp close_char("[") do
    "]"
  end

  defp close_char("{") do
    "}"
  end
end
