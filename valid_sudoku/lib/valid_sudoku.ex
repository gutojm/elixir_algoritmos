defmodule ValidSudoku do
  @spec is_valid?(board :: [[char]]) :: boolean
  def is_valid?(board) do
    validate(board)
  end

  defp validate(board) do
    tboard = transpose(board)
    subboxes = subboxes(board)

    unique?(board, true) && unique?(tboard, true) && unique?(subboxes, true)
  end

  defp transpose(board) do
    board
    |> Enum.zip()
    |> Enum.map(&Tuple.to_list/1)
  end

  defp subboxes(list) do
    broke(list)
    |> getsubboxes(0,[])
  end

  defp broke(list) do
    List.flatten(list)
    |> Enum.chunk_every(3)
  end

  defp getsubboxes(_, 27, result) do
    result
  end

  defp getsubboxes(list, n, result) do
    result = [subbox(list, n)|result]
    getsubboxes(list, nextbox(n), result)
  end

  defp nextbox(n) when (n >= 0 and n <= 1) or (n >= 9 and n <= 10) or (n >= 18 and n <= 19) do
    n+1
  end

  defp nextbox(n) when n == 2 or n == 11 or n == 20 do
    n+7
  end

  defp subbox(list, n) do
    Enum.at(list, n) ++ Enum.at(list, n+3) ++ Enum.at(list, n+6)
  end

  defp unique?(_, false) do
    false
  end

  defp unique?([], true) do
    true
  end

  defp unique?([h|t], true) do
    filled_cells = Enum.filter(h, &(&1 != "."))
    result = Enum.uniq(filled_cells) == filled_cells;
    unique?(t, result)
  end
end
