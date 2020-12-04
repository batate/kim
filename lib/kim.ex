defmodule Kim do
  def hey(input) do
    clean_input = remove_whitespace(input)
    cond do

      forceful_question?(clean_input) -> "Calm down, I know what I'm doing!"
      silence?(clean_input) -> "Fine. Be that way!"
      shouting?(clean_input) and not numbers?(clean_input) -> "Whoa, chill out!"
      question?(clean_input) -> "Sure."
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

  def remove_whitespace(input) do
    String.trim(input)
  end

  def numbers?(input) do
    String.contains?(input, ["1", "2", "3", "4"])
  end

  def remove_numbers(input) do
    String.trim(input, "1", "2", "3", "4"])
  end
end
