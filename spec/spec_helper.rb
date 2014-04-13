require 'rack/test'

require File.expand_path('../../app.rb', __FILE__)

ENV['RACK_ENV'] = 'test'

module RSpecMixin
  include Rack::Test::Methods
  def app()
    App
  end
end

RSpec.configure do |c|
  c.include RSpecMixin

RSpec.configure do |config|
  config.color_enabled = true

  # Use color not only in STDOUT but also in pagers and files
  config.tty = true

  # Use the specified formatter
  config.formatter = :progress # :progress, :html, :textmate
  end
end

