# Bfsp

**TODO: Add description**

## Update bfsp.internal.pb.ex
`nix shell nixpkgs#protoc-gen-elixir --command protoc --elixir_out=./lib ~/Projects/bbfs/bfsp/src/bfsp.internal.proto -I ~/Projects/bbfs/bfsp/src/`

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `bfsp` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:bfsp, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at <https://hexdocs.pm/bfsp>.

