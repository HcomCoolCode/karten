defmodule Karten.BasicShuffle do
	@behaviour Karten.Shuffler

	def shuffle(decks) do
		decks
		|> decksShuffle
		|> Enum.concat
		|> Enum.shuffle
		|> cut
		|> cut
	end

	defp decksShuffle(decks) do
		Enum.map decks, &(Enum.shuffle &1)
	end

	defp cut(deck) do
		:random.seed(:erlang.now())
		splitter = :random.uniform(length(deck))
		{top, bottom} = Enum.split(deck, splitter)
		bottom ++ top
	end
end
