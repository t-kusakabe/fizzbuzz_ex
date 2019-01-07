defmodule FizzBuzz do
  def run(limit) do
    output(1, limit)
  end

  defp output(index, limit) when index == limit do
    cond do
      rem(index, 15) == 0 -> IO.puts "FizzBuzz"
      rem(index, 3)  == 0 -> IO.puts "Fizz"
      rem(index, 5)  == 0 -> IO.puts "Buzz"
      true                -> IO.puts index
    end
  end

  defp output(index, limit) do
    output(index, index)
    output(index + 1, limit)
  end
end
