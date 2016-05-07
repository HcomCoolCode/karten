defmodule Karten.Card do
	@moduledoc """
	Provides a Struct that encapsulates playing cards
    - `suit` refers to clubs, spades, etc
    - `face` refers to 9, 10, Jack, etc
    - `values` refers to the actual value of the card
    - `deck_id` is unused currently

    | Note that `values` is important because some cards
    (like Jacks, Queens, etc.) have a different
    numeric value than might be expected from their
    ordinal position.
  """
	defstruct suit: "", face: "", values: [], deck_id: 0
end
