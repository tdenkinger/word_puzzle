defmodule WordPuzzle.Cli do
  @default_word_length 5
  @default_word_list "/usr/share/dict/words"

  @moduledoc """
  The entry point for solving the word puzzle.
  """

  def run(argv \\ []) do
    args = parse_args(argv)

    elem(args, 1)
    |> FileAccess.read_word_list
    |> ProcessWords.select_candidate_words(elem(args, 0))
    |> ScoreWords.run
    |> EvaluateScores.run
    # |> print words
    |> IO.inspect
  end

  def parse_args(argv \\ []) do
    parse = OptionParser.parse(argv)

    case parse do
      {_, [arg1], _} when is_number(arg1) -> {arg1, @default_word_list}
      {_, [arg1], _}                      -> {@default_word_length, arg1}
      {_, [arg1, arg2], _}                -> {arg1, arg2}
      _                                   -> {@default_word_length, @default_word_list}
    end
  end
end
