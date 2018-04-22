defmodule Rumbl.Repo do
  use Ecto.Repo, otp_app: :rumbl

  @moduledoc """
  In memory repository.
  """
  def all(Rumbl.User, _ignore) do
    [%Rumbl.User{id: "1", name: "Jose", username: "josevalim", password: "12345"},
    %Rumbl.User{id: "2", name: "Shahriar", username: "anwarshahriar", password: "12345"},
    %Rumbl.User{id: "3", name: "Tansin", username: "tansinjahan", password: "12345"}]
  end

  def all(_module, _ignore), do: []

  # def get(module, id) do
  #   Enum.find all(module), fn map -> map.id == id end
  # end

  # def get_by(module, params) do
  #   Enum.find all(module), fn map -> Enum.all?(params, fn {key,val} -> Map.get(map, key) == val end) end
  # end
end
