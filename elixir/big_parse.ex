# The ultimate objective here is to take a large text file (potentially a wikipedia dump of filesize n), parse it and get
# a count of words or wordlength.

file = "test.txt"

case File.read(file) do
  {:ok, body} ->
    body
    |> IO.puts
  {:error, reason} ->
    "Could not read file #{file} because #{reason}"
    |> IO.puts
end

case File.read(file) do
  {:ok, body} ->
    String.split(body)
    |> length
    |> IO.puts
end



case File.read(file) do
    {:ok, body} -> String.split(body)
    |> length
    |> IO.puts
end