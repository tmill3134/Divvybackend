defmodule DivvychallengeTest do
  use ExUnit.Case
  doctest Divvychallenge

  test "(2,2)" do
    IO.puts "(2,2) #{Divvychallenge.answer("lib/test1.txt")}"
    assert Divvychallenge.answer("lib/test1.txt") == '5'
  end
  
  test "(2, 4)" do
    IO.puts "(2,4) #{Divvychallenge.answer("lib/test2.txt")}"
    assert Divvychallenge.answer("lib/test2.txt") == '12'
  end
  
  test "(4, 1)" do
    IO.puts "(4, 1) #{Divvychallenge.answer("lib/test3.txt")}"
    assert Divvychallenge.answer("lib/test3.txt") == '10'
  end
  
  test "(4, 2)" do
    IO.puts "(4, 2) #{Divvychallenge.answer("lib/test4.txt")}"
    assert Divvychallenge.answer("lib/test4.txt") == '14'
  end
  
  test "(100000, 100000)" do
    IO.puts "(100000, 100000) #{Divvychallenge.answer("lib/test5.txt")}"
    assert Divvychallenge.answer("lib/test5.txt") == '19999800001'
  end
end