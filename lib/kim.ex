defmodule Kim do
  def hey(input) do
    cond do
      shouting?(input) -> "Whoa, chill out!"
      true -> "Whatever."
    end
  end

  def shouting?(input) do
    String.upcase(input) == input
  end

end
