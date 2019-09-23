defmodule Divvychallenge do
    def getXandY(path) do
      input = File.read!(path)
      |> String.split("\n")
      |> Enum.map(&String.to_integer/1)
    end

    def getX(path) do
      input = getXandY(path)
      x = hd(input)
    end

    def getY(path) do
      input = getXandY(path)
      input = List.delete_at(input, 0)
      y = hd(input)
    end

    def traverseCols(colVal, xIndex, yIndex, curCol, maxCol) when curCol == maxCol, do: {colVal, yIndex}

    def traverseCols(colVal, xIndex, yIndex, curCol, maxCol) do
      newColVal = colVal + xIndex
      newXIndex = xIndex + 1
      newYIndex = yIndex + 1
      nextCol = curCol + 1
      traverseCols(newColVal, newXIndex, newYIndex, nextCol, maxCol)
    end

    def traverseRows(finalVal, yIndex, curRow, maxRow) when curRow == maxRow, do: finalVal
  
    def traverseRows(finalVal, yIndex, curRow, maxRow) do
      newFinalVal = finalVal + yIndex
      newYIndex = yIndex + 1
      nextRow = curRow + 1
      traverseRows(newFinalVal, newYIndex, nextRow, maxRow)
    end

  def answer(path) do
      val = 1
      xi = 2
      yi = 1

    x = getX(path)
    y = getY(path)



    res = traverseCols(val, xi, yi, 1, x)
    IO.inspect traverseRows(elem(res, 0), elem(res, 1), 1, y)

      Integer.to_charlist(traverseRows(elem(res, 0), elem(res, 1), 1, y))
  end

end