defmodule Sample.Enum do
    def first(list) when length(list) == 0, do: nil
    def first([head | _]), do: head

    def add(list, val \\ 0) do
      trace(val)
      [val | list]
    end

    defp trace(string) do
      IO.puts("The value passed in was #{string}")
    end

    def map([], _), do: []
    def map([hd | tl], f) do
      [f.(hd) | map(tl, f)]
    end
    def length([]), do: 0
    def length([_ | tail]),
          do 1 + length

end
