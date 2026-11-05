defmodule Lasagna do

  # Please define the 'expected_minutes_in_oven/0' function
  def expected_minutes_in_oven() do
    40
  end

  # Please define the 'remaining_minutes_in_oven/1' function
  def remaining_minutes_in_oven(a) do
    Lasagna.expected_minutes_in_oven() - a
  end

  # Please define the 'preparation_time_in_minutes/1' function
  def preparation_time_in_minutes(a) do
    2 * a
  end

  # Please define the 'total_time_in_minutes/2' function
  def total_time_in_minutes(layers, cook_time) do
    prep_time = Lasagna.preparation_time_in_minutes(layers)
    prep_time + cook_time
  end

  # Please define the 'alarm/0' function
  def alarm() do
    "Ding!"
  end

end
