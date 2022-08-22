defmodule CarcassonexWeb.GameView do
  use CarcassonexWeb, :view

  def tile(assigns = %{type: "empty"}) do
    ~H"""
        <div class="tile"></div>
    """
  end
end
