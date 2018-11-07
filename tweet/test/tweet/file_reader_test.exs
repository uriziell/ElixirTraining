defmodule FileReaderTest do
  use ExUnit.Case

  test "File should return a string" do
    str = Tweet.FileReader.get_string_to_tweet(Path.join("#{:code.priv_dir(:pluralsight_tweet)}", "sample.txt"))

    assert str != line
  end
end
