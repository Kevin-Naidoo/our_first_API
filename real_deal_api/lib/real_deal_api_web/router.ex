defmodule RealDealApiWeb.Router do
  #alias RealDealApiWeb.AccountController
  #alias RealDealApiWeb.AccountControllerTest
  #alias RealDealApiWeb.DefaultController
  use RealDealApiWeb, :router
  use Plug.ErrorHandler

  defp handle_errors(conn, %{reason: %Phoenix.Router.NoRouteError{message: message}}) do
    conn |> json(%{errors: message}) |> halt()
  end

  defp handle_errors(conn, %{reason: %{message: message}}) do
    conn |> json(%{errors: message}) |> halt()
  end
  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", RealDealApiWeb do
    pipe_through :api
    get "/", DefaultController, :index
    #resources "/accounts", AccountController, except: [:new, :edit]
    post "/accounts/create", AccountController, :create
    post "/accounts/sign_in", AccountController, :sign_in

  end
end
