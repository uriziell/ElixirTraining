defmodule Tweet.TweetServer do
  use GenServer

  def start_link(arg) do
    GenServer.start_link(__MODULE__, arg, name: :tweet_server)
  end

  def init(:ok) do
    {:ok, %{}}
  end

  def handle_cast({:tweet, tweet}, _) do
    Tweet.Tweet.send(tweet)
    {:noreply, %{}} #We dont care aboute state so return empty map
  end

  def tweet(tweet) do
    GenServer.cast(:tweet_server, {:tweet, tweet})
  end
end
