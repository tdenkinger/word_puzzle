defmodule EvaluateScores do
  def run(scored_words) do
    Enum.filter scored_words, fn(word) -> is_match?(word) end
  end

  defp is_match?({x, x, _}), do: true
  defp is_match?(_), do: false
end
