# Romajic

[![Gem Version](https://badge.fury.io/rb/romajic.svg)](https://badge.fury.io/rb/romajic)
[![Build Status](https://travis-ci.org/emsk/romajic.svg?branch=master)](https://travis-ci.org/emsk/romajic)
[![Build status](https://ci.appveyor.com/api/projects/status/hmralky8g9v146qq?svg=true)](https://ci.appveyor.com/project/emsk/romajic)
[![Codecov](https://codecov.io/gh/emsk/romajic/branch/master/graph/badge.svg)](https://codecov.io/gh/emsk/romajic)
[![Code Climate](https://codeclimate.com/github/emsk/romajic/badges/gpa.svg)](https://codeclimate.com/github/emsk/romajic)
[![Inline docs](http://inch-ci.org/github/emsk/romajic.svg?branch=master)](http://inch-ci.org/github/emsk/romajic)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE.txt)

Automatic romaji spelling checker for programmer.

http://qiita.com/emsk/items/3e24628c220c825da709 (Japanese)

## Prerequisite

You have to install Ruby 2.0.0 or higher.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'romajic'
```

And then execute:

```sh
$ bundle
```

Or install it yourself as:

```sh
$ gem install romajic
```

## Usage

Search by hiragana text:

```sh
$ romajic search すし
SUSI -> sushi @ /usr/local/src/Example.java:5
sushiya -> sushi @ /usr/local/src/example.txt:2
```

Search by romaji text:

```sh
$ romajic search sushi
SUSI -> sushi @ /usr/local/src/Example.java:5
sushiya -> sushi @ /usr/local/src/example.txt:2
```

Generate a configuration file:

```sh
$ romajic --init
```

## Command Options

| Option | Description | Default |
| :----- | :---------- | :------ |
| `-e/--exclude-word` | Word to exclude. | |
| `-c/--config` | Path of configuration file. | `.romajic.yml` in the working directory |
| `-d/--dir` | Path of target directory. | The working directory |
| `-E/--extensions` | Comma-separated target extensions. | All extensions |
| `-D/--distance` | Levenshtein distance. | `3` |
| `-C/--converter` | Romaji converter, such as `hepburn`, `modified_hepburn`, `traditional_hepburn`, `nihon`, or `kunrei`. | `hepburn` |

## Configurations

The keys below are available in the configuration file.

| Key | Description | Type |
| :-- | :---------- | :--- |
| `target_words` | Target romaji. | Array |
| `exclude_words` | Words to exclude. | Array |
| `dir` | Path of target directory. | String |
| `extensions` | Target extensions. | Array |
| `distance` | Levenshtein distance. | Integer |
| `converter` | Romaji converter. | String |

## Documentation

http://www.rubydoc.info/gems/romajic

## Supported Ruby Versions

* Ruby 2.0.0
* Ruby 2.1
* Ruby 2.2
* Ruby 2.3
* Ruby 2.4
* Ruby 2.5

## Contributing

1. Fork it ( https://github.com/emsk/romajic/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Related

* [romajify](https://github.com/emsk/romajify) - Japanese romanization library for Ruby

## License

[MIT](LICENSE.txt)
