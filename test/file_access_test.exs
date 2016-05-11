defmodule FileAccessTest do
  use ExUnit.Case
  doctest FileAccess

  test "returns the contents of the passed in file" do
    word_list = FileAccess.read_word_list("test/data/test_word_file")
    assert Enum.member?(word_list, "a")
    assert Enum.member?(word_list, "b")
    assert Enum.member?(word_list, "c")
    refute Enum.member?(word_list, "word")
  end
end
