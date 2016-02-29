require 'spec_helper'

describe RomajiCop::CLI do
  let(:cli) { described_class.new }

  describe '#search' do
    let(:cop_mock) { instance_double('cop', search: nil) }

    before do
      expect(RomajiCop::Cop).to receive(:new).with(options).and_return(cop_mock)
    end

    context 'given word' do
      let(:word) { 'IKKONZOME' }
      let(:options) do
        {
          word: word,
          config: '/path/to/config.yml'
        }
      end

      subject { lambda { cli.invoke(:search, [word], options) } }
      it { is_expected.not_to output.to_stdout }
    end

    context 'given no options' do
      let(:config_file_path) { '/path/to/default.yml' }
      let(:options) { { config: config_file_path } }

      before do
        expect(File).to receive(:expand_path).with('../../../default.yml', anything).and_return(config_file_path)
      end

      subject { lambda { cli.search } }
      it { is_expected.not_to output.to_stdout }
    end

    context 'given --config option' do
      let(:options) { { config: '/path/to/config.yml' } }

      subject { lambda { cli.invoke(:search, [], options) } }
      it { is_expected.not_to output.to_stdout }
    end

    context 'given --dir option' do
      let(:options) do
        {
          config: '/path/to/config.yml',
          dir: '/path/to/dir'
        }
      end

      subject { lambda { cli.invoke(:search, [], options) } }
      it { is_expected.not_to output.to_stdout }
    end

    context 'given --extensions option' do
      let(:options) do
        {
          config: '/path/to/config.yml',
          extensions: 'css,java'
        }
      end

      subject { lambda { cli.invoke(:search, [], options) } }
      it { is_expected.not_to output.to_stdout }
    end
  end

  describe '#version' do
    subject { lambda { cli.version } }
    it { is_expected.to output("romaji_cop #{RomajiCop::VERSION}\n").to_stdout }
  end
end
