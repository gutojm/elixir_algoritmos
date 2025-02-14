defmodule RemoveDuplicatesFromSortedArrayTest do
  use ExUnit.Case

  test "removes duplicates from an empty list" do
    assert RemoveDuplicatesFromSortedArray.remove_duplicates([]) == []
  end

  test "removes duplicates from a list with one element" do
    assert RemoveDuplicatesFromSortedArray.remove_duplicates([1]) == [1]
  end

  test "removes duplicates from a list with no duplicates" do
    assert RemoveDuplicatesFromSortedArray.remove_duplicates([1, 2, 3, 4]) == [1, 2, 3, 4]
  end

  test "removes duplicates from a list with consecutive duplicates" do
    assert RemoveDuplicatesFromSortedArray.remove_duplicates([1, 1, 2, 3, 3, 4]) == [1, 2, 3, 4]
  end

  test "removes duplicates from a list with all elements the same" do
    assert RemoveDuplicatesFromSortedArray.remove_duplicates([1, 1, 1, 1]) == [1]
  end

  test "removes duplicates from a list with multiple duplicates" do
    assert RemoveDuplicatesFromSortedArray.remove_duplicates([1, 1, 2, 2, 3, 3, 4, 4]) == [1, 2, 3, 4]
  end
end
