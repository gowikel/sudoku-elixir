defmodule Sudoku do
  alias Mix.Shell.IO, as: Shell

  def main(_) do
    board = [
      [0, 7, 2, 0, 0, 4, 9, 0, 0],
      [3, 0, 4, 0, 8, 9, 1, 0, 0],
      [8, 1, 9, 0, 0, 6, 2, 5, 4],
      [7, 0, 1, 0, 0, 0, 0, 9, 5],
      [9, 0, 0, 0, 0, 2, 0, 7, 0],
      [0, 0, 0, 8, 0, 7, 0, 1, 2],
      [4, 0, 5, 0, 0, 1, 6, 2, 0],
      [2, 3, 7, 0, 0, 0, 5, 0, 1],
      [0, 0, 0, 0, 2, 5, 7, 0, 0]
    ]

    board
    |> Sudoku.UI.format()
    |> Shell.info()
  end
end
