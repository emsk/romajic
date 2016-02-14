require 'simplecov'
SimpleCov.start do
  add_filter '/lib/romaji_cop/lexer/'
  add_filter '/spec/'
end

$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'romaji_cop'
