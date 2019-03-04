# AV -- an audio/video suite for Crystal
### Built on bindings to LibAV

LibAV provides a massive suite of tools for editing, transcoding, and muxing of
audio, video, and other media files. This **work in progress** library aims to
be an interface through the Crystal programming language to those features.

## Current state:
Bindings have been created in general. No wrappers, convenience methods, or
other features exist yet.

## Installation

1. Add the dependency to your `shard.yml`:

   ```yaml
   dependencies:
     avcodec:
       github: your-github-user/avcodec
   ```

2. Run `shards install`

## Usage

```crystal
require "avcodec"
```

TODO: Write usage instructions here

## Development

TODO: Write development instructions here

## Contributing

1. Fork it (<https://github.com/your-github-user/avcodec/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [D. Scott Boggs](https://github.com/dscottboggs) - creator and maintainer
