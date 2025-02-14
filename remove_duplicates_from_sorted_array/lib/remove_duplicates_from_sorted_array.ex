defmodule RemoveDuplicatesFromSortedArray do
  def remove_duplicates([]), do: []
  def remove_duplicates([head | tail]), do: do_remove_duplicates(tail, head, [head])

  defp do_remove_duplicates([], _prev, acc), do: Enum.reverse(acc)
  defp do_remove_duplicates([head | tail], prev, acc) when head == prev do
    do_remove_duplicates(tail, prev, acc)
  end
  defp do_remove_duplicates([head | tail], _prev, acc) do
    do_remove_duplicates(tail, head, [head | acc])
  end
end
