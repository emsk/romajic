describe Romajic::CLI do
  let(:cli) { described_class.new }

  describe '#execute' do
    context 'given no options' do
      before do
        expect(Romajic::Initializer).not_to receive(:copy_template)
      end

      subject { -> { cli.execute } }
      it { is_expected.not_to output.to_stdout }
    end

    context 'given --init option' do
      before do
        expect(Romajic::Initializer).to receive(:copy_template)
      end

      subject { -> { cli.invoke(:execute, [], init: true) } }
      it { is_expected.not_to output.to_stdout }
    end
  end

  describe '#search' do
    let(:cop_mock) { instance_double('cop', search: nil) }

    before do
      cop_options = options.dup
      cop_options[:config] = File.expand_path(options[:config]) if options[:config]
      expect(Romajic::Cop).to receive(:new).with(cop_options).and_return(cop_mock)
    end

    context 'given word' do
      let(:word) { 'IKKONZOME' }
      let(:options) do
        {
          word: word,
          config: '/path/to/config.yml'
        }
      end

      subject { -> { cli.invoke(:search, [word], options) } }
      it { is_expected.not_to output.to_stdout }
    end

    context 'given no options' do
      let(:config_file_path) { '/path/to/.romajic.yml' }
      let(:expanded_config_file_path) { File.expand_path(config_file_path) }

      before do
        expect(File).to receive(:expand_path).with('.romajic.yml').and_return(expanded_config_file_path)
        expect(FileTest).to receive(:exist?).with(expanded_config_file_path).and_return(config_file_exist)
      end

      context 'when default config file exists' do
        let(:options) { { config: config_file_path } }
        let(:config_file_exist) { true }

        subject { -> { cli.search } }
        it { is_expected.not_to output.to_stdout }
      end

      context 'when default config file does not exist' do
        let(:options) { {} }
        let(:config_file_exist) { false }

        subject { -> { cli.search } }
        it { is_expected.not_to output.to_stdout }
      end
    end

    context 'given --exclude-word option' do
      let(:options) do
        {
          exclude_word: 'MACCHA',
          config: '/path/to/config.yml'
        }
      end

      subject { -> { cli.invoke(:search, [], options) } }
      it { is_expected.not_to output.to_stdout }
    end

    context 'given --config option' do
      let(:options) { { config: '/path/to/config.yml' } }

      subject { -> { cli.invoke(:search, [], options) } }
      it { is_expected.not_to output.to_stdout }
    end

    context 'given --dir option' do
      let(:options) do
        {
          config: '/path/to/config.yml',
          dir: '/path/to/dir'
        }
      end

      subject { -> { cli.invoke(:search, [], options) } }
      it { is_expected.not_to output.to_stdout }
    end

    context 'given --extensions option' do
      let(:options) do
        {
          config: '/path/to/config.yml',
          extensions: 'css,java'
        }
      end

      subject { -> { cli.invoke(:search, [], options) } }
      it { is_expected.not_to output.to_stdout }
    end

    context 'given --distance option' do
      let(:options) do
        {
          config: '/path/to/config.yml',
          distance: 1
        }
      end

      subject { -> { cli.invoke(:search, [], options) } }
      it { is_expected.not_to output.to_stdout }
    end

    context 'given --converter option' do
      let(:options) do
        {
          config: '/path/to/config.yml',
          converter: 'nihon'
        }
      end

      subject { -> { cli.invoke(:search, [], options) } }
      it { is_expected.not_to output.to_stdout }
    end
  end

  describe '#version' do
    subject { -> { cli.version } }
    it { is_expected.to output("romajic #{Romajic::VERSION}\n").to_stdout }
  end
end
