# frozen_string_literal: true

module MegaLotto
  # Drawing business logic
  class Drawing
    attr_accessor :configuration

    def initialize(configuration = nil)
      @configuration = configuration if configuration
    end

    def draw
      Array.new(drawing_count) { single_random_draw }
    end

    private

    def drawing_count
      configuration&.drawing_count || MegaLotto.configuration.drawing_count
    end

    def single_random_draw
      rand(1..60)
    end
  end
end
