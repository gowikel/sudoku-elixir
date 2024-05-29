defmodule Sudoku.UI do
  @moduledoc """
  This is responsible to generate the CLI Interface from a given board. A board
  is represented as a list of lists, each list will contain a row.

  It should separate the board in 9 squares, each one 3x3, so it is easier to play
  it.
  """

  @doc """
  It transforms a board into a binary.
  """
  def format(board) do
    board
    |> Enum.chunk_every(3)
    |> Enum.map(&_format_rows/1)
    |> Enum.join("\n\n")
  end

  defp _format_rows(rows) do
    rows
    |> Enum.map(&_format_row/1)
    |> Enum.join("\n")
  end

  defp _format_row(row) do
    row
    |> Enum.chunk_every(3)
    |> Enum.map(&_format_cells/1)
    |> Enum.join("   ")
  end

  defp _format_cells([a, b, c]) do
    "#{_format_cell(a)} #{_format_cell(b)} #{_format_cell(c)}"
  end

  defp _format_cell(cell) do
    case cell do
      0 -> "."
      n -> Integer.to_string(n)
    end
  end
end
