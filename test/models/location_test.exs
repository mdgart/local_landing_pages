defmodule LocalLandingPages.LocationTest do
  use LocalLandingPages.ModelCase

  alias LocalLandingPages.Location

  @valid_attrs %{address: "some content", address_extended: "some content", country: "some content", description: "some content", hours: "some content", latitude: "120.5", locality: "some content", longitude: "120.5", name: "some content", phone: "some content", postcode: "some content", special_hours: "some content", website: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Location.changeset(%Location{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Location.changeset(%Location{}, @invalid_attrs)
    refute changeset.valid?
  end
end
