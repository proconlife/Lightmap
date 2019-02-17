defmodule LightmapWeb.Router do
  use LightmapWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", LightmapWeb do
    pipe_through :browser

    get "/", PageController, :index
    resources "/gee", GeeController
    resources "/rsearch", RsearchController
    resources "/sento", SentoController
    resources "/conveni", ConveniController
    resources "/cafe", CafeController
    resources "/toilet", ToiletController
    resources "/laundromat", LaundromatController
    resources "/schelter", ShelterController
  end

  # Other scopes may use custom stacks.
  # scope "/api", LightmapWeb do
  #   pipe_through :api
  # end
end
