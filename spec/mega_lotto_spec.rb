# frozen_string_literal: true

require_relative '../lib/mega_lotto/drawing'

RSpec.describe MegaLotto do
  it 'has a version number' do
    expect(MegaLotto::VERSION).not_to be nil
  end

  describe '#configure' do
    before do
      MegaLotto.configure do |config|
        config.drawing_count = 10
      end
    end

    it 'returns an array with 10 numbers' do
      draw = MegaLotto::Drawing.new.draw
      expect(draw).to be_a(Array)
      expect(draw.size).to eq(10)
    end
  end
end
