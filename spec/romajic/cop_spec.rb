require 'spec_helper'

describe Romajic::Cop do
  let(:options) do
    {
      word: 'IKKONZOME',
      exclude_word: 'MACCHA',
      config: '/path/to/config.yml',
      dir: '/path/to/dir',
      extensions: 'css,java',
      distance: 3,
      converter: 'hepburn'
    }
  end

  let(:cop) { described_class.new(options) }

  describe '.new' do
    before do
      expect(Romajic::Config).to receive(:new).with(options)
    end

    subject { cop }

    it { is_expected.to be_a described_class }
    it { is_expected.to respond_to(:search) }
  end

  describe '#search' do
    let(:target_words) { %w(IKKONZOME matcha) }
    let(:target_file_pattern) { './spec/examples/**/*.java' }

    let(:config_mock) do
      instance_double(
        'config',
        target_file_pattern: target_file_pattern,
        exclude_word?: false,
        target_words: target_words,
        distance: 3
      )
    end

    before do
      expect(Romajic::Config).to receive(:new).with(options).and_return(config_mock)
    end

    describe 'return value' do
      before do
        allow(cop).to receive(:puts)
      end

      subject { cop.search }
      it { is_expected.to be_nil }
    end

    describe 'lambda' do
      subject { -> { cop.search } }

      it { is_expected.to output(%r(IKONZOME -> #{target_words[0].downcase} @ ./spec/examples/Example1.java:5)).to_stdout }
      it { is_expected.to output(%r(MACCHA -> #{target_words[1].downcase} @ ./spec/examples/foo/Example2.java:6)).to_stdout }
      it { is_expected.to output(%r(MACCHA -> #{target_words[1].downcase} @ ./spec/examples/foo/Example3.JAVA:6)).to_stdout }

      context 'given options[:extensions]' do
        it { is_expected.not_to output(%r(MACCHA -> #{target_words[1].downcase} @ ./spec/examples/foo/Example4:3)).to_stdout }
      end

      context 'given no options[:extensions]' do
        let(:target_file_pattern) { './spec/examples/**/*' }
        it { is_expected.to output(%r(MACCHA -> #{target_words[1].downcase} @ ./spec/examples/foo/Example4:3)).to_stdout }
      end
    end
  end

  describe '#similar?' do
    let(:config_mock) { instance_double('config', distance: distance) }

    before do
      expect(Romajic::Config).to receive(:new).with(options).and_return(config_mock)
    end

    subject { cop.send(:similar?, 'AIUEO', 'AIUUU') }

    context 'when @config.distance is 0' do
      let(:distance) { 0 }
      it { is_expected.to be_falsey }
    end

    context 'when @config.distance is 1' do
      let(:distance) { 1 }
      it { is_expected.to be_falsey }
    end

    context 'when @config.distance is 2' do
      let(:distance) { 2 }
      it { is_expected.to be_truthy }
    end
  end
end
