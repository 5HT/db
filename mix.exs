defmodule DB.Mixfile do
  use Mix.Project

  def project() do
    [
      app: :db,
      version: "4.6.0",
      elixir: "~> 1.7",
      description: "DB Database Abstraction",
      package: package(),
      deps: deps()
    ]
  end

  def package do
    [
      files: ~w(doc mix.exs LICENSE),
      licenses: ["ISC"],
      maintainers: ["Namdak Tonpa"],
      name: :db,
      links: %{"GitHub" => "https://github.com/enterprizing/db"}
    ]
  end

  def application() do
    [mod: {:db, []}]
  end

  def deps() do
    [
      {:kvs, "~> 6.6"},
      {:ex_doc, "~> 0.11", only: :dev}
    ]
  end
end
