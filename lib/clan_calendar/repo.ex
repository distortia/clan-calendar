defmodule ClanCalendar.Repo do
  use Ecto.Repo,
    otp_app: :clan_calendar,
    adapter: Ecto.Adapters.Postgres
end
