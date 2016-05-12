defmodule DemoBench do
  use Benchfella

  @list Enum.to_list(1..1000)

  bench "hello demo" do
    Enum.reverse @list
    Process.sleep(2000)
  end
end
