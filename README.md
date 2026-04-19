# HumanIDs

[![Hex pm](https://img.shields.io/hexpm/v/humanids.svg?style=flat)](https://hex.pm/packages/humanids)
[![Hex Docs](https://img.shields.io/badge/hex-docs-lightgreen.svg)](https://hexdocs.pm/humanids/)
[![Build Status](https://github.com/tgrk/humanids/actions/workflows/elixir.yaml/badge.svg)](https://github.com/tgrk/humanids/actions/workflows/elixir.yaml)
[![Coverage Status](https://coveralls.io/repos/github/tgrk/humanids/badge.svg)](https://coveralls.io/github/tgrk/humanids)
[![License](https://img.shields.io/hexpm/l/humanids.svg)](LICENSE)

HumanIDs is a small Elixir library for generating human-readable IDs from random words plus a numeric suffix. The output is easier to read, say aloud, and share than opaque identifiers.

Examples:

- `nimble-otters-42`
- `curious-foxes-7`
- `jazzy-platypuses-100`

These IDs are human-friendly, not secure. Do not use them as your primary database key or as a security-sensitive token.

## Installation

Add `humanids` to your dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:humanids, "~> 0.2.0"}
  ]
end
```

Then fetch dependencies with:

```bash
mix deps.get
```

## Usage

Generate a default three-part ID:

```elixir
iex> HumanIDs.generate()
"nimble-otters-42"
```

Increase the total number of segments with `:segments`:

```elixir
iex> HumanIDs.generate(segments: 4)
"curious-gazelles-dragons-7"
```

By default, HumanIDs combines random words from built-in adjective and noun lists, then appends a number from `1` to `100`.

## Development

Install dependencies:

```bash
mix deps.get
```

Run the test suite:

```bash
mix test
```

Format, check coverage, and run static analysis:

```bash
mix format
mix coveralls
mix dialyzer
```

CI also enforces warning-free compilation and formatted code:

```bash
mix compile --warnings-as-errors
mix format --check-formatted
```

## Benchmarking

The repository includes a Benchee benchmark at [`benchmark/default.exs`](benchmark/default.exs). Run it with:

```bash
mix run benchmark/default.exs
```

## License

Released under the Apache 2.0 license. See [LICENSE](LICENSE).
