defmodule BloomFilterTest do
  use ExUnit.Case
  doctest BloomSearch

  alias BloomSearch.BloomFilter

  test "calculate optimal size and hashes from length and desired error rate" do
    assert BloomFilter.optimal(2000, 0.005) == {:ok, %{size: 22_056, hashes: 8}}
  end
end
