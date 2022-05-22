# frozen_string_literal: true

require 'mega_lotto/version'
require 'mega_lotto/configuration'

begin
  require 'pry-byebug'
rescue LoadError
end

module MegaLotto
  class Error < StandardError; end
  class << self
    attr_writer :configuration
  end

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.configure
    yield(configuration)
  end
end
