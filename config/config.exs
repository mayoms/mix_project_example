# This file is responsible for configuring your umbrella
# and **all applications** and their dependencies with the
# help of the Config module.
#
# Note that all applications in your umbrella share the
# same configuration and dependencies, which is why they
# all use the same configuration file. If you want different
# configurations or dependencies per app, it is best to
# move said applications out of the umbrella.
import Config

config :widgets_api, ecto_repos: [Widgets.Repo]

config :widgets_api, Widgets.Repo,
  database: "widgets_api",
  hostname: "localhost"

config :widgets_api, Oban,
  repo: Widgets.Repo,
  plugins: [Oban.Plugins.Pruner],
  queues: [default: 10]

# Sample configuration:
#
#     config :logger, :console,
#       level: :info,
#       format: "$date $time [$level] $metadata$message\n",
#       metadata: [:user_id]
#
