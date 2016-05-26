defmodule Karten.CardClashShuffler do
	@behaviour Karten.Shuffler

	def shuffle(decks) do
		decks
		|> Enum.concat
		|> knuth_shuffle
	end

	defp knuth_shuffle(deck) do
		tuple_deck = List.to_tuple(deck)
		knuth_shuffle(tuple_deck, [])
	end

	defp knuth_shuffle(empty, shuffled) when 0 == tuple_size(empty) do
		shuffled
	end

	defp knuth_shuffle(remaining, shuffled) do
		:random.seed(:erlang.now())
		index = :random.uniform(tuple_size(remaining)) - 1
		temp = elem(remaining, index)
		less_remaining = Tuple.delete_at(remaining, index)
		knuth_shuffle(less_remaining, [ temp | shuffled ])
	end
end
