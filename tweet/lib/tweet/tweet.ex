defmodule Tweet.Tweet do
  def send(str) do
    ExTwitter.configure(:process, [
      access_token: Application.get_env(:pluralsight_tweet, :access_token),
      access_token_secret: Application.get_env(:pluralsight_tweet, :access_token_secret),
      consumer_key: Application.get_env(:pluralsight_tweet,  :consumer_key),
      consumer_secret: Application.get_env(:pluralsight_tweet, :consumer_secret)
    ]
)
    ExTwitter.update(str)
  end
end
