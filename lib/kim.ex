defmodule Kim do
  def hey(input) do
    cond do
      forceful_question?(input) -> "Calm down, I know what I'm doing!"
      silence?(input) -> "Fine. Be that way!"
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

  def forceful_question?(input) do
    shouting?(input) and question?(input)
  end

  def silence?(input) do
    String.length(input) == 0
  end
end
