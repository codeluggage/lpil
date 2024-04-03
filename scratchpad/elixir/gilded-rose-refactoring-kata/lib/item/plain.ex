defmodule Item.Plain do
  defstruct Item.fields
end

defimpl GildedRose.Update, for: Item.Plain do

  def update(%{ quality: 0 } = item) do
    item
  end

  def update(%{ sell_in: s } = item) when s < 0 do
    item
  end

  def update(item) do
    %{ item | quality: item.quality - 1 }
  end
end
