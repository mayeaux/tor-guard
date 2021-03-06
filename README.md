Tor Guard [![Gem
Version](https://badge.fury.io/rb/tor-guard.svg)](https://badge.fury.io/rb/tor-guard)
=========

Easily identify IPs coming through the Tor network.

Installation
------------

```bash
$ gem install tor-guard
```

Usage
-----

The gem can either be used as an executable (`tg`) or required and used as a
library.

1. You can give the executable an IP address and it will respond with true or
   false

```bash
$ tg 108.56.199.13
```

Note, the executable will return a successful status code if the IP address is
an exit node. If it's not an exit node then the executable will return a non
successful exit node. This can be leveraged when scripting, for example:

```bash
$ tg 108.56.199.13 && echo "Yep, it's an exit node"
```

2. You can require the library and check within your own code.

```ruby
require 'tor-guard'

if TorGuard.exit_node?('108.56.199.13')
    puts "Yep, it's an exit node!"
end
```

The library can tweak the refresh interval. By default, the library will
refresh the internal list of exit nodes every 15 minutes. You can make the
interval shorter or longer by providing the desired number of seconds:

```ruby
TorGuard.configure do |config|
    config.refresh_interval = 60 # one minute
end
```

License
-------

See the [LICENSE](./LICENSE) file.
