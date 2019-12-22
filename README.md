# HumanIDs

[![CircleCI](https://circleci.com/gh/tgrk/humanids/tree/master.svg?style=svg)](https://circleci.com/gh/tgrk/humanids/tree/master)
[![Hex pm](http://img.shields.io/hexpm/v/humanids.svg?style=flat)](https://hex.pm/packages/humanids)
[![Coverage Status](https://coveralls.io/repos/github/tgrk/humanids/badge.svg?branch=master)](https://coveralls.io/github/tgrk/humanids?branch=master)

Simple Elixir library that generates human-readable ids from a list of nouns and adjectives. It makes ids easy
for communication with other humans.

Examples:

- dinasaurs-gorillas-20
- swam-burst-48
- abbled-enthusiastically-98
- mongooses-ran-41
- glided-meerkat-98

Even that these ids are reasonably random, it is recommended not to use them as primary ids. Depending on your use-case.

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `humanids` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:humanids, "~> 0.1.0"}
  ]
end
```

## Benchmark

```bash
$ mix run benchmark/default.exs
Operating System: Linux
CPU Information: Intel(R) Core(TM) i7-7500U CPU @ 2.70GHz
Number of Available Cores: 4
Available memory: 15.43 GB
Elixir 1.9.0
Erlang 22.0

Benchmark suite executing with the following configuration:
warmup: 2 s
time: 5 s
memory time: 0 ns
parallel: 1
inputs: none specified
Estimated total run time: 21 s

Benchmarking Generate 10 ids...
Benchmarking Generate 100 ids...
Benchmarking Genrate 1000 ids...

Name                       ips        average  deviation         median         99th %
Generate 10 ids        1867.05        0.54 ms    ±25.69%        0.51 ms        1.14 ms
Generate 100 ids        188.21        5.31 ms    ±16.28%        5.11 ms        8.17 ms
Genrate 1000 ids         18.81       53.17 ms     ±3.92%       52.79 ms       59.77 ms

Comparison:
Generate 10 ids        1867.05
Generate 100 ids        188.21 - 9.92x slower +4.78 ms
Genrate 1000 ids         18.81 - 99.27x slower +52.63 ms

```
