file = "big.txt"

case File.read(file) do
  {:ok, body} ->
    String.split(body)
    |> length
    |> IO.puts
end