defmodule GraphqlInit.Router do
  use GraphqlInit.Web, :router

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

  scope "/", GraphqlInit do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
  end

  forward "/api", Absinthe.Plug, schema: GraphqlInit.Schema
  forward "/graphiql", Absinthe.Plug.GraphiQL, schema: GraphqlInit.Schema
  

  # Other scopes may use custom stacks.
  # scope "/api", GraphqlInit do
  #   pipe_through :api
  # end
end
