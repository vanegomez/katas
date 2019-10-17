require 'spec_helper'
require_relative '../lib/tribonacci'

describe Tribonacci do
  subject { Tribonacci.new(signature, length).sequence }

  describe 'sequence' do
    let(:signature) { [1,1,1] }

    context 'with length zero' do
      let(:length) { 0 }

      it 'returns an empty array' do
        expect(subject).to eq([])
      end
    end

    context 'with length one' do
      let(:length) { 1 }

      it 'returns an array of one ' do
        expect(subject).to eq([1])
      end
    end

    context 'with length 2' do
      let(:length) { 2 }

      it 'returns an array of one ' do
        expect(subject).to eq([1,1])
      end
    end

    context 'with length 3' do
      let(:length) { 3 }

      it 'returns an array of one ' do
        expect(subject).to eq([1,1,1])
      end
    end

    context 'with length over 3' do
      let(:length) { 4 }

      it 'returns an array of one ' do
        expect(subject).to eq([1,1,1,3])
      end
    end
  end
end 
