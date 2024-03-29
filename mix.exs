defmodule MailSlurpAPI.Mixfile do
  use Mix.Project

def package do [ name: "mailslurp", licenses: ["MIT"], links: %{ "Homepage" => "https://www.mailslurp.com/developers/", "Documentation" => "https://github.com/mailslurp/mailslurp-client-elixir/" }, files: ~w(lib mix.exs README* LICENSE*)] end
  def project do
    [app: :mailslurp,
description: "Elixir Email API for MailSlurp", package: package(),
     version: "15.17.22",
     elixir: "~> 1.6",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    # Specify extra applications you'll use from Erlang/Elixir
    [extra_applications: [:logger]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:my_dep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:my_dep, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.3.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:tesla, "~> 1.2"},
{:ex_doc, "~> 0.24", only: :dev, runtime: false},
      {:poison, "~> 3.0"}
    ]
  end
end
