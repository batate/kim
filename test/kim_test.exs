defmodule KimTest do
  use ExUnit.Case

  test "stating something" do
    assert Kim.hey("Tom-ay-to, tom-aaaah-to.") == "Whatever."
  end

  test "shouting" do
    assert Kim.hey("WATCH OUT!") == "Whoa, chill out!"
  end

  @tag :pending
  test "shouting gibberish" do
    assert Kim.hey("FCECDFCAAB") == "Whoa, chill out!"
  end

  @tag :pending
  test "asking a question" do
    assert Kim.hey("Does this cryogenic chamber make me look fat?") == "Sure."
  end

  @tag :pending
  test "asking a numeric question" do
    assert Kim.hey("You are, what, like 15?") == "Sure."
  end

  @tag :pending
  test "asking gibberish" do
    assert Kim.hey("fffbbcbeab?") == "Sure."
  end

  @tag :pending
  test "talking forcefully" do
    assert Kim.hey("Hi there!") == "Whatever."
  end

  @tag :pending
  test "using acronyms in regular speech" do
    assert Kim.hey("It's OK if you don't want to go to the DMV.") == "Whatever."
  end

  @tag :pending
  test "talking in capitals" do
    assert Kim.hey("This Isn't Shouting!") == "Whatever."
  end

  @tag :pending
  test "forceful question" do
    assert Kim.hey("WHAT'S GOING ON?") == "Calm down, I know what I'm doing!"
  end

  @tag :pending
  test "asking in capitals" do
    assert Kim.hey("THIS ISN'T SHOUTING?") == "Calm down, I know what I'm doing!"
  end

  @tag :pending
  test "shouting numbers" do
    assert Kim.hey("1, 2, 3 GO!") == "Whoa, chill out!"
  end

  @tag :pending
  test "shouting with special characters" do
    assert Kim.hey("ZOMG THE %^*@#$(*^ ZOMBIES ARE COMING!!11!!1!") == "Whoa, chill out!"
  end

  @tag :pending
  test "shouting with no exclamation mark" do
    assert Kim.hey("I HATE THE DENTIST") == "Whoa, chill out!"
  end

  @tag :pending
  test "statement containing question mark" do
    assert Kim.hey("Ending with ? means a question.") == "Whatever."
  end

  @tag :pending
  test "silence" do
    assert Kim.hey("") == "Fine. Be that way!"
  end

  @tag :pending
  test "prolonged silence" do
    assert Kim.hey("  ") == "Fine. Be that way!"
  end

  @tag :pending
  test "alternate silence" do
    assert Kim.hey("\t\t\t\t\t\t\t\t\t\t") == "Fine. Be that way!"
  end

  @tag :pending
  test "only numbers" do
    assert Kim.hey("1, 2, 3") == "Whatever."
  end

  @tag :pending
  test "multiple line question" do
    assert Kim.hey("\nDoes this cryogenic chamber make me look fat?\nNo.") == "Whatever."
  end

  @tag :pending
  test "question with numbers" do
    assert Kim.hey("4?") == "Sure."
  end

  @tag :pending
  test "non-letters with question" do
    assert Kim.hey(":) ?") == "Sure."
  end

  @tag :pending
  test "prattling on" do
    assert Kim.hey("Wait! Hang on. Are you going to be OK?") == "Sure."
  end

  @tag :pending
  test "starting with whitespace" do
    assert Kim.hey("         hmmmmmmm...") == "Whatever."
  end

  @tag :pending
  test "ending with whitespace" do
    assert Kim.hey("Okay if like my  spacebar  quite a bit?   ") == "Sure."
  end

  @tag :pending
  test "other whitespace" do
    assert Kim.hey("\n\r \t") == "Fine. Be that way!"
  end

  @tag :pending
  test "non-question ending with whitespace" do
    assert Kim.hey("This is a statement ending with whitespace     ") == "Whatever."
  end

  @tag :pending
  test "shouting in Russian" do
    assert Kim.hey("УХОДИ") == "Whoa, chill out!"
  end
end
