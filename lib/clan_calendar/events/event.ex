defmodule ClanCalendar.Events.Event do
  use Ecto.Schema
  import Ecto.Changeset

  schema "events" do
    field :datetime, :naive_datetime
    field :title, :string

    timestamps()
  end

  @doc false
  def changeset(event, attrs) do
    event
    |> cast(attrs, [:title, :datetime])
    |> validate_required([:title, :datetime])
  end
end
