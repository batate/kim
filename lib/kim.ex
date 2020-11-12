defmodule Kim do
  def hey(input) do
    cond do
      shouting?(input) -> "Whoa, chill out!"
      question?(input) -> "Sure."
      true -> "Whatever."
    end
  end

  def shouting?(input) do
    String.upcase(input) == input
  end
  def question?(input) do
    String.ends_with?(input, "?")
  end

end
