defmodule PesquisaBinaria do
  def search(list, value) when is_list(list) and length(list) > 0 do
    do_search(list, value, 0, length(list) - 1)
  end

  def search(_list, _value) do
    {:error, :invalid_list}
  end

  defp do_search(_list, _value, low, high) when low > high do
    {:error, :not_found}
  end

  defp do_search(list, value, low, high)  do
    mid = div(low + high, 2)

    check(list, Enum.at(list, mid), value, low, mid, high)
  end

  defp check(_list, value_found, value, _low, mid, _high) when value_found == value do
    {:ok, mid}
  end

  defp check(list, value_found, value, low, mid, _high) when value_found > value do
    do_search(list, value, low, mid - 1)
  end

  defp check(list, _value_found, value, _low, mid, high) do
    do_search(list, value, mid + 1, high)
  end
end
