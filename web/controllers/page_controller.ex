defmodule LocalLandingPages.PageController do
  use LocalLandingPages.Web, :controller
  import Ecto.Query

  def index(conn, _params) do
    render conn, "index.html"
  end

  def api_test(conn, %{"minlat" => minlat, "maxlat" => maxlat, "minlng" => minlng, "maxlng" => maxlng, "account_id" => account_id}) do
    query = from w in LocalLandingPages.Location,
          where:
            w.latitude >= ^minlat and
            w.latitude <= ^maxlat and
            w.longitude <= ^minlng and
            w.longitude >= ^maxlng and
            w.account_id == ^account_id,
         select: %{
           id: w.id,
           name: w.name,
           address: w.address,
           description: w.description,
           address_extended: w.address_extended,
           postcode: w.postcode,
           locality: w.locality,
           region: w.region,
           phone: w.phone,
           website: w.website,
           order_url: w.order_url,
           manager_name: w.manager_name,
           hours: w.hours,
           special_hours: w.special_hours,
           latitude: w.latitude,
           longitude: w.longitude
         },
         limit: 30
    json conn, %{locations: Repo.all(query)}
  end

end
