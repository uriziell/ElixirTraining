defmodule Tweet.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    # List all child processes to be supervised
    children = [
      # Starts a worker by calling: Tweet.Worker.start_link(arg)
       { Tweet.TweetServer, :ok }
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Tweet.Supervisor]
    process = Supervisor.start_link(children, opts)
    Tweet.Scheduler.schedule_file("* * * * *", Path.join("#{:code.priv_dir(:pluralsight_tweet)}", "sample.txt"))

    process
  end
end
