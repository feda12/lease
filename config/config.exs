# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :lease,
  ecto_repos: [Lease.Repo]

# Configures the endpoint
config :lease, LeaseWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "AKS7W9poRtFrKkFr34D1PrhfieZba0Eklj1RHwAp3CraPr7CPD7IQixw7zUCD8JV",
  render_errors: [view: LeaseWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Lease.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

config :addict,
  secret_key: "2432622431322479316251772e5435567a4d734b445767356d4d597475",
  extra_validation: fn ({valid, errors}, user_params) -> {valid, errors} end, # define extra validation here
  user_schema: Lease.Accounts.User,
  repo: Lease.Repo,
  from_email: "no-reply@example.com", # CHANGE THIS
  mailgun_domain: "",
  mailgun_key: "",
  mail_service: :mailgun
