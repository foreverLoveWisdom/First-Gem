# frozen_string_literal: true

require 'spec_helper'
require 'mega_lotto/configuration'

module MegaLotto
  RSpec.describe Configuration do
    let!(:configuration) { Configuration.new }
    let!(:set_drawing_count) { configuration.drawing_count = 5 }

    describe '#drawing_count=' do
      it 'can set drawing_count value' do
        expect(set_drawing_count).to eq(5)
      end
    end

    describe '#drawing_count' do
      it 'can fetch drawing_count' do
        expect(configuration.drawing_count).to eq(5)
      end
    end
  end
end
