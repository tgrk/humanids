# Repository Guidelines

## Project Structure & Module Organization
`lib/` contains the public API and internal support modules. The current library surface is small: [`lib/humanids.ex`](/Users/wisom/Projects/personal/humanids/lib/humanids.ex:1) exposes ID generation, while [`lib/sequence.ex`](/Users/wisom/Projects/personal/humanids/lib/sequence.ex:1) holds the word lists and lookup helpers. `test/` contains ExUnit tests, `benchmark/default.exs` contains the Benchee benchmark, and `.github/workflows/` mirrors the checks expected in CI.

## Build, Test, and Development Commands
Run `mix deps.get` after cloning or when dependencies change. Use `mix test` for the local ExUnit suite. Run `mix format` before committing; CI also checks `mix format --check-formatted`. Use `mix coveralls` to inspect coverage locally and `mix dialyzer` for static analysis. For performance work, run `mix run benchmark/default.exs`.

## Coding Style & Naming Conventions
Follow standard Elixir style with 2-space indentation. Keep modules in `PascalCase` (`HumanIDs.Sequences`) and functions in `snake_case`. Prefer small, focused modules under `lib/` and keep the public API in `HumanIDs` stable. Formatting is handled by `mix format` with the `Styler` plugin from `.formatter.exs`; do not hand-format around it.

## Testing Guidelines
Tests use ExUnit and belong in `test/*_test.exs`. Name describe blocks after the function under test, for example `describe "generate/0" do`. Add or update tests for any public API or sequence-generation behavior change. If you alter output shape, randomness handling, or defaults, cover both the expected format and failure/regression cases.

## Commit & Pull Request Guidelines
Recent history favors short, imperative commits, often with prefixes such as `chore:` or dependency bump messages. Keep commits scoped to one change. Pull requests should summarize why the change is needed, note user-visible API effects, and list verification commands run locally, such as `mix test` or `mix dialyzer`. Link the related issue when one exists.

## Agent-Specific Notes
Do not revert unrelated workspace changes. Prefer minimal patches that preserve the library’s compact structure. Before closing work, verify the relevant command set for your change; for documentation-only edits, confirm the file renders cleanly and that examples match actual paths and commands in this repo.
