defmodule LogLevel do

  def to_label(level, legacy?) do
    cond do
      level == 0 and not legacy? -> :trace
      level == 1 -> :debug
      level == 2 -> :info
      level == 3 -> :warning
      level == 4 -> :error
      level == 5 and not legacy? -> :fatal
      true -> :unknown
    end
  end

  def alert_recipient(level, legacy?) do
    level_label = to_label(level, legacy?)
    cond do
      level_label == :error or level_label == :fatal -> :ops
      level_label == :unknown and legacy? -> :dev1
      level_label == :unknown -> :dev2
      true -> false
    end
  end

end
