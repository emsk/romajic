require 'spec_helper'

describe RomajiCop::Cop do
  let(:config_file_path) { '/path/to/config.yml' }
  let(:cop) { described_class.new(config_file_path) }

  describe '.new' do
    before do
      expect(RomajiCop::Config).to receive(:new).with(config_file_path)
    end

    subject { cop }

    it { is_expected.to be_a described_class }
    it { is_expected.to respond_to(:search) }
  end

  describe '#search' do
    let(:target_words) { %w(IKKONZOME matcha) }

    let(:config_mock) do
      instance_double('config',
        target_file_pattern: './spec/examples/**/*.java',
        exclusion_word?: false,
        target_words: target_words)
    end

    before do
      expect(config_mock).to receive(:target_name?).with('Identifier').at_least(:once).and_return(true)
      expect(config_mock).to receive(:target_name?).with(anything).at_least(:once).and_return(false)
      expect(RomajiCop::Config).to receive(:new).with(config_file_path).and_return(config_mock)
    end

    subject { cop.search }
    it { is_expected.to be_nil }

    describe 'lambda' do
      subject { lambda { cop.search } }

      it { is_expected.to output(%r(IKONZOME -> #{target_words[0].downcase} @ ./spec/examples/Example1.java:5)).to_stdout }
      it { is_expected.to output(%r(MACCHA -> #{target_words[1].downcase} @ ./spec/examples/foo/Example2.java:6)).to_stdout }
    end
  end
end
