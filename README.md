# Lockring
[![Build Status](https://img.shields.io/github/actions/workflow/status/ukchukx/lockring/ci.yml?branch=master)](https://github.com/ukchukx/lockring/actions) [![Hex.pm Version](https://img.shields.io/hexpm/v/lockring.svg)](https://hex.pm/packages/lockring) [![Documentation](https://img.shields.io/badge/docs-latest-blue.svg)](https://hexdocs.pm/lockring/)

Lockring is a mutex library for BEAM languages.

Use it when you need exclusive access to a single resource or
one of a pool of resources.

These resources can be static data or GenServers. In the latter case,
GenServer crashes are handled automatically, replacing the crashed server
and releasing its lock.

Lockring uses ETS tables and Erlang `:atomics` to coordinate locking,
providing high scalability without the bottleneck and message-passing
overhead of a GenServer-based system.

## Installation

```elixir
def deps do
  [
    {:lockring, "~> 0.1.0"}
  ]
end
```

