# coding: utf-8

require 'spec_helper'

describe Romajic::Config do
  let(:config_dir_path) { '/path/to' }
  let(:config_file_path) { "#{config_dir_path}/config.yml" }
  let(:options) { { config: config_file_path } }
  let(:config) { described_class.new(options) }
  let(:target_words) { %w(ikkonzome matcha) }
  let(:exclude_words) { %w(class const) }
  let(:distance) { 2 }
  let(:root_dir) { '/path/to/dir' }
  let(:extensions) { %w(rb java) }
  let(:converter) { 'hepburn' }
  let(:config_hash) do
    {
      'target_words'  => target_words,
      'exclude_words' => exclude_words,
      'root_dir'      => root_dir,
      'extensions'    => extensions,
      'distance'      => distance,
      'converter'     => converter
    }
  end

  describe '.new' do
    context 'given valid config_file_path' do
      before do
        expect(YAML).to receive(:load_file).and_return(config_hash)
      end

      subject { config }

      it { is_expected.to be_a described_class }
      it { is_expected.to respond_to(:target_words) }
      it { is_expected.not_to respond_to(:target_words=) }
      it { is_expected.to respond_to(:exclude_words) }
      it { is_expected.not_to respond_to(:exclude_words=) }
      it { is_expected.to respond_to(:distance) }
      it { is_expected.not_to respond_to(:distance=) }
      it { is_expected.to respond_to(:target_file_pattern) }
      it { is_expected.to respond_to(:exclude_word?) }

      context 'given invalid converter' do
        let(:converter) { 'invalid_converter' }

        subject { -> { config } }
        it { is_expected.to raise_error(Romajic::Error, "No such converter - #{converter}") }
      end
    end

    context 'given invalid config_file_path' do
      subject { -> { config } }
      it { is_expected.to raise_error(Romajic::Error, /No such file or directory( @ rb_sysopen)? - #{config_file_path}/) }
    end

    context 'given no config_file_path' do
      let(:options) { {} }

      subject { -> { config } }
      it { is_expected.not_to raise_error }
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

      context "when configs['target_words'] contains kana text" do
        let(:target_words) { %w(いっこんぞめ matcha まちづくり しんばし) }

        context 'when options[:converter] is nil' do
          context "when configs['converter'] is 'kunrei'" do
            let(:converter) { 'kunrei' }
            it { is_expected.to eq %w(ikkonzome matcha matizukuri sinbasi) } # Kunrei-shiki
          end

          context "when configs['converter'] is 'modified_hepburn'" do
            let(:converter) { 'modified_hepburn' }
            it { is_expected.to eq %w(ikkonzome matcha machizukuri shinbashi) } # Modified hepburn
          end

          context "when configs['converter'] is 'traditional_hepburn'" do
            let(:converter) { 'traditional_hepburn' }
            it { is_expected.to eq %w(ikkonzome matcha machizukuri shimbashi) } # Traditional hepburn
          end

          context "when configs['converter'] is nil" do
            let(:converter) { nil }
            it { is_expected.to eq %w(ikkonzome matcha machizukuri shinbashi) } # Modified hepburn
          end
        end

        context "when options[:converter] is 'nihon'" do
          let(:options) do
            {
              config: config_file_path,
              converter: 'nihon'
            }
          end

          context "when configs['converter'] is nil" do
            let(:converter) { nil }
            it { is_expected.to eq %w(ikkonzome matcha matidukuri sinbasi) } # Nihon-shiki
          end

          context "when configs['converter'] is 'kunrei'" do
            let(:converter) { 'kunrei' }
            it { is_expected.to eq %w(ikkonzome matcha matidukuri sinbasi) } # Nihon-shiki
          end
        end

        context 'when options[:converter] is :nihon' do
          let(:options) do
            {
              config: config_file_path,
              converter: :nihon
            }
          end

          context "when configs['converter'] is nil" do
            let(:converter) { nil }
            it { is_expected.to eq %w(ikkonzome matcha matidukuri sinbasi) } # Nihon-shiki
          end
        end
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

  describe '#exclude_words' do
    before do
      allow(YAML).to receive(:load_file).and_return(config_hash)
    end

    subject { config.exclude_words }

    context 'when options[:exclude_word] is nil' do
      context "when configs['exclude_words'] is not nil" do
        it { is_expected.to eq exclude_words }
      end

      context "when configs['exclude_words'] is nil" do
        let(:exclude_words) { nil }
        it { is_expected.to eq [] }
      end
    end

    context 'when options[:exclude_word] is not nil' do
      context "when configs['exclude_words'] is not nil" do
        let(:option_exclude_word) { 'MACCHA' }
        let(:options) do
          {
            exclude_word: option_exclude_word,
            config: config_file_path
          }
        end

        it { is_expected.to eq [option_exclude_word] }
      end
    end
  end

  describe '#distance' do
    before do
      allow(YAML).to receive(:load_file).and_return(config_hash)
    end

    subject { config.distance }

    context 'when options[:distance] is nil' do
      context "when configs['distance'] is not nil" do
        it { is_expected.to eq distance }
      end

      context "when configs['distance'] is nil" do
        let(:distance) { nil }
        it { is_expected.to eq 3 }
      end
    end

    context 'when options[:distance] is not nil' do
      context "when configs['distance'] is not nil" do
        let(:option_distance) { 1 }
        let(:options) do
          {
            config: config_file_path,
            distance: option_distance
          }
        end

        it { is_expected.to eq option_distance }
      end
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

  describe '#exclude_word?' do
    before do
      allow(YAML).to receive(:load_file).and_return(config_hash)
    end

    subject { config.exclude_word?(word) }

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
