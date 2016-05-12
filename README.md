# Karten

Your challenge is to implement a card shuffling algorithm (with tests of course). 

Run `mix test` to compile and run your tests.

For more fun run `iex -S mix` to open the REPL with this project in scope.

We have defined an interface (known as a Behaviour in Elixir) in this file :=> https://github.com/HcomCoolCode/karten/blob/master/lib/shuffler.ex

And provide a lazy implementation in :=>  https://github.com/HcomCoolCode/karten/blob/master/lib/slothy_shuffle.ex

All you need is

```elixir
defmodule Namespace.MyModule do
  @behaviour Karten.Shuffler # says we implement this behaviour 

  def shuffle(decks) do # the only required method
    	      decks
	      |> Enum.concat # decks is a List of Lists `[[Cards]]` but we return a `[Card]`
  end
end
```

While that is all you need, it wont pass many tests :( for example

```elixir
	test "shuffled deck is not equal to original deck" do
	     	   deck = Deck.new
		   shuffled = Namespace.MyModule.shuffle([deck])
		   refute deck == shuffled
	end
```

