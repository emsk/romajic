require 'simplecov'
SimpleCov.start do
  add_filter '/spec/'
end

if ENV['CI'] == 'true'
  require 'codecov'
  SimpleCov.formatter = SimpleCov::Formatter::Codecov
end

require 'rainbow'
Rainbow.enabled = false

$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'romajic'
