# web: elixir --erl "-proto_dist epmdless -start_epmd false -epmd_module epmdless_epmd_client -setcookie $BEAM_COOKIE" --name $(echo $DYNO | sed -e 's/\.//')@127.0.0.1 -S mix phoenix.server --no-halt
web: MIX_ENV=prod mix phoenix.server
