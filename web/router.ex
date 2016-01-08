defmodule LocalLandingPages.Router do
  use LocalLandingPages.Web, :router

  pipeline :browser do
    plug CORSPlug, [origin: "http://localhost:3000"]
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", LocalLandingPages do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    get "/search_locations", PageController, :api_test
    options "/search_locations", PageController, :options
  end

  # Other scopes may use custom stacks.
  #scope "/api", LocalLandingPages do
  #  pipe_through :api
  #end

end
