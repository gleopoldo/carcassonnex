defmodule CarcassonexWeb.GameLive do
  use Phoenix.LiveView

  def render(assigns) do
    Phoenix.View.render(CarcassonexWeb.GameView, "index.html", assigns)
  end

  def mount(_session, socket) do
    {:ok, socket}
  end
end
