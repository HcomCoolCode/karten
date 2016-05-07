defmodule Karten.Shuffler do
	alias Karten.Card
	@moduledoc """
	*One who shuffles cards*

	Defines a Behaviour to support suffling cards
  
  Accepts a List of Lists of Cards,
    to support accepting more than one deck of Cards

  Returns a list of (hopefully) shuffled cards
  """
	
	@callback shuffle([[%Card{}]]) :: [%Card{}]
end
