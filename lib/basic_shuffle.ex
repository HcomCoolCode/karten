defmodule Karten.BasicShuffle do
	@behaviour Karten.Shuffler

	def shuffle(decks) do
		decks
		|> Enum.concat
		|> deckShuffle
		|> cut
		|> cut
	end

	defp deckShuffle(deck) do
		Enum.shuffle deck
	end

	defp cut(deck) do
		:random.seed(:erlang.now())
		splitter = :random.uniform(length(deck))
		{top, bottom} = Enum.split(deck, splitter)
		bottom ++ top
	end
end
