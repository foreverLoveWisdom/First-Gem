# frozen_string_literal: true

module MegaLotto
  # Drawing business logic
  class Drawing
    def draw
      Array.new(6) { single_random_draw }
    end

    private

    def single_random_draw
      rand(1..60)
    end
  end
end
