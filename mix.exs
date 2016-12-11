defmodule EctoRethinkdb.Mixfile do
  use Mix.Project

  def project do
    [ app: :'ecto-rethinkdb',
      version: "0.0.1",
      elixir: "~> 1.3.4",
      deps: deps(Mix.env) ]
  end

  # Configuration for the OTP application
  def application do
    []
  end

  # Dependencies list:
  def deps(:prod) do
    [
      { :ecto, github: "elixir-lang/ecto" },
      { :rethinkdb, github: "azukiapp/elixir-rethinkdb" }
    ]
  end

  def deps(:docs) do
    deps(:prod) ++ [{ :ex_doc, github: "elixir-lang/ex_doc" }]
  end

  def deps(_) do
    deps(:prod)
  end
end
