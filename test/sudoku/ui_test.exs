defmodule Sudoku.UI.Test do
  use ExUnit.Case
  import Sudoku.UI

  doctest Sudoku.UI

  test "transforms all digits correctly" do
    input = [[1, 2, 3, 4, 5, 6, 7, 8, 9]]
    expected = "1 2 3   4 5 6   7 8 9"
    result = format(input)

    assert result == expected
  end

  test "zeroes are transformted into dots" do
    input = [[0, 0, 0]]
    expected = ". . ."
    result = format(input)

    assert result == expected
  end

  test "lines are grouped 3 by 3" do
    input = [[1, 1, 1, 2, 2, 2, 3, 3, 3, 4, 4, 4, 5, 5, 5]]
    expected = "1 1 1   2 2 2   3 3 3   4 4 4   5 5 5"
    result = format(input)

    assert result == expected
  end

  test "multiple lines are correctly rendered" do
    input = [[1, 2, 3], [4, 5, 6]]
    expected = "1 2 3\n4 5 6"
    result = format(input)

    assert result == expected
  end

  test "multiple lines are grouped 3 by 3" do
    input = [
      [1, 1, 1],
      [1, 1, 1],
      [1, 1, 1],
      [2, 2, 2],
      [2, 2, 2],
      [2, 2, 2],
      [3, 3, 3],
      [3, 3, 3],
      [3, 3, 3]
    ]

    expected = String.trim("""
    1 1 1
    1 1 1
    1 1 1

    2 2 2
    2 2 2
    2 2 2

    3 3 3
    3 3 3
    3 3 3
    """)

    result = format(input)

    assert result == expected
  end
end
