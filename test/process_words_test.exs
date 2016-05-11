import ProcessWords

defmodule ProcessWordsTest do
  use ExUnit.Case
  doctest ProcessWords

  test "returns words from the word list of the correct length" do
    word_length = 5
    word_list = ["a", "aa", "aaa", "aaaa", "aaaaa", "aaaaaa", "bbbbb", "ccccccc"]

    candidate_words = select_candidate_words(word_list, word_length)
    assert Enum.member?(candidate_words, "aaaaa")
    assert Enum.member?(candidate_words, "bbbbb")
    refute Enum.member?(candidate_words, "ccccccc")
  end
end

