# frozen_string_literal: true

require 'mega_lotto/version'

begin
  require 'pry-byebug'
rescue LoadError
end

module MegaLotto
  class Error < StandardError; end
end
