defmodule RealDealApiWeb.DefaultController do
 use RealDealApiWeb, :controller

 def index(conn, _params) do
   text conn, "The Real Deal API by Kevin Naidoo ;) is Live - #{Mix.env()}"
 end

end
