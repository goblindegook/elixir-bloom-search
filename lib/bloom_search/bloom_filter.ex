defmodule BloomSearch.BloomFilter do
  @moduledoc """
  Bloom filters.
  """

  @doc """
  Calculate optimised size and hashes from length and error rate.
  """
  def optimal(items, error_rate) when is_integer(items) and is_number(error_rate) do
    size = :math.ceil(-(items * :math.log(error_rate)) / :math.log(2) ** 2)
    hashes = Float.round(size / items * :math.log(2))
    {:ok, %{size: size, hashes: hashes}}
  end

  def optimal(_items, _error_rate) do
    {:error, nil}
  end
end
