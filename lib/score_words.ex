defmodule ScoreWords do
  def run(words) do
    words
    |> Enum.map(fn(word) -> process_word(word) end)
  end

  defp process_word(word) do
    Fib.fib(30)

    target_letter_value = word
    |> String.slice(0, 1)
    |> get_position_value

    letter_values = word
    |> String.slice(1..-1)
    |> get_letters_value

    {target_letter_value, letter_values, word}
  end

  defp get_letters_value(letters) do
    letters
    |> String.split("", trim: true)
    |> Enum.map( fn(letter) -> get_position_value(letter) end )
    |> Enum.reduce( fn(value, acc) -> value + acc end )
  end

  defp get_position_value(letter) do
    %{ a: 1,  b: 2,  c: 3,  d: 4,  e: 5,  f: 6,
       g: 7,  h: 8,  i: 9,  j: 10, k: 11, l: 12,
       m: 13, n: 14, o: 15, p: 16, q: 17, r: 18,
       s: 19, t: 20, u: 21, v: 22, w: 23, x: 24,
       y: 25, z: 26} [letter |> String.downcase |> String.to_atom]
  end
end

defmodule Fib do
  def fib(0) do 0 end
  def fib(1) do 1 end
  def fib(n) do fib(n-1) + fib(n-2) end
end
