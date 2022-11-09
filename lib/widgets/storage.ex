defmodule Widgets.Storage do
  alias Widgets.{Repo, Widget}

  def all do
    Repo.all(Widget)
  end
end
