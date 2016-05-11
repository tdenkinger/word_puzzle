defmodule EvaluateScoresTest do
  use ExUnit.Case
  doctest EvaluateScores

  test "correctly identifies when a word's score and its target match" do
    evaluated_words = EvaluateScores.run([{3, 3, "caaa"}, {3, 2, "caa"}])

    assert Enum.member?(evaluated_words, {3, 3, "caaa"})
  end

  test "correctly identifiers a non-match" do
    evaluated_words = EvaluateScores.run([{3, 3, "caaa"}, {3, 2, "caa"}])

    refute Enum.member?(evaluated_words, {3, 2, "caa"})
  end
end
