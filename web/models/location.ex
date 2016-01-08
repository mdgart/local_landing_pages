defmodule LocalLandingPages.Location do
  use LocalLandingPages.Web, :model

  schema "locations" do
    field :address, :string
    field :address_extended, :string
    field :country, :string
    field :postcode, :string
    field :latitude, :float
    field :longitude, :float
    field :locality, :string
    field :phone, :string
    field :name, :string
    field :website, :string
    field :order_url, :string
    field :manager_name, :string
    field :description, :string
    field :region, :string
    field :hours, :string
    field :special_hours, :string
    field :account_id, :binary_id

    timestamps
  end

  @required_fields ~w(address address_extended country postcode latitude longitude locality phone name website description hours special_hours)
  @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end
