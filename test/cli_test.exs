defmodule CliTest do
  use ExUnit.Case
  doctest WordPuzzle.Cli

  import WordPuzzle.Cli

  test "returns default values if none are passed in" do
    assert parse_args() == {5, "/usr/share/dict/words"}
  end

  test "a word length passed in overrides the default" do
    assert parse_args([4]) == {4, "/usr/share/dict/words"}
  end

  test "a word length and word file passed in override defaults" do
    assert parse_args([4, "my_words"]) == {4, "my_words"}
  end

  test "a word file passed in overrides default but keeps default length" do
    assert parse_args(["my_words"]) == {5, "my_words"}
  end
end
