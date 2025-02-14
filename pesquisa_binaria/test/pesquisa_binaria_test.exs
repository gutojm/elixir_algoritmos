defmodule PesquisaBinariaTest do
  use ExUnit.Case

  test "sucessfull binary search" do
    assert PesquisaBinaria.search([0, 1, 2, 3, 4, 5, 6, 7, 8, 9 ,10],7) == {:ok, 7}
  end

  test "unsucessfull binary search" do
    assert PesquisaBinaria.search([0, 1, 2, 3, 4, 5, 6, 7, 8, 9 ,10],70) == {:error, :not_found}
  end

  test "fail when searching on empty list" do
    assert PesquisaBinaria.search([],7) == {:error, :invalid_list}
  end

  test "fail when searching on not a list" do
    assert PesquisaBinaria.search(0,7) == {:error, :invalid_list}
  end
end
