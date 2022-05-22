# frozen_string_literal: true

module MegaLotto
  class Configuration
    attr_writer :drawing_count

    def drawing_count
      @drawing_count ||= 6
    end
  end
end
