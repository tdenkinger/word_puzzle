defmodule FileAccess do
  def read_word_list(input_file) do
    Enum.reduce get_stream(input_file), [], fn(line, words) ->
      [process_line(line) | words]
    end
  end

  defp get_stream(input_file) do
    File.stream!(input_file, [:read], :line)
  end

  defp process_line(line) do
    String.strip(line)
  end
end
