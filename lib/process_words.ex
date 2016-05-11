defmodule ProcessWords do
  def select_candidate_words(word_list, word_length) do
    word_list
    |> filter_by_word_length(word_length)
  end

  defp filter_by_word_length(word_list, word_length) do
    Enum.filter word_list, fn(x) -> String.length(x) == word_length end
  end
end
