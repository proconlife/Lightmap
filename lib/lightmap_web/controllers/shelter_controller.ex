defmodule LightmapWeb.ShelterController do
    use LightmapWeb, :controller
  
    def index(conn, _params) do
      render(conn, "index.html")
    end
  end