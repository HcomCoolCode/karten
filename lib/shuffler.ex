defmodule Karten.Shuffler do
	alias Karten.Card
	
	@type deck :: [%Card{}]
	@callback shuffle([deck]) :: [%Card{}]
end
