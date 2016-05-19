defmodule Karten.SlothyShuffleTest do
	use ExUnit.Case, async: true
	alias Karten.{SlothyShuffle, Deck}

	test "card count consistent" do
		deck1 = Deck.new
		deck2 = Deck.new
		shuffled = SlothyShuffle.shuffle([deck1, deck2])
		assert length(shuffled) == 104
	end

	test "shuffled deck is not equal to original deck" do
		deck = Deck.new
		shuffled = SlothyShuffle.shuffle([deck])
		refute deck == shuffled
	end

	test "two shuffles are not equal" do
		shuffled1 = SlothyShuffle.shuffle([Deck.new])
		shuffled2 = SlothyShuffle.shuffle([Deck.new])
		refute shuffled1 == shuffled2
	end
	
	test "no where in a shuffled deck are there 5 cards in a row of the same suit" do
		shuffledIntoChunks = [Deck.new]
		|> SlothyShuffle.shuffle()
		|> Enum.slice(0..20)
		|> Enum.chunk(5)
		|> IO.inspect
		
		refute Enum.any?(shuffledIntoChunks, fn(cards) ->
			suit = hd(cards).suit
			Enum.all?(cards, &(suit == &1.suit))
			end)
	end
end
