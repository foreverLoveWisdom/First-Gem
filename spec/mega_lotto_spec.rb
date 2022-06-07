# frozen_string_literal: true

require_relative '../lib/mega_lotto/drawing'

RSpec.describe MegaLotto do
  it 'has a version number' do
    expect(MegaLotto::VERSION).not_to be nil
  end

  describe '.reset' do
    before(:each) do
      MegaLotto.configure do |config|
        config.drawing_count = 10
      end
    end

    it 'resets the configuration' do
      MegaLotto.reset
      config = MegaLotto.configuration
      expect(config.drawing_count).to eq(6)
    end
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

    after(:each) do
      MegaLotto.reset
    end
  end
end
