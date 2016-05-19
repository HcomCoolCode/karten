defmodule Karten.SlothyShuffle do
	@behaviour Karten.Shuffler

	@reps 2
	
	def shuffle(decks) do
		decks
		|> Enum.concat
		|> cuts(@reps)
	end

	defp cuts(deck, 0) do
		deck
	end

	defp cuts(deck, i) when i > 0 do
		cuts(cut(deck), i - 1)
	end

	defp cut(deck) when length(deck) < 3 do
		Enum.reverse(deck)
	end
	
	defp cut(deck) do
		:random.seed(:erlang.now())
		splitter = :random.uniform(length(deck))
		{top, bottom} = Enum.split(deck, splitter)
		cuts(bottom, @reps) ++ cuts(top, @reps)
	end
end
