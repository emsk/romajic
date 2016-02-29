require 'spec_helper'

describe RomajiCop::Config do
  let(:config_dir_path) { '/path/to' }
  let(:config_file_path) { "#{config_dir_path}/config.yml" }
  let(:options) { { config: config_file_path } }
  let(:config) { described_class.new(options) }
  let(:root_dir) { '/path/to/dir' }
  let(:extensions) { %w(rb java) }
  let(:exclusion_words) { %w(class const) }
  let(:target_words) { %w(ikkonzome matcha) }
  let(:config_hash) do
    {
      'root_dir'        => root_dir,
      'extensions'      => extensions,
      'exclusion_words' => exclusion_words,
      'target_words'    => target_words
    }
  end

  describe '.new' do
    context 'given valid config_file_path' do
      before do
        expect(YAML).to receive(:load_file).and_return(config_hash)
      end

      subject { config }

      it { is_expected.to be_a described_class }
      it { is_expected.to respond_to(:exclusion_words) }
      it { is_expected.not_to respond_to(:exclusion_words=) }
      it { is_expected.to respond_to(:target_words) }
      it { is_expected.not_to respond_to(:target_words=) }
      it { is_expected.to respond_to(:target_file_pattern) }
      it { is_expected.to respond_to(:exclusion_word?) }
    end

    context 'given invalid config_file_path' do
      subject { lambda { config } }
      it { is_expected.to raise_error(Errno::ENOENT, /No such file or directory( @ rb_sysopen)? - #{config_file_path}/) }
    end
  end

  describe '#target_words' do
    before do
      allow(YAML).to receive(:load_file).and_return(config_hash)
    end

    subject { config.target_words }

    context 'when options[:word] is nil' do
      context "when configs['target_words'] is not nil" do
        it { is_expected.to eq target_words }
      end

      context "when configs['target_words'] is nil" do
        let(:target_words) { nil }
        it { is_expected.to eq [] }
      end
    end

    context 'when options[:word] is not nil' do
      context "when configs['target_words'] is not nil" do
        let(:option_word) { 'IKKONZOME' }
        let(:options) do
          {
            word: option_word,
            config: config_file_path
          }
        end

        it { is_expected.to eq [option_word] }
      end
    end
  end

  describe '#exclusion_words' do
    before do
      allow(YAML).to receive(:load_file).and_return(config_hash)
    end

    subject { config.exclusion_words }

    context "when configs['exclusion_words'] is not nil" do
      it { is_expected.to eq exclusion_words }
    end

    context "when configs['exclusion_words'] is nil" do
      let(:exclusion_words) { nil }
      it { is_expected.to eq [] }
    end
  end

  describe '#target_file_pattern' do
    before do
      allow(YAML).to receive(:load_file).and_return(config_hash)
    end

    subject { config.target_file_pattern }

    context 'when options[:dir] is nil' do
      context "when configs['root_dir'] is not nil" do
        context "when configs['extensions'] is nil" do
          let(:extensions) { nil }
          let(:expanded_path) { '/path/to/expand/dir' }

          before do
            expect(File).to receive(:expand_path).with(root_dir, config_dir_path).and_return(expanded_path)
          end

          it { is_expected.to eq "#{expanded_path}/**/*" }
        end
      end
    end

    context 'when options[:dir] is not nil' do
      context "when configs['root_dir'] is not nil" do
        context "when configs['extensions'] is nil" do
          let(:extensions) { nil }
          let(:expanded_path) { '/path/to/expand/dir' }
          let(:option_dir) { '/path/to/option/dir' }
          let(:options) do
            {
              config: config_file_path,
              dir: option_dir
            }
          end

          before do
            expect(File).to receive(:expand_path).with(option_dir).and_return(expanded_path)
          end

          it { is_expected.to eq "#{expanded_path}/**/*" }
        end
      end
    end

    context 'when options[:extensions] is nil' do
      context "when configs['root_dir'] is not nil" do
        let(:expanded_path) { '/path/to/expand/dir' }

        before do
          expect(File).to receive(:expand_path).with(root_dir, config_dir_path).and_return(expanded_path)
        end

        context "when configs['extensions'] is not nil" do
          it { is_expected.to eq "#{expanded_path}/**/*.{#{extensions.join(',')}}" }
        end

        context "when configs['extensions'] is nil" do
          let(:extensions) { nil }

          it { is_expected.to eq "#{expanded_path}/**/*" }
        end
      end

      context "when configs['root_dir'] is nil" do
        context "when configs['extensions'] is not nil" do
          let(:root_dir) { nil }
          let(:expanded_path) { '/path/to/run/dir' }

          before do
            expect(File).to receive(:expand_path).with('.').and_return(expanded_path)
          end

          it { is_expected.to eq "#{expanded_path}/**/*.{#{extensions.join(',')}}" }
        end
      end
    end

    context 'when options[:extensions] is not nil' do
      context "when configs['extensions'] is not nil" do
        let(:expanded_path) { '/path/to/expand/dir' }
        let(:option_extensions) { 'css,js' }
        let(:options) do
          {
            config: config_file_path,
            extensions: option_extensions
          }
        end

        before do
          expect(File).to receive(:expand_path).with(root_dir, config_dir_path).and_return(expanded_path)
        end

        it { is_expected.to eq "#{expanded_path}/**/*.{#{option_extensions}}" }
      end
    end
  end

  describe '#exclusion_word?' do
    before do
      allow(YAML).to receive(:load_file).and_return(config_hash)
    end

    subject { config.exclusion_word?(word) }

    context 'given excluded word' do
      let(:word) { 'class' }
      it { is_expected.to be_truthy }
    end

    context 'given not excluded word' do
      let(:word) { 'klass' }
      it { is_expected.to be_falsey }
    end
  end
end
