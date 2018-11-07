defmodule Tweet.Scheduler do
  def schedule_file(schedule, file) do
    Quantum.add_job(schedule, fn -> Tweet.FileReader.get_string_to_tweet(file)
    |> Tweet.TweetServer.tweet end)
  end
end
