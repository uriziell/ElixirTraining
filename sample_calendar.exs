defmodule Sample.Calendar do

  def describe_date(date) do
    case date do
      {1,_,_} -> "Brand new month"
      {25, 12, _} -> "Merry Christmas"
      {25, month, _} -> "Only #{12 - month} more to Christmas"
      {31, 10, 1517} -> "The reformation"
      {31, 10, _} -> "Halloween"
      {_, month, _} when month <= 12 -> "Just an avarage day"
      {_, _, _} -> "Invalid month"
    end
  end

end
