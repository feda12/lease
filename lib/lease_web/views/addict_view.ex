defmodule Addict.AddictView do
  use Phoenix.HTML
  use Phoenix.View, root: "lib/lease_web/templates/"
  import Phoenix.Controller, only: [view_module: 1]
  import LeaseWeb.Router.Helpers
end
