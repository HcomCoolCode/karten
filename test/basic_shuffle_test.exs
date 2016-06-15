defmodule Karten.BasicShuffleTest do
	use ExUnit.Case, async: true
	alias Karten.{BasicShuffle, Deck}

	test "card count consistent" do
		deck1 = Deck.new
		deck2 = Deck.new
		shuffled = BasicShuffle.shuffle([deck1, deck2])
		# IO.inspect shuffled
		assert length(shuffled) == 104
	end

	test "shuffled deck is not equal to original deck" do
		deck = Deck.new
		shuffled = BasicShuffle.shuffle([deck])
		refute deck == shuffled
	end
end
