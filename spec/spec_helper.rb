require 'simplecov'
require 'coveralls'
require 'rainbow'

SimpleCov.formatters = [
  SimpleCov::Formatter::HTMLFormatter,
  Coveralls::SimpleCov::Formatter
]

SimpleCov.start do
  add_filter '/spec/'
end

Rainbow.enabled = false

$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'romajic'
