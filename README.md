# music-text-normalization

A library for normalizing music related texts

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'music-text-normalization'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install music-text-normalization

## Usage

```ruby
include Music::Text::Normalization

normalize_artist_name('Run-D.M.C.') // => 'run_dmc'
```

## See Also

- http://labrosa.ee.columbia.edu/projects/musicsim/normalization.html

## Contributing

1. Fork it ( https://github.com/youpy/music-text-normalization/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
