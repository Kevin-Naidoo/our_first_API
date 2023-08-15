defmodule RealDealApiWeb.Router do
  #alias RealDealApiWeb.AccountControllerTest
  #alias RealDealApiWeb.DefaultController
  use RealDealApiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", RealDealApiWeb do
    pipe_through :api
    get "/", DefaultController, :index
    #resources "/accounts", AccountController, except: [:new, :edit]
    post "/accounts/create", AccountController, :create

  end
end
