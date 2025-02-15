defmodule OrdenacaoPorSelecao do
  def ordenar(lista) do
    ordenar(lista, [])
  end

  defp ordenar([], sorted), do: Enum.reverse(sorted)

  defp ordenar(lista, sorted) do
    {min, rest} = extrair_minimo(lista)
    ordenar(rest, [min | sorted])
  end

  defp extrair_minimo([head | tail]) do
    extrair_minimo(tail, head, [])
  end

  defp extrair_minimo([], min, rest), do: {min, rest}

  defp extrair_minimo([head | tail], min, rest) when head < min do
    extrair_minimo(tail, head, [min | rest])
  end

  defp extrair_minimo([head | tail], min, rest) do
    extrair_minimo(tail, min, [head | rest])
  end
end
