use Mix.Config

config :tunnel, Tunnel.Endpoint,
  http: [port: {:system, "PORT"}],
  url: [scheme: "https", host: "intense-escarpment-87674.herokuapp.com", port: 443],
  force_ssl: [rewrite_on: [:x_forwarded_proto]],
  cache_static_manifest: "priv/static/manifest.json",
  secret_key_base: System.get_env("SECRET_KEY_BASE")

config :logger, level: :info
