# frozen_string_literal: true

require 'pry-byebug'
require 'mega_lotto/version'
require 'mega_lotto/configuration'

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

  def self.reset
    @configuration = Configuration.new
  end
end
