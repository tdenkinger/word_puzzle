defmodule ScoreWordsTest do
  use ExUnit.Case
  doctest ScoreWords

  test "calculates each word's target value and score" do
    score = ScoreWords.run(["aa", "zaaa"])
    assert Enum.member?(score, {1, 1, "aa"})
    assert Enum.member?(score, {26, 3, "zaaa"})
  end
end
