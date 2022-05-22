# frozen_string_literal: true

require 'spec_helper'
require 'mega_lotto/drawing'

module MegaLotto
  RSpec.describe Drawing do
    describe '#draw' do
      let(:draw) { MegaLotto::Drawing.new.draw }

      it 'returns an array' do
        expect(draw).to be_a(Array)
      end

      it 'returns an array with 5 elements' do
        expect(draw.length).to eq(6)
      end

      it 'each element is an integer' do
        draw.each do |num|
          expect(num).to be_a(Integer)
        end
      end
      it 'each element is less than 60' do
        draw.each do |num|
          expect(num).to be < 60
        end
      end
    end
  end
end
