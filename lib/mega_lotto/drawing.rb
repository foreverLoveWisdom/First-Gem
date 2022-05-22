# frozen_string_literal: true

module MegaLotto
  # Drawing business logic
  class Drawing
    attr_accessor :drawing_count

    def draw
      Array.new(MegaLotto.configuration.drawing_count) { single_random_draw }
    end

    private

    def single_random_draw
      rand(1..60)
    end
  end
end
