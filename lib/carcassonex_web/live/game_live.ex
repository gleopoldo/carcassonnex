defmodule CarcassonexWeb.GameLive do
  use Phoenix.LiveView

  def render(assigns) do
    Phoenix.View.render(CarcassonexWeb.GameView, "index.html", assigns)
  end

  def mount(_session, _args, socket) do
    new_grid = Enum.map((1..10), fn _ ->
      Enum.map((1..10), fn _ -> nil end)
    end)

    {:ok, assign(socket, :map, new_grid) }
  end
end
