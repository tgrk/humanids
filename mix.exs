defmodule HumanIDs.MixProject do
  use Mix.Project

  def project do
    [
      app: :humanids,
      description: description(),
      package: package(),
      version: "0.1.0",
      elixir: "~> 1.9",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      test_coverage: [tool: ExCoveralls]
    ]
  end

  def application, do: []

  defp deps do
    [
      {:credo, "~> 1.0", only: :dev},
      {:dialyxir, "~> 1.4.5", only: [:dev, :test], runtime: false},
      {:benchee, "~> 1.0", only: :dev},
      {:ex_doc, "~> 0.19", only: :dev},
      {:excoveralls, "~> 0.12.1", only: [:dev, :test]}
    ]
  end

  defp description() do
    """
    Generate Human Readable IDs
    """
  end

  defp package() do
    [
      files: [
        "lib",
        "LICENSE",
        "mix.exs",
        "README.md"
      ],
      maintainers: ["Martin Wiso"],
      licenses: ["Apache 2.0"],
      links: %{
        "GitHub" => "https://github.com/tgrk/humanids",
        "Issues" => "https://github.com/tgrk/humanids/issues"
      }
    ]
  end
end
