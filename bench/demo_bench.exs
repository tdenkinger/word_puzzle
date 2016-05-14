defmodule DemoBench do
  use Benchfella

  bench "Word Puzzle demo" do
    WordPuzzle.Cli.run()
  end
end
