[![Build Status](https://travis-ci.com/smalls12/libyang-crystal.svg?token=tr4L2muJGExjHv772Sdt&branch=master)](https://travis-ci.com/smalls12/libyang-crystal)

# libyang-crystal

These are crystal bindings for the [libyang](https://github.com/CESNET/libyang.git) library.

The bindings themselves are heavily based on the CPP bindings located in the same repo.

The main goal for creating these bindings was to support [sysrepo](https://github.com/sysrepo/sysrepo.git) and its accompanying [sysreop-crystal](https://github.com/smalls12/sysrepo-crystal.git) bindings.

These bindings can however stand on their own and be used to other projects requiring YANG support.

These bindings are not meant to be exhaustive but rather a blueprint for expansion if need be.

## Installation

1. Add the dependency to your `shard.yml`:

   ```yaml
   dependencies:
     libyang-crystal:
       github: smalls12/libyang-crystal
   ```

2. Run `shards install`

## Usage

```crystal
require "libyang-crystal"
```

TODO: Write usage instructions here

## Contributing

1. Fork it (<https://github.com/your-github-user/libyang-crystal/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [smalls12](https://github.com/smalls12) - creator and maintainer
