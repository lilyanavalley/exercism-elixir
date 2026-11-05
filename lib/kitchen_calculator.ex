defmodule KitchenCalculator do

  @milliliter_table %{
    milliliter:   1,
    cup:          240,
    fluid_ounce:  30,
    teaspoon:     5,
    tablespoon:   15
  }

  def get_volume({_uom, amount}) do
    amount
  end

  def to_milliliter({uom, amount}) do
    {:milliliter, amount * @milliliter_table[uom]}
  end

  def from_milliliter({:milliliter, amount}, uom) do
    {uom, amount / @milliliter_table[uom]}
  end

  def convert(volume_pair, uom) do
    volume_pair
    |> to_milliliter()
    |> from_milliliter(uom)
  end

end
