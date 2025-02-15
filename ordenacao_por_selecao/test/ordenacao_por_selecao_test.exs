defmodule OrdenacaoPorSelecaoTest do
  use ExUnit.Case
  test "sorts an empty list" do
    assert OrdenacaoPorSelecao.ordenar([]) == []
  end

  test "sorts a list with one element" do
    assert OrdenacaoPorSelecao.ordenar([1]) == [1]
  end

  test "sorts a list with multiple elements" do
    assert OrdenacaoPorSelecao.ordenar([3, 1, 2]) == [1, 2, 3]
  end

  test "sorts a list with duplicate elements" do
    assert OrdenacaoPorSelecao.ordenar([4, 2, 4, 3, 1]) == [1, 2, 3, 4, 4]
  end

  test "sorts a list with negative elements" do
    assert OrdenacaoPorSelecao.ordenar([3, -1, 2, -3]) == [-3, -1, 2, 3]
  end
end
