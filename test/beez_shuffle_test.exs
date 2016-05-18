defmodule Karten.BeezShuffleTest do
	use ExUnit.Case, async: true
	alias Karten.{BeezShuffle, Deck}

	test "card count consistent" do
		deck1 = Deck.new
		deck2 = Deck.new
		shuffled = BeezShuffle.shuffle([deck1, deck2])

		IO.inspect shuffled

		assert length(shuffled) == 104
	end

	# test "shuffled deck is not equal to original deck" do
	# 	deck = Deck.new
	# 	shuffled = BeezShuffle.shuffle([deck])
	# 	refute deck == shuffled
	# end
end
