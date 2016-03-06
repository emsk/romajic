require 'spec_helper'

describe RomajiCop::Cop do
  let(:options) do
    {
      word: 'IKKONZOME',
      exclude_word: 'MACCHA',
      config: '/path/to/config.yml',
      dir: '/path/to/dir',
      extensions: 'css,java'
    }
  end

  let(:cop) { described_class.new(options) }

  describe '.new' do
    before do
      expect(RomajiCop::Config).to receive(:new).with(options)
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
        target_words: target_words
      )
    end

    before do
      expect(RomajiCop::Config).to receive(:new).with(options).and_return(config_mock)
    end

    subject { cop.search }
    it { is_expected.to be_nil }

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
end
