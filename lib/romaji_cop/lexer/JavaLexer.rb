#!/usr/bin/env ruby
#
# Java.g
# --
# Generated using ANTLR version: 3.5
# Ruby runtime library version: 1.10.0
# Input grammar file: Java.g
# Generated at: 2016-02-14 01:06:10
#

# ~~~> start load path setup
this_directory = File.expand_path( File.dirname( __FILE__ ) )
$LOAD_PATH.unshift( this_directory ) unless $LOAD_PATH.include?( this_directory )

antlr_load_failed = proc do
  load_path = $LOAD_PATH.map { |dir| '  - ' << dir }.join( $/ )
  raise LoadError, <<-END.strip!

Failed to load the ANTLR3 runtime library (version 1.10.0):

Ensure the library has been installed on your system and is available
on the load path. If rubygems is available on your system, this can
be done with the command:

  gem install antlr3

Current load path:
#{ load_path }

  END
end

defined?( ANTLR3 ) or begin

  # 1: try to load the ruby antlr3 runtime library from the system path
  require 'antlr3'

rescue LoadError

  # 2: try to load rubygems if it isn't already loaded
  defined?( Gem ) or begin
    require 'rubygems'
  rescue LoadError
    antlr_load_failed.call
  end

  # 3: try to activate the antlr3 gem
  begin
    defined?( gem ) and gem( 'antlr3', '~> 1.10.0' )
  rescue Gem::LoadError
    antlr_load_failed.call
  end

  require 'antlr3'

end
# <~~~ end load path setup

module Java
  # TokenData defines all of the token type integer values
  # as constants, which will be included in all
  # ANTLR-generated recognizers.
  const_defined?( :TokenData ) or TokenData = ANTLR3::TokenScheme.new

  module TokenData

    # define the token constants
    define_tokens( :EOF => -1, :T__25 => 25, :T__26 => 26, :T__27 => 27, 
                   :T__28 => 28, :T__29 => 29, :T__30 => 30, :T__31 => 31, 
                   :T__32 => 32, :T__33 => 33, :T__34 => 34, :T__35 => 35, 
                   :T__36 => 36, :T__37 => 37, :T__38 => 38, :T__39 => 39, 
                   :T__40 => 40, :T__41 => 41, :T__42 => 42, :T__43 => 43, 
                   :T__44 => 44, :T__45 => 45, :T__46 => 46, :T__47 => 47, 
                   :T__48 => 48, :T__49 => 49, :T__50 => 50, :T__51 => 51, 
                   :T__52 => 52, :T__53 => 53, :T__54 => 54, :T__55 => 55, 
                   :T__56 => 56, :T__57 => 57, :T__58 => 58, :T__59 => 59, 
                   :T__60 => 60, :T__61 => 61, :T__62 => 62, :T__63 => 63, 
                   :T__64 => 64, :T__65 => 65, :T__66 => 66, :T__67 => 67, 
                   :T__68 => 68, :T__69 => 69, :T__70 => 70, :T__71 => 71, 
                   :T__72 => 72, :T__73 => 73, :T__74 => 74, :T__75 => 75, 
                   :T__76 => 76, :T__77 => 77, :T__78 => 78, :T__79 => 79, 
                   :T__80 => 80, :T__81 => 81, :T__82 => 82, :T__83 => 83, 
                   :T__84 => 84, :T__85 => 85, :T__86 => 86, :T__87 => 87, 
                   :T__88 => 88, :T__89 => 89, :T__90 => 90, :T__91 => 91, 
                   :T__92 => 92, :T__93 => 93, :T__94 => 94, :T__95 => 95, 
                   :T__96 => 96, :T__97 => 97, :T__98 => 98, :T__99 => 99, 
                   :T__100 => 100, :T__101 => 101, :T__102 => 102, :T__103 => 103, 
                   :T__104 => 104, :T__105 => 105, :T__106 => 106, :T__107 => 107, 
                   :T__108 => 108, :T__109 => 109, :T__110 => 110, :T__111 => 111, 
                   :T__112 => 112, :T__113 => 113, :ASSERT => 4, :COMMENT => 5, 
                   :CharacterLiteral => 6, :DecimalLiteral => 7, :ENUM => 8, 
                   :EscapeSequence => 9, :Exponent => 10, :FloatTypeSuffix => 11, 
                   :FloatingPointLiteral => 12, :HexDigit => 13, :HexLiteral => 14, 
                   :Identifier => 15, :IntegerTypeSuffix => 16, :JavaIDDigit => 17, 
                   :LINE_COMMENT => 18, :Letter => 19, :OctalEscape => 20, 
                   :OctalLiteral => 21, :StringLiteral => 22, :UnicodeEscape => 23, 
                   :WS => 24 )

  end


  class Lexer < ANTLR3::Lexer
    @grammar_home = Java
    include TokenData

    begin
      generated_using( "Java.g", "3.5", "1.10.0" )
    rescue NoMethodError => error
      # ignore
    end

    RULE_NAMES   = [ "T__25", "T__26", "T__27", "T__28", "T__29", "T__30", 
                     "T__31", "T__32", "T__33", "T__34", "T__35", "T__36", 
                     "T__37", "T__38", "T__39", "T__40", "T__41", "T__42", 
                     "T__43", "T__44", "T__45", "T__46", "T__47", "T__48", 
                     "T__49", "T__50", "T__51", "T__52", "T__53", "T__54", 
                     "T__55", "T__56", "T__57", "T__58", "T__59", "T__60", 
                     "T__61", "T__62", "T__63", "T__64", "T__65", "T__66", 
                     "T__67", "T__68", "T__69", "T__70", "T__71", "T__72", 
                     "T__73", "T__74", "T__75", "T__76", "T__77", "T__78", 
                     "T__79", "T__80", "T__81", "T__82", "T__83", "T__84", 
                     "T__85", "T__86", "T__87", "T__88", "T__89", "T__90", 
                     "T__91", "T__92", "T__93", "T__94", "T__95", "T__96", 
                     "T__97", "T__98", "T__99", "T__100", "T__101", "T__102", 
                     "T__103", "T__104", "T__105", "T__106", "T__107", "T__108", 
                     "T__109", "T__110", "T__111", "T__112", "T__113", "HexLiteral", 
                     "DecimalLiteral", "OctalLiteral", "HexDigit", "IntegerTypeSuffix", 
                     "FloatingPointLiteral", "Exponent", "FloatTypeSuffix", 
                     "CharacterLiteral", "StringLiteral", "EscapeSequence", 
                     "OctalEscape", "UnicodeEscape", "ENUM", "ASSERT", "Identifier", 
                     "Letter", "JavaIDDigit", "WS", "COMMENT", "LINE_COMMENT" ].freeze
    RULE_METHODS = [ :t__25!, :t__26!, :t__27!, :t__28!, :t__29!, :t__30!, 
                     :t__31!, :t__32!, :t__33!, :t__34!, :t__35!, :t__36!, 
                     :t__37!, :t__38!, :t__39!, :t__40!, :t__41!, :t__42!, 
                     :t__43!, :t__44!, :t__45!, :t__46!, :t__47!, :t__48!, 
                     :t__49!, :t__50!, :t__51!, :t__52!, :t__53!, :t__54!, 
                     :t__55!, :t__56!, :t__57!, :t__58!, :t__59!, :t__60!, 
                     :t__61!, :t__62!, :t__63!, :t__64!, :t__65!, :t__66!, 
                     :t__67!, :t__68!, :t__69!, :t__70!, :t__71!, :t__72!, 
                     :t__73!, :t__74!, :t__75!, :t__76!, :t__77!, :t__78!, 
                     :t__79!, :t__80!, :t__81!, :t__82!, :t__83!, :t__84!, 
                     :t__85!, :t__86!, :t__87!, :t__88!, :t__89!, :t__90!, 
                     :t__91!, :t__92!, :t__93!, :t__94!, :t__95!, :t__96!, 
                     :t__97!, :t__98!, :t__99!, :t__100!, :t__101!, :t__102!, 
                     :t__103!, :t__104!, :t__105!, :t__106!, :t__107!, :t__108!, 
                     :t__109!, :t__110!, :t__111!, :t__112!, :t__113!, :hex_literal!, 
                     :decimal_literal!, :octal_literal!, :hex_digit!, :integer_type_suffix!, 
                     :floating_point_literal!, :exponent!, :float_type_suffix!, 
                     :character_literal!, :string_literal!, :escape_sequence!, 
                     :octal_escape!, :unicode_escape!, :enum!, :assert!, 
                     :identifier!, :letter!, :java_id_digit!, :ws!, :comment!, 
                     :line_comment! ].freeze

    def initialize( input=nil, options = {} )
      super( input, options )
  # - - - - - - begin action @lexer::init - - - - - -
  # Java.g


  @enum_is_keyword = true
  @assert_is_keyword = true

  # - - - - - - end action @lexer::init - - - - - - -


    end

    # - - - - - - begin action @lexer::members - - - - - -
    # Java.g


    attr_reader :enum_is_keyword, :assert_is_keyword

    # - - - - - - end action @lexer::members - - - - - - -



    # - - - - - - - - - - - lexer rules - - - - - - - - - - - -
    # lexer rule t__25! (T__25)
    # (in Java.g)
    def t__25!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 1 )



      type = T__25
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 15:9: '!'
      match( 0x21 )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 1 )


    end

    # lexer rule t__26! (T__26)
    # (in Java.g)
    def t__26!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 2 )



      type = T__26
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 16:9: '!='
      match( "!=" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 2 )


    end

    # lexer rule t__27! (T__27)
    # (in Java.g)
    def t__27!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 3 )



      type = T__27
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 17:9: '%'
      match( 0x25 )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 3 )


    end

    # lexer rule t__28! (T__28)
    # (in Java.g)
    def t__28!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 4 )



      type = T__28
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 18:9: '%='
      match( "%=" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 4 )


    end

    # lexer rule t__29! (T__29)
    # (in Java.g)
    def t__29!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 5 )



      type = T__29
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 19:9: '&&'
      match( "&&" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 5 )


    end

    # lexer rule t__30! (T__30)
    # (in Java.g)
    def t__30!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 6 )



      type = T__30
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 20:9: '&'
      match( 0x26 )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 6 )


    end

    # lexer rule t__31! (T__31)
    # (in Java.g)
    def t__31!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 7 )



      type = T__31
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 21:9: '&='
      match( "&=" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 7 )


    end

    # lexer rule t__32! (T__32)
    # (in Java.g)
    def t__32!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 8 )



      type = T__32
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 22:9: '('
      match( 0x28 )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 8 )


    end

    # lexer rule t__33! (T__33)
    # (in Java.g)
    def t__33!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 9 )



      type = T__33
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 23:9: ')'
      match( 0x29 )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 9 )


    end

    # lexer rule t__34! (T__34)
    # (in Java.g)
    def t__34!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 10 )



      type = T__34
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 24:9: '*'
      match( 0x2a )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 10 )


    end

    # lexer rule t__35! (T__35)
    # (in Java.g)
    def t__35!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 11 )



      type = T__35
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 25:9: '*='
      match( "*=" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 11 )


    end

    # lexer rule t__36! (T__36)
    # (in Java.g)
    def t__36!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 12 )



      type = T__36
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 26:9: '+'
      match( 0x2b )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 12 )


    end

    # lexer rule t__37! (T__37)
    # (in Java.g)
    def t__37!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 13 )



      type = T__37
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 27:9: '++'
      match( "++" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 13 )


    end

    # lexer rule t__38! (T__38)
    # (in Java.g)
    def t__38!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 14 )



      type = T__38
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 28:9: '+='
      match( "+=" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 14 )


    end

    # lexer rule t__39! (T__39)
    # (in Java.g)
    def t__39!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 15 )



      type = T__39
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 29:9: ','
      match( 0x2c )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 15 )


    end

    # lexer rule t__40! (T__40)
    # (in Java.g)
    def t__40!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 16 )



      type = T__40
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 30:9: '-'
      match( 0x2d )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 16 )


    end

    # lexer rule t__41! (T__41)
    # (in Java.g)
    def t__41!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 17 )



      type = T__41
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 31:9: '--'
      match( "--" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 17 )


    end

    # lexer rule t__42! (T__42)
    # (in Java.g)
    def t__42!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 18 )



      type = T__42
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 32:9: '-='
      match( "-=" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 18 )


    end

    # lexer rule t__43! (T__43)
    # (in Java.g)
    def t__43!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 19 )



      type = T__43
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 33:9: '.'
      match( 0x2e )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 19 )


    end

    # lexer rule t__44! (T__44)
    # (in Java.g)
    def t__44!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 20 )



      type = T__44
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 34:9: '...'
      match( "..." )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 20 )


    end

    # lexer rule t__45! (T__45)
    # (in Java.g)
    def t__45!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 21 )



      type = T__45
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 35:9: '/'
      match( 0x2f )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 21 )


    end

    # lexer rule t__46! (T__46)
    # (in Java.g)
    def t__46!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 22 )



      type = T__46
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 36:9: '/='
      match( "/=" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 22 )


    end

    # lexer rule t__47! (T__47)
    # (in Java.g)
    def t__47!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 23 )



      type = T__47
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 37:9: ':'
      match( 0x3a )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 23 )


    end

    # lexer rule t__48! (T__48)
    # (in Java.g)
    def t__48!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 24 )



      type = T__48
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 38:9: ';'
      match( 0x3b )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 24 )


    end

    # lexer rule t__49! (T__49)
    # (in Java.g)
    def t__49!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 25 )



      type = T__49
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 39:9: '<'
      match( 0x3c )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 25 )


    end

    # lexer rule t__50! (T__50)
    # (in Java.g)
    def t__50!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 26 )



      type = T__50
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 40:9: '='
      match( 0x3d )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 26 )


    end

    # lexer rule t__51! (T__51)
    # (in Java.g)
    def t__51!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 27 )



      type = T__51
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 41:9: '=='
      match( "==" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 27 )


    end

    # lexer rule t__52! (T__52)
    # (in Java.g)
    def t__52!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 28 )



      type = T__52
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 42:9: '>'
      match( 0x3e )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 28 )


    end

    # lexer rule t__53! (T__53)
    # (in Java.g)
    def t__53!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 29 )



      type = T__53
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 43:9: '?'
      match( 0x3f )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 29 )


    end

    # lexer rule t__54! (T__54)
    # (in Java.g)
    def t__54!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 30 )



      type = T__54
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 44:9: '@'
      match( 0x40 )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 30 )


    end

    # lexer rule t__55! (T__55)
    # (in Java.g)
    def t__55!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 31 )



      type = T__55
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 45:9: '['
      match( 0x5b )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 31 )


    end

    # lexer rule t__56! (T__56)
    # (in Java.g)
    def t__56!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 32 )



      type = T__56
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 46:9: ']'
      match( 0x5d )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 32 )


    end

    # lexer rule t__57! (T__57)
    # (in Java.g)
    def t__57!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 33 )



      type = T__57
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 47:9: '^'
      match( 0x5e )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 33 )


    end

    # lexer rule t__58! (T__58)
    # (in Java.g)
    def t__58!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 34 )



      type = T__58
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 48:9: '^='
      match( "^=" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 34 )


    end

    # lexer rule t__59! (T__59)
    # (in Java.g)
    def t__59!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 35 )



      type = T__59
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 49:9: 'abstract'
      match( "abstract" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 35 )


    end

    # lexer rule t__60! (T__60)
    # (in Java.g)
    def t__60!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 36 )



      type = T__60
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 50:9: 'boolean'
      match( "boolean" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 36 )


    end

    # lexer rule t__61! (T__61)
    # (in Java.g)
    def t__61!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 37 )



      type = T__61
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 51:9: 'break'
      match( "break" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 37 )


    end

    # lexer rule t__62! (T__62)
    # (in Java.g)
    def t__62!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 38 )



      type = T__62
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 52:9: 'byte'
      match( "byte" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 38 )


    end

    # lexer rule t__63! (T__63)
    # (in Java.g)
    def t__63!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 39 )



      type = T__63
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 53:9: 'case'
      match( "case" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 39 )


    end

    # lexer rule t__64! (T__64)
    # (in Java.g)
    def t__64!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 40 )



      type = T__64
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 54:9: 'catch'
      match( "catch" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 40 )


    end

    # lexer rule t__65! (T__65)
    # (in Java.g)
    def t__65!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 41 )



      type = T__65
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 55:9: 'char'
      match( "char" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 41 )


    end

    # lexer rule t__66! (T__66)
    # (in Java.g)
    def t__66!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 42 )



      type = T__66
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 56:9: 'class'
      match( "class" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 42 )


    end

    # lexer rule t__67! (T__67)
    # (in Java.g)
    def t__67!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 43 )



      type = T__67
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 57:9: 'continue'
      match( "continue" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 43 )


    end

    # lexer rule t__68! (T__68)
    # (in Java.g)
    def t__68!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 44 )



      type = T__68
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 58:9: 'default'
      match( "default" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 44 )


    end

    # lexer rule t__69! (T__69)
    # (in Java.g)
    def t__69!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 45 )



      type = T__69
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 59:9: 'do'
      match( "do" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 45 )


    end

    # lexer rule t__70! (T__70)
    # (in Java.g)
    def t__70!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 46 )



      type = T__70
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 60:9: 'double'
      match( "double" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 46 )


    end

    # lexer rule t__71! (T__71)
    # (in Java.g)
    def t__71!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 47 )



      type = T__71
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 61:9: 'else'
      match( "else" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 47 )


    end

    # lexer rule t__72! (T__72)
    # (in Java.g)
    def t__72!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 48 )



      type = T__72
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 62:9: 'extends'
      match( "extends" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 48 )


    end

    # lexer rule t__73! (T__73)
    # (in Java.g)
    def t__73!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 49 )



      type = T__73
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 63:9: 'false'
      match( "false" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 49 )


    end

    # lexer rule t__74! (T__74)
    # (in Java.g)
    def t__74!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 50 )



      type = T__74
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 64:9: 'final'
      match( "final" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 50 )


    end

    # lexer rule t__75! (T__75)
    # (in Java.g)
    def t__75!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 51 )



      type = T__75
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 65:9: 'finally'
      match( "finally" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 51 )


    end

    # lexer rule t__76! (T__76)
    # (in Java.g)
    def t__76!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 52 )



      type = T__76
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 66:9: 'float'
      match( "float" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 52 )


    end

    # lexer rule t__77! (T__77)
    # (in Java.g)
    def t__77!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 53 )



      type = T__77
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 67:9: 'for'
      match( "for" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 53 )


    end

    # lexer rule t__78! (T__78)
    # (in Java.g)
    def t__78!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 54 )



      type = T__78
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 68:9: 'if'
      match( "if" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 54 )


    end

    # lexer rule t__79! (T__79)
    # (in Java.g)
    def t__79!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 55 )



      type = T__79
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 69:9: 'implements'
      match( "implements" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 55 )


    end

    # lexer rule t__80! (T__80)
    # (in Java.g)
    def t__80!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 56 )



      type = T__80
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 70:9: 'import'
      match( "import" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 56 )


    end

    # lexer rule t__81! (T__81)
    # (in Java.g)
    def t__81!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 57 )



      type = T__81
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 71:9: 'instanceof'
      match( "instanceof" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 57 )


    end

    # lexer rule t__82! (T__82)
    # (in Java.g)
    def t__82!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 58 )



      type = T__82
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 72:9: 'int'
      match( "int" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 58 )


    end

    # lexer rule t__83! (T__83)
    # (in Java.g)
    def t__83!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 59 )



      type = T__83
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 73:9: 'interface'
      match( "interface" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 59 )


    end

    # lexer rule t__84! (T__84)
    # (in Java.g)
    def t__84!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 60 )



      type = T__84
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 74:9: 'long'
      match( "long" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 60 )


    end

    # lexer rule t__85! (T__85)
    # (in Java.g)
    def t__85!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 61 )



      type = T__85
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 75:9: 'native'
      match( "native" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 61 )


    end

    # lexer rule t__86! (T__86)
    # (in Java.g)
    def t__86!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 62 )



      type = T__86
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 76:9: 'new'
      match( "new" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 62 )


    end

    # lexer rule t__87! (T__87)
    # (in Java.g)
    def t__87!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 63 )



      type = T__87
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 77:9: 'null'
      match( "null" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 63 )


    end

    # lexer rule t__88! (T__88)
    # (in Java.g)
    def t__88!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 64 )



      type = T__88
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 78:9: 'package'
      match( "package" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 64 )


    end

    # lexer rule t__89! (T__89)
    # (in Java.g)
    def t__89!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 65 )



      type = T__89
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 79:9: 'private'
      match( "private" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 65 )


    end

    # lexer rule t__90! (T__90)
    # (in Java.g)
    def t__90!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 66 )



      type = T__90
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 80:9: 'protected'
      match( "protected" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 66 )


    end

    # lexer rule t__91! (T__91)
    # (in Java.g)
    def t__91!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 67 )



      type = T__91
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 81:9: 'public'
      match( "public" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 67 )


    end

    # lexer rule t__92! (T__92)
    # (in Java.g)
    def t__92!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 68 )



      type = T__92
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 82:9: 'return'
      match( "return" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 68 )


    end

    # lexer rule t__93! (T__93)
    # (in Java.g)
    def t__93!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 69 )



      type = T__93
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 83:9: 'short'
      match( "short" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 69 )


    end

    # lexer rule t__94! (T__94)
    # (in Java.g)
    def t__94!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 70 )



      type = T__94
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 84:9: 'static'
      match( "static" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 70 )


    end

    # lexer rule t__95! (T__95)
    # (in Java.g)
    def t__95!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 71 )



      type = T__95
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 85:9: 'strictfp'
      match( "strictfp" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 71 )


    end

    # lexer rule t__96! (T__96)
    # (in Java.g)
    def t__96!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 72 )



      type = T__96
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 86:9: 'super'
      match( "super" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 72 )


    end

    # lexer rule t__97! (T__97)
    # (in Java.g)
    def t__97!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 73 )



      type = T__97
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 87:9: 'switch'
      match( "switch" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 73 )


    end

    # lexer rule t__98! (T__98)
    # (in Java.g)
    def t__98!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 74 )



      type = T__98
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 88:9: 'synchronized'
      match( "synchronized" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 74 )


    end

    # lexer rule t__99! (T__99)
    # (in Java.g)
    def t__99!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 75 )



      type = T__99
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 89:9: 'this'
      match( "this" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 75 )


    end

    # lexer rule t__100! (T__100)
    # (in Java.g)
    def t__100!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 76 )



      type = T__100
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 90:10: 'throw'
      match( "throw" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 76 )


    end

    # lexer rule t__101! (T__101)
    # (in Java.g)
    def t__101!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 77 )



      type = T__101
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 91:10: 'throws'
      match( "throws" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 77 )


    end

    # lexer rule t__102! (T__102)
    # (in Java.g)
    def t__102!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 78 )



      type = T__102
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 92:10: 'transient'
      match( "transient" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 78 )


    end

    # lexer rule t__103! (T__103)
    # (in Java.g)
    def t__103!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 79 )



      type = T__103
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 93:10: 'true'
      match( "true" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 79 )


    end

    # lexer rule t__104! (T__104)
    # (in Java.g)
    def t__104!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 80 )



      type = T__104
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 94:10: 'try'
      match( "try" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 80 )


    end

    # lexer rule t__105! (T__105)
    # (in Java.g)
    def t__105!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 81 )



      type = T__105
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 95:10: 'void'
      match( "void" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 81 )


    end

    # lexer rule t__106! (T__106)
    # (in Java.g)
    def t__106!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 82 )



      type = T__106
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 96:10: 'volatile'
      match( "volatile" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 82 )


    end

    # lexer rule t__107! (T__107)
    # (in Java.g)
    def t__107!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 83 )



      type = T__107
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 97:10: 'while'
      match( "while" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 83 )


    end

    # lexer rule t__108! (T__108)
    # (in Java.g)
    def t__108!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 84 )



      type = T__108
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 98:10: '{'
      match( 0x7b )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 84 )


    end

    # lexer rule t__109! (T__109)
    # (in Java.g)
    def t__109!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 85 )



      type = T__109
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 99:10: '|'
      match( 0x7c )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 85 )


    end

    # lexer rule t__110! (T__110)
    # (in Java.g)
    def t__110!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 86 )



      type = T__110
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 100:10: '|='
      match( "|=" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 86 )


    end

    # lexer rule t__111! (T__111)
    # (in Java.g)
    def t__111!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 87 )



      type = T__111
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 101:10: '||'
      match( "||" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 87 )


    end

    # lexer rule t__112! (T__112)
    # (in Java.g)
    def t__112!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 88 )



      type = T__112
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 102:10: '}'
      match( 0x7d )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 88 )


    end

    # lexer rule t__113! (T__113)
    # (in Java.g)
    def t__113!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 89 )



      type = T__113
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 103:10: '~'
      match( 0x7e )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 89 )


    end

    # lexer rule hex_literal! (HexLiteral)
    # (in Java.g)
    def hex_literal!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 90 )



      type = HexLiteral
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 913:14: '0' ( 'x' | 'X' ) ( HexDigit )+ ( IntegerTypeSuffix )?
      match( 0x30 )
      if @input.peek(1) == 0x58 || @input.peek(1) == 0x78
        @input.consume
      else
        mse = MismatchedSet( nil )
        recover mse
        raise mse

      end


      # at file 913:28: ( HexDigit )+
      match_count_1 = 0
      while true
        alt_1 = 2
        look_1_0 = @input.peek( 1 )

        if ( look_1_0.between?( 0x30, 0x39 ) || look_1_0.between?( 0x41, 0x46 ) || look_1_0.between?( 0x61, 0x66 ) )
          alt_1 = 1

        end
        case alt_1
        when 1
          # at line 
          if @input.peek( 1 ).between?( 0x30, 0x39 ) || @input.peek( 1 ).between?( 0x41, 0x46 ) || @input.peek( 1 ).between?( 0x61, 0x66 )
            @input.consume
          else
            mse = MismatchedSet( nil )
            recover mse
            raise mse

          end



        else
          match_count_1 > 0 and break
          eee = EarlyExit(1)


          raise eee
        end
        match_count_1 += 1
      end


      # at line 913:38: ( IntegerTypeSuffix )?
      alt_2 = 2
      look_2_0 = @input.peek( 1 )

      if ( look_2_0 == 0x4c || look_2_0 == 0x6c )
        alt_2 = 1
      end
      case alt_2
      when 1
        # at line 
        if @input.peek(1) == 0x4c || @input.peek(1) == 0x6c
          @input.consume
        else
          mse = MismatchedSet( nil )
          recover mse
          raise mse

        end



      end


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 90 )


    end

    # lexer rule decimal_literal! (DecimalLiteral)
    # (in Java.g)
    def decimal_literal!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 91 )



      type = DecimalLiteral
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 915:18: ( '0' | '1' .. '9' ( '0' .. '9' )* ) ( IntegerTypeSuffix )?
      # at line 915:18: ( '0' | '1' .. '9' ( '0' .. '9' )* )
      alt_4 = 2
      look_4_0 = @input.peek( 1 )

      if ( look_4_0 == 0x30 )
        alt_4 = 1
      elsif ( look_4_0.between?( 0x31, 0x39 ) )
        alt_4 = 2
      else
        raise NoViableAlternative( "", 4, 0 )

      end
      case alt_4
      when 1
        # at line 915:19: '0'
        match( 0x30 )

      when 2
        # at line 915:25: '1' .. '9' ( '0' .. '9' )*
        match_range( 0x31, 0x39 )
        # at line 915:34: ( '0' .. '9' )*
        while true # decision 3
          alt_3 = 2
          look_3_0 = @input.peek( 1 )

          if ( look_3_0.between?( 0x30, 0x39 ) )
            alt_3 = 1

          end
          case alt_3
          when 1
            # at line 
            if @input.peek( 1 ).between?( 0x30, 0x39 )
              @input.consume
            else
              mse = MismatchedSet( nil )
              recover mse
              raise mse

            end



          else
            break # out of loop for decision 3
          end
        end # loop for decision 3


      end
      # at line 915:45: ( IntegerTypeSuffix )?
      alt_5 = 2
      look_5_0 = @input.peek( 1 )

      if ( look_5_0 == 0x4c || look_5_0 == 0x6c )
        alt_5 = 1
      end
      case alt_5
      when 1
        # at line 
        if @input.peek(1) == 0x4c || @input.peek(1) == 0x6c
          @input.consume
        else
          mse = MismatchedSet( nil )
          recover mse
          raise mse

        end



      end


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 91 )


    end

    # lexer rule octal_literal! (OctalLiteral)
    # (in Java.g)
    def octal_literal!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 92 )



      type = OctalLiteral
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 917:16: '0' ( '0' .. '7' )+ ( IntegerTypeSuffix )?
      match( 0x30 )
      # at file 917:20: ( '0' .. '7' )+
      match_count_6 = 0
      while true
        alt_6 = 2
        look_6_0 = @input.peek( 1 )

        if ( look_6_0.between?( 0x30, 0x37 ) )
          alt_6 = 1

        end
        case alt_6
        when 1
          # at line 
          if @input.peek( 1 ).between?( 0x30, 0x37 )
            @input.consume
          else
            mse = MismatchedSet( nil )
            recover mse
            raise mse

          end



        else
          match_count_6 > 0 and break
          eee = EarlyExit(6)


          raise eee
        end
        match_count_6 += 1
      end


      # at line 917:32: ( IntegerTypeSuffix )?
      alt_7 = 2
      look_7_0 = @input.peek( 1 )

      if ( look_7_0 == 0x4c || look_7_0 == 0x6c )
        alt_7 = 1
      end
      case alt_7
      when 1
        # at line 
        if @input.peek(1) == 0x4c || @input.peek(1) == 0x6c
          @input.consume
        else
          mse = MismatchedSet( nil )
          recover mse
          raise mse

        end



      end


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 92 )


    end

    # lexer rule hex_digit! (HexDigit)
    # (in Java.g)
    def hex_digit!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 93 )


    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 
      if @input.peek( 1 ).between?( 0x30, 0x39 ) || @input.peek( 1 ).between?( 0x41, 0x46 ) || @input.peek( 1 ).between?( 0x61, 0x66 )
        @input.consume
      else
        mse = MismatchedSet( nil )
        recover mse
        raise mse

      end



    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 93 )


    end

    # lexer rule integer_type_suffix! (IntegerTypeSuffix)
    # (in Java.g)
    def integer_type_suffix!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 94 )


    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 
      if @input.peek(1) == 0x4c || @input.peek(1) == 0x6c
        @input.consume
      else
        mse = MismatchedSet( nil )
        recover mse
        raise mse

      end



    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 94 )


    end

    # lexer rule floating_point_literal! (FloatingPointLiteral)
    # (in Java.g)
    def floating_point_literal!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 95 )



      type = FloatingPointLiteral
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 926:5: ( ( '0' .. '9' )+ '.' ( '0' .. '9' )* ( Exponent )? ( FloatTypeSuffix )? | '.' ( '0' .. '9' )+ ( Exponent )? ( FloatTypeSuffix )? | ( '0' .. '9' )+ Exponent ( FloatTypeSuffix )? | ( '0' .. '9' )+ FloatTypeSuffix )
      alt_18 = 4
      alt_18 = @dfa18.predict( @input )
      case alt_18
      when 1
        # at line 926:9: ( '0' .. '9' )+ '.' ( '0' .. '9' )* ( Exponent )? ( FloatTypeSuffix )?
        # at file 926:9: ( '0' .. '9' )+
        match_count_8 = 0
        while true
          alt_8 = 2
          look_8_0 = @input.peek( 1 )

          if ( look_8_0.between?( 0x30, 0x39 ) )
            alt_8 = 1

          end
          case alt_8
          when 1
            # at line 
            if @input.peek( 1 ).between?( 0x30, 0x39 )
              @input.consume
            else
              mse = MismatchedSet( nil )
              recover mse
              raise mse

            end



          else
            match_count_8 > 0 and break
            eee = EarlyExit(8)


            raise eee
          end
          match_count_8 += 1
        end


        match( 0x2e )
        # at line 926:25: ( '0' .. '9' )*
        while true # decision 9
          alt_9 = 2
          look_9_0 = @input.peek( 1 )

          if ( look_9_0.between?( 0x30, 0x39 ) )
            alt_9 = 1

          end
          case alt_9
          when 1
            # at line 
            if @input.peek( 1 ).between?( 0x30, 0x39 )
              @input.consume
            else
              mse = MismatchedSet( nil )
              recover mse
              raise mse

            end



          else
            break # out of loop for decision 9
          end
        end # loop for decision 9

        # at line 926:37: ( Exponent )?
        alt_10 = 2
        look_10_0 = @input.peek( 1 )

        if ( look_10_0 == 0x45 || look_10_0 == 0x65 )
          alt_10 = 1
        end
        case alt_10
        when 1
          # at line 926:37: Exponent
          exponent!


        end
        # at line 926:47: ( FloatTypeSuffix )?
        alt_11 = 2
        look_11_0 = @input.peek( 1 )

        if ( look_11_0 == 0x44 || look_11_0 == 0x46 || look_11_0 == 0x64 || look_11_0 == 0x66 )
          alt_11 = 1
        end
        case alt_11
        when 1
          # at line 
          if @input.peek(1) == 0x44 || @input.peek(1) == 0x46 || @input.peek(1) == 0x64 || @input.peek(1) == 0x66
            @input.consume
          else
            mse = MismatchedSet( nil )
            recover mse
            raise mse

          end



        end

      when 2
        # at line 927:9: '.' ( '0' .. '9' )+ ( Exponent )? ( FloatTypeSuffix )?
        match( 0x2e )
        # at file 927:13: ( '0' .. '9' )+
        match_count_12 = 0
        while true
          alt_12 = 2
          look_12_0 = @input.peek( 1 )

          if ( look_12_0.between?( 0x30, 0x39 ) )
            alt_12 = 1

          end
          case alt_12
          when 1
            # at line 
            if @input.peek( 1 ).between?( 0x30, 0x39 )
              @input.consume
            else
              mse = MismatchedSet( nil )
              recover mse
              raise mse

            end



          else
            match_count_12 > 0 and break
            eee = EarlyExit(12)


            raise eee
          end
          match_count_12 += 1
        end


        # at line 927:25: ( Exponent )?
        alt_13 = 2
        look_13_0 = @input.peek( 1 )

        if ( look_13_0 == 0x45 || look_13_0 == 0x65 )
          alt_13 = 1
        end
        case alt_13
        when 1
          # at line 927:25: Exponent
          exponent!


        end
        # at line 927:35: ( FloatTypeSuffix )?
        alt_14 = 2
        look_14_0 = @input.peek( 1 )

        if ( look_14_0 == 0x44 || look_14_0 == 0x46 || look_14_0 == 0x64 || look_14_0 == 0x66 )
          alt_14 = 1
        end
        case alt_14
        when 1
          # at line 
          if @input.peek(1) == 0x44 || @input.peek(1) == 0x46 || @input.peek(1) == 0x64 || @input.peek(1) == 0x66
            @input.consume
          else
            mse = MismatchedSet( nil )
            recover mse
            raise mse

          end



        end

      when 3
        # at line 928:9: ( '0' .. '9' )+ Exponent ( FloatTypeSuffix )?
        # at file 928:9: ( '0' .. '9' )+
        match_count_15 = 0
        while true
          alt_15 = 2
          look_15_0 = @input.peek( 1 )

          if ( look_15_0.between?( 0x30, 0x39 ) )
            alt_15 = 1

          end
          case alt_15
          when 1
            # at line 
            if @input.peek( 1 ).between?( 0x30, 0x39 )
              @input.consume
            else
              mse = MismatchedSet( nil )
              recover mse
              raise mse

            end



          else
            match_count_15 > 0 and break
            eee = EarlyExit(15)


            raise eee
          end
          match_count_15 += 1
        end



        exponent!

        # at line 928:30: ( FloatTypeSuffix )?
        alt_16 = 2
        look_16_0 = @input.peek( 1 )

        if ( look_16_0 == 0x44 || look_16_0 == 0x46 || look_16_0 == 0x64 || look_16_0 == 0x66 )
          alt_16 = 1
        end
        case alt_16
        when 1
          # at line 
          if @input.peek(1) == 0x44 || @input.peek(1) == 0x46 || @input.peek(1) == 0x64 || @input.peek(1) == 0x66
            @input.consume
          else
            mse = MismatchedSet( nil )
            recover mse
            raise mse

          end



        end

      when 4
        # at line 929:9: ( '0' .. '9' )+ FloatTypeSuffix
        # at file 929:9: ( '0' .. '9' )+
        match_count_17 = 0
        while true
          alt_17 = 2
          look_17_0 = @input.peek( 1 )

          if ( look_17_0.between?( 0x30, 0x39 ) )
            alt_17 = 1

          end
          case alt_17
          when 1
            # at line 
            if @input.peek( 1 ).between?( 0x30, 0x39 )
              @input.consume
            else
              mse = MismatchedSet( nil )
              recover mse
              raise mse

            end



          else
            match_count_17 > 0 and break
            eee = EarlyExit(17)


            raise eee
          end
          match_count_17 += 1
        end



        float_type_suffix!


      end

      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 95 )


    end

    # lexer rule exponent! (Exponent)
    # (in Java.g)
    def exponent!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 96 )


    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 934:12: ( 'e' | 'E' ) ( '+' | '-' )? ( '0' .. '9' )+
      if @input.peek(1) == 0x45 || @input.peek(1) == 0x65
        @input.consume
      else
        mse = MismatchedSet( nil )
        recover mse
        raise mse

      end


      # at line 934:22: ( '+' | '-' )?
      alt_19 = 2
      look_19_0 = @input.peek( 1 )

      if ( look_19_0 == 0x2b || look_19_0 == 0x2d )
        alt_19 = 1
      end
      case alt_19
      when 1
        # at line 
        if @input.peek(1) == 0x2b || @input.peek(1) == 0x2d
          @input.consume
        else
          mse = MismatchedSet( nil )
          recover mse
          raise mse

        end



      end
      # at file 934:33: ( '0' .. '9' )+
      match_count_20 = 0
      while true
        alt_20 = 2
        look_20_0 = @input.peek( 1 )

        if ( look_20_0.between?( 0x30, 0x39 ) )
          alt_20 = 1

        end
        case alt_20
        when 1
          # at line 
          if @input.peek( 1 ).between?( 0x30, 0x39 )
            @input.consume
          else
            mse = MismatchedSet( nil )
            recover mse
            raise mse

          end



        else
          match_count_20 > 0 and break
          eee = EarlyExit(20)


          raise eee
        end
        match_count_20 += 1
      end



    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 96 )


    end

    # lexer rule float_type_suffix! (FloatTypeSuffix)
    # (in Java.g)
    def float_type_suffix!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 97 )


    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 
      if @input.peek(1) == 0x44 || @input.peek(1) == 0x46 || @input.peek(1) == 0x64 || @input.peek(1) == 0x66
        @input.consume
      else
        mse = MismatchedSet( nil )
        recover mse
        raise mse

      end



    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 97 )


    end

    # lexer rule character_literal! (CharacterLiteral)
    # (in Java.g)
    def character_literal!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 98 )



      type = CharacterLiteral
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 939:9: '\\'' ( EscapeSequence |~ ( '\\'' | '\\\\' ) ) '\\''
      match( 0x27 )
      # at line 939:14: ( EscapeSequence |~ ( '\\'' | '\\\\' ) )
      alt_21 = 2
      look_21_0 = @input.peek( 1 )

      if ( look_21_0 == 0x5c )
        alt_21 = 1
      elsif ( look_21_0.between?( 0x0, 0x26 ) || look_21_0.between?( 0x28, 0x5b ) || look_21_0.between?( 0x5d, 0xffff ) )
        alt_21 = 2
      else
        raise NoViableAlternative( "", 21, 0 )

      end
      case alt_21
      when 1
        # at line 939:16: EscapeSequence
        escape_sequence!


      when 2
        # at line 939:33: ~ ( '\\'' | '\\\\' )
        if @input.peek( 1 ).between?( 0x0, 0x26 ) || @input.peek( 1 ).between?( 0x28, 0x5b ) || @input.peek( 1 ).between?( 0x5d, 0xff )
          @input.consume
        else
          mse = MismatchedSet( nil )
          recover mse
          raise mse

        end



      end
      match( 0x27 )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 98 )


    end

    # lexer rule string_literal! (StringLiteral)
    # (in Java.g)
    def string_literal!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 99 )



      type = StringLiteral
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 943:8: '\"' ( EscapeSequence |~ ( '\\\\' | '\"' ) )* '\"'
      match( 0x22 )
      # at line 943:12: ( EscapeSequence |~ ( '\\\\' | '\"' ) )*
      while true # decision 22
        alt_22 = 3
        look_22_0 = @input.peek( 1 )

        if ( look_22_0 == 0x5c )
          alt_22 = 1
        elsif ( look_22_0.between?( 0x0, 0x21 ) || look_22_0.between?( 0x23, 0x5b ) || look_22_0.between?( 0x5d, 0xffff ) )
          alt_22 = 2

        end
        case alt_22
        when 1
          # at line 943:14: EscapeSequence
          escape_sequence!


        when 2
          # at line 943:31: ~ ( '\\\\' | '\"' )
          if @input.peek( 1 ).between?( 0x0, 0x21 ) || @input.peek( 1 ).between?( 0x23, 0x5b ) || @input.peek( 1 ).between?( 0x5d, 0xff )
            @input.consume
          else
            mse = MismatchedSet( nil )
            recover mse
            raise mse

          end



        else
          break # out of loop for decision 22
        end
      end # loop for decision 22

      match( 0x22 )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 99 )


    end

    # lexer rule escape_sequence! (EscapeSequence)
    # (in Java.g)
    def escape_sequence!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 100 )


    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 949:5: ( '\\\\' ( 'b' | 't' | 'n' | 'f' | 'r' | '\\\"' | '\\'' | '\\\\' ) | UnicodeEscape | OctalEscape )
      alt_23 = 3
      look_23_0 = @input.peek( 1 )

      if ( look_23_0 == 0x5c )
        case look_23 = @input.peek( 2 )
        when 0x22, 0x27, 0x5c, 0x62, 0x66, 0x6e, 0x72, 0x74 then alt_23 = 1
        when 0x75 then alt_23 = 2
        when 0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37 then alt_23 = 3
        else
          raise NoViableAlternative( "", 23, 1 )

        end
      else
        raise NoViableAlternative( "", 23, 0 )

      end
      case alt_23
      when 1
        # at line 949:9: '\\\\' ( 'b' | 't' | 'n' | 'f' | 'r' | '\\\"' | '\\'' | '\\\\' )
        match( 0x5c )
        if @input.peek(1) == 0x22 || @input.peek(1) == 0x27 || @input.peek(1) == 0x5c || @input.peek(1) == 0x62 || @input.peek(1) == 0x66 || @input.peek(1) == 0x6e || @input.peek(1) == 0x72 || @input.peek(1) == 0x74
          @input.consume
        else
          mse = MismatchedSet( nil )
          recover mse
          raise mse

        end



      when 2
        # at line 950:9: UnicodeEscape
        unicode_escape!


      when 3
        # at line 951:9: OctalEscape
        octal_escape!


      end
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 100 )


    end

    # lexer rule octal_escape! (OctalEscape)
    # (in Java.g)
    def octal_escape!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 101 )


    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 956:5: ( '\\\\' ( '0' .. '3' ) ( '0' .. '7' ) ( '0' .. '7' ) | '\\\\' ( '0' .. '7' ) ( '0' .. '7' ) | '\\\\' ( '0' .. '7' ) )
      alt_24 = 3
      look_24_0 = @input.peek( 1 )

      if ( look_24_0 == 0x5c )
        look_24_1 = @input.peek( 2 )

        if ( look_24_1.between?( 0x30, 0x33 ) )
          look_24_2 = @input.peek( 3 )

          if ( look_24_2.between?( 0x30, 0x37 ) )
            look_24_4 = @input.peek( 4 )

            if ( look_24_4.between?( 0x30, 0x37 ) )
              alt_24 = 1
            else
              alt_24 = 2

            end
          else
            alt_24 = 3

          end
        elsif ( look_24_1.between?( 0x34, 0x37 ) )
          look_24_3 = @input.peek( 3 )

          if ( look_24_3.between?( 0x30, 0x37 ) )
            alt_24 = 2
          else
            alt_24 = 3

          end
        else
          raise NoViableAlternative( "", 24, 1 )

        end
      else
        raise NoViableAlternative( "", 24, 0 )

      end
      case alt_24
      when 1
        # at line 956:9: '\\\\' ( '0' .. '3' ) ( '0' .. '7' ) ( '0' .. '7' )
        match( 0x5c )
        if @input.peek( 1 ).between?( 0x30, 0x33 )
          @input.consume
        else
          mse = MismatchedSet( nil )
          recover mse
          raise mse

        end


        if @input.peek( 1 ).between?( 0x30, 0x37 )
          @input.consume
        else
          mse = MismatchedSet( nil )
          recover mse
          raise mse

        end


        if @input.peek( 1 ).between?( 0x30, 0x37 )
          @input.consume
        else
          mse = MismatchedSet( nil )
          recover mse
          raise mse

        end



      when 2
        # at line 957:9: '\\\\' ( '0' .. '7' ) ( '0' .. '7' )
        match( 0x5c )
        if @input.peek( 1 ).between?( 0x30, 0x37 )
          @input.consume
        else
          mse = MismatchedSet( nil )
          recover mse
          raise mse

        end


        if @input.peek( 1 ).between?( 0x30, 0x37 )
          @input.consume
        else
          mse = MismatchedSet( nil )
          recover mse
          raise mse

        end



      when 3
        # at line 958:9: '\\\\' ( '0' .. '7' )
        match( 0x5c )
        if @input.peek( 1 ).between?( 0x30, 0x37 )
          @input.consume
        else
          mse = MismatchedSet( nil )
          recover mse
          raise mse

        end



      end
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 101 )


    end

    # lexer rule unicode_escape! (UnicodeEscape)
    # (in Java.g)
    def unicode_escape!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 102 )


    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 963:9: '\\\\' 'u' HexDigit HexDigit HexDigit HexDigit
      match( 0x5c )
      match( 0x75 )

      hex_digit!


      hex_digit!


      hex_digit!


      hex_digit!


    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 102 )


    end

    # lexer rule enum! (ENUM)
    # (in Java.g)
    def enum!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 103 )



      type = ENUM
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 965:9: 'enum'
      match( "enum" )


      # --> action
      @enum_is_keyword or type=Identifier
      # <-- action



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 103 )


    end

    # lexer rule assert! (ASSERT)
    # (in Java.g)
    def assert!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 104 )



      type = ASSERT
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 969:9: 'assert'
      match( "assert" )


      # --> action
      @assert_is_keyword or type=Identifier
      # <-- action



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 104 )


    end

    # lexer rule identifier! (Identifier)
    # (in Java.g)
    def identifier!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 105 )



      type = Identifier
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 973:9: Letter ( Letter | JavaIDDigit )*
      letter!

      # at line 973:16: ( Letter | JavaIDDigit )*
      while true # decision 25
        alt_25 = 2
        look_25_0 = @input.peek( 1 )

        if ( look_25_0 == 0x24 || look_25_0.between?( 0x30, 0x39 ) || look_25_0.between?( 0x41, 0x5a ) || look_25_0 == 0x5f || look_25_0.between?( 0x61, 0x7a ) || look_25_0.between?( 0xc0, 0xd6 ) || look_25_0.between?( 0xd8, 0xf6 ) || look_25_0.between?( 0xf8, 0x1fff ) || look_25_0.between?( 0x3040, 0x318f ) || look_25_0.between?( 0x3300, 0x337f ) || look_25_0.between?( 0x3400, 0x3d2d ) || look_25_0.between?( 0x4e00, 0x9fff ) || look_25_0.between?( 0xf900, 0xfaff ) )
          alt_25 = 1

        end
        case alt_25
        when 1
          # at line 
          if @input.peek(1) == 0x24 || @input.peek( 1 ).between?( 0x30, 0x39 ) || @input.peek( 1 ).between?( 0x41, 0x5a ) || @input.peek(1) == 0x5f || @input.peek( 1 ).between?( 0x61, 0x7a ) || @input.peek( 1 ).between?( 0xc0, 0xd6 ) || @input.peek( 1 ).between?( 0xd8, 0xf6 ) || @input.peek( 1 ).between?( 0xf8, 0x1fff ) || @input.peek( 1 ).between?( 0x3040, 0x318f ) || @input.peek( 1 ).between?( 0x3300, 0x337f ) || @input.peek( 1 ).between?( 0x3400, 0x3d2d ) || @input.peek( 1 ).between?( 0x4e00, 0x9fff ) || @input.peek( 1 ).between?( 0xf900, 0xfaff )
            @input.consume
          else
            mse = MismatchedSet( nil )
            recover mse
            raise mse

          end



        else
          break # out of loop for decision 25
        end
      end # loop for decision 25



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 105 )


    end

    # lexer rule letter! (Letter)
    # (in Java.g)
    def letter!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 106 )


    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 
      if @input.peek(1) == 0x24 || @input.peek( 1 ).between?( 0x41, 0x5a ) || @input.peek(1) == 0x5f || @input.peek( 1 ).between?( 0x61, 0x7a ) || @input.peek( 1 ).between?( 0xc0, 0xd6 ) || @input.peek( 1 ).between?( 0xd8, 0xf6 ) || @input.peek( 1 ).between?( 0xf8, 0x1fff ) || @input.peek( 1 ).between?( 0x3040, 0x318f ) || @input.peek( 1 ).between?( 0x3300, 0x337f ) || @input.peek( 1 ).between?( 0x3400, 0x3d2d ) || @input.peek( 1 ).between?( 0x4e00, 0x9fff ) || @input.peek( 1 ).between?( 0xf900, 0xfaff )
        @input.consume
      else
        mse = MismatchedSet( nil )
        recover mse
        raise mse

      end



    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 106 )


    end

    # lexer rule java_id_digit! (JavaIDDigit)
    # (in Java.g)
    def java_id_digit!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 107 )


    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 
      if @input.peek( 1 ).between?( 0x30, 0x39 ) || @input.peek( 1 ).between?( 0x660, 0x669 ) || @input.peek( 1 ).between?( 0x6f0, 0x6f9 ) || @input.peek( 1 ).between?( 0x966, 0x96f ) || @input.peek( 1 ).between?( 0x9e6, 0x9ef ) || @input.peek( 1 ).between?( 0xa66, 0xa6f ) || @input.peek( 1 ).between?( 0xae6, 0xaef ) || @input.peek( 1 ).between?( 0xb66, 0xb6f ) || @input.peek( 1 ).between?( 0xbe7, 0xbef ) || @input.peek( 1 ).between?( 0xc66, 0xc6f ) || @input.peek( 1 ).between?( 0xce6, 0xcef ) || @input.peek( 1 ).between?( 0xd66, 0xd6f ) || @input.peek( 1 ).between?( 0xe50, 0xe59 ) || @input.peek( 1 ).between?( 0xed0, 0xed9 ) || @input.peek( 1 ).between?( 0x1040, 0x1049 )
        @input.consume
      else
        mse = MismatchedSet( nil )
        recover mse
        raise mse

      end



    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 107 )


    end

    # lexer rule ws! (WS)
    # (in Java.g)
    def ws!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 108 )



      type = WS
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 1015:8: ( ' ' | '\\r' | '\\t' | '\\u000C' | '\\n' )
      if @input.peek( 1 ).between?( 0x9, 0xa ) || @input.peek( 1 ).between?( 0xc, 0xd ) || @input.peek(1) == 0x20
        @input.consume
      else
        mse = MismatchedSet( nil )
        recover mse
        raise mse

      end



      # --> action
      channel=HIDDEN;
      # <-- action



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 108 )


    end

    # lexer rule comment! (COMMENT)
    # (in Java.g)
    def comment!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 109 )



      type = COMMENT
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 1019:9: '/*' ( options {greedy=false; } : . )* '*/'
      match( "/*" )

      # at line 1019:14: ( options {greedy=false; } : . )*
      while true # decision 26
        alt_26 = 2
        look_26_0 = @input.peek( 1 )

        if ( look_26_0 == 0x2a )
          look_26_1 = @input.peek( 2 )

          if ( look_26_1 == 0x2f )
            alt_26 = 2
          elsif ( look_26_1.between?( 0x0, 0x2e ) || look_26_1.between?( 0x30, 0xffff ) )
            alt_26 = 1

          end
        elsif ( look_26_0.between?( 0x0, 0x29 ) || look_26_0.between?( 0x2b, 0xffff ) )
          alt_26 = 1

        end
        case alt_26
        when 1
          # at line 1019:42: .
          match_any

        else
          break # out of loop for decision 26
        end
      end # loop for decision 26


      match( "*/" )


      # --> action
      channel=HIDDEN;
      # <-- action



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 109 )


    end

    # lexer rule line_comment! (LINE_COMMENT)
    # (in Java.g)
    def line_comment!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 110 )



      type = LINE_COMMENT
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 1023:7: '//' (~ ( '\\n' | '\\r' ) )* ( '\\r' )? '\\n'
      match( "//" )

      # at line 1023:12: (~ ( '\\n' | '\\r' ) )*
      while true # decision 27
        alt_27 = 2
        look_27_0 = @input.peek( 1 )

        if ( look_27_0.between?( 0x0, 0x9 ) || look_27_0.between?( 0xb, 0xc ) || look_27_0.between?( 0xe, 0xffff ) )
          alt_27 = 1

        end
        case alt_27
        when 1
          # at line 
          if @input.peek( 1 ).between?( 0x0, 0x9 ) || @input.peek( 1 ).between?( 0xb, 0xc ) || @input.peek( 1 ).between?( 0xe, 0xffff )
            @input.consume
          else
            mse = MismatchedSet( nil )
            recover mse
            raise mse

          end



        else
          break # out of loop for decision 27
        end
      end # loop for decision 27

      # at line 1023:26: ( '\\r' )?
      alt_28 = 2
      look_28_0 = @input.peek( 1 )

      if ( look_28_0 == 0xd )
        alt_28 = 1
      end
      case alt_28
      when 1
        # at line 1023:26: '\\r'
        match( 0xd )

      end
      match( 0xa )

      # --> action
      channel=HIDDEN;
      # <-- action



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 110 )


    end

    # main rule used to study the input at the current position,
    # and choose the proper lexer rule to call in order to
    # fetch the next token
    #
    # usually, you don't make direct calls to this method,
    # but instead use the next_token method, which will
    # build and emit the actual next token
    def token!
      # at line 1:8: ( T__25 | T__26 | T__27 | T__28 | T__29 | T__30 | T__31 | T__32 | T__33 | T__34 | T__35 | T__36 | T__37 | T__38 | T__39 | T__40 | T__41 | T__42 | T__43 | T__44 | T__45 | T__46 | T__47 | T__48 | T__49 | T__50 | T__51 | T__52 | T__53 | T__54 | T__55 | T__56 | T__57 | T__58 | T__59 | T__60 | T__61 | T__62 | T__63 | T__64 | T__65 | T__66 | T__67 | T__68 | T__69 | T__70 | T__71 | T__72 | T__73 | T__74 | T__75 | T__76 | T__77 | T__78 | T__79 | T__80 | T__81 | T__82 | T__83 | T__84 | T__85 | T__86 | T__87 | T__88 | T__89 | T__90 | T__91 | T__92 | T__93 | T__94 | T__95 | T__96 | T__97 | T__98 | T__99 | T__100 | T__101 | T__102 | T__103 | T__104 | T__105 | T__106 | T__107 | T__108 | T__109 | T__110 | T__111 | T__112 | T__113 | HexLiteral | DecimalLiteral | OctalLiteral | FloatingPointLiteral | CharacterLiteral | StringLiteral | ENUM | ASSERT | Identifier | WS | COMMENT | LINE_COMMENT )
      alt_29 = 101
      alt_29 = @dfa29.predict( @input )
      case alt_29
      when 1
        # at line 1:10: T__25
        t__25!


      when 2
        # at line 1:16: T__26
        t__26!


      when 3
        # at line 1:22: T__27
        t__27!


      when 4
        # at line 1:28: T__28
        t__28!


      when 5
        # at line 1:34: T__29
        t__29!


      when 6
        # at line 1:40: T__30
        t__30!


      when 7
        # at line 1:46: T__31
        t__31!


      when 8
        # at line 1:52: T__32
        t__32!


      when 9
        # at line 1:58: T__33
        t__33!


      when 10
        # at line 1:64: T__34
        t__34!


      when 11
        # at line 1:70: T__35
        t__35!


      when 12
        # at line 1:76: T__36
        t__36!


      when 13
        # at line 1:82: T__37
        t__37!


      when 14
        # at line 1:88: T__38
        t__38!


      when 15
        # at line 1:94: T__39
        t__39!


      when 16
        # at line 1:100: T__40
        t__40!


      when 17
        # at line 1:106: T__41
        t__41!


      when 18
        # at line 1:112: T__42
        t__42!


      when 19
        # at line 1:118: T__43
        t__43!


      when 20
        # at line 1:124: T__44
        t__44!


      when 21
        # at line 1:130: T__45
        t__45!


      when 22
        # at line 1:136: T__46
        t__46!


      when 23
        # at line 1:142: T__47
        t__47!


      when 24
        # at line 1:148: T__48
        t__48!


      when 25
        # at line 1:154: T__49
        t__49!


      when 26
        # at line 1:160: T__50
        t__50!


      when 27
        # at line 1:166: T__51
        t__51!


      when 28
        # at line 1:172: T__52
        t__52!


      when 29
        # at line 1:178: T__53
        t__53!


      when 30
        # at line 1:184: T__54
        t__54!


      when 31
        # at line 1:190: T__55
        t__55!


      when 32
        # at line 1:196: T__56
        t__56!


      when 33
        # at line 1:202: T__57
        t__57!


      when 34
        # at line 1:208: T__58
        t__58!


      when 35
        # at line 1:214: T__59
        t__59!


      when 36
        # at line 1:220: T__60
        t__60!


      when 37
        # at line 1:226: T__61
        t__61!


      when 38
        # at line 1:232: T__62
        t__62!


      when 39
        # at line 1:238: T__63
        t__63!


      when 40
        # at line 1:244: T__64
        t__64!


      when 41
        # at line 1:250: T__65
        t__65!


      when 42
        # at line 1:256: T__66
        t__66!


      when 43
        # at line 1:262: T__67
        t__67!


      when 44
        # at line 1:268: T__68
        t__68!


      when 45
        # at line 1:274: T__69
        t__69!


      when 46
        # at line 1:280: T__70
        t__70!


      when 47
        # at line 1:286: T__71
        t__71!


      when 48
        # at line 1:292: T__72
        t__72!


      when 49
        # at line 1:298: T__73
        t__73!


      when 50
        # at line 1:304: T__74
        t__74!


      when 51
        # at line 1:310: T__75
        t__75!


      when 52
        # at line 1:316: T__76
        t__76!


      when 53
        # at line 1:322: T__77
        t__77!


      when 54
        # at line 1:328: T__78
        t__78!


      when 55
        # at line 1:334: T__79
        t__79!


      when 56
        # at line 1:340: T__80
        t__80!


      when 57
        # at line 1:346: T__81
        t__81!


      when 58
        # at line 1:352: T__82
        t__82!


      when 59
        # at line 1:358: T__83
        t__83!


      when 60
        # at line 1:364: T__84
        t__84!


      when 61
        # at line 1:370: T__85
        t__85!


      when 62
        # at line 1:376: T__86
        t__86!


      when 63
        # at line 1:382: T__87
        t__87!


      when 64
        # at line 1:388: T__88
        t__88!


      when 65
        # at line 1:394: T__89
        t__89!


      when 66
        # at line 1:400: T__90
        t__90!


      when 67
        # at line 1:406: T__91
        t__91!


      when 68
        # at line 1:412: T__92
        t__92!


      when 69
        # at line 1:418: T__93
        t__93!


      when 70
        # at line 1:424: T__94
        t__94!


      when 71
        # at line 1:430: T__95
        t__95!


      when 72
        # at line 1:436: T__96
        t__96!


      when 73
        # at line 1:442: T__97
        t__97!


      when 74
        # at line 1:448: T__98
        t__98!


      when 75
        # at line 1:454: T__99
        t__99!


      when 76
        # at line 1:460: T__100
        t__100!


      when 77
        # at line 1:467: T__101
        t__101!


      when 78
        # at line 1:474: T__102
        t__102!


      when 79
        # at line 1:481: T__103
        t__103!


      when 80
        # at line 1:488: T__104
        t__104!


      when 81
        # at line 1:495: T__105
        t__105!


      when 82
        # at line 1:502: T__106
        t__106!


      when 83
        # at line 1:509: T__107
        t__107!


      when 84
        # at line 1:516: T__108
        t__108!


      when 85
        # at line 1:523: T__109
        t__109!


      when 86
        # at line 1:530: T__110
        t__110!


      when 87
        # at line 1:537: T__111
        t__111!


      when 88
        # at line 1:544: T__112
        t__112!


      when 89
        # at line 1:551: T__113
        t__113!


      when 90
        # at line 1:558: HexLiteral
        hex_literal!


      when 91
        # at line 1:569: DecimalLiteral
        decimal_literal!


      when 92
        # at line 1:584: OctalLiteral
        octal_literal!


      when 93
        # at line 1:597: FloatingPointLiteral
        floating_point_literal!


      when 94
        # at line 1:618: CharacterLiteral
        character_literal!


      when 95
        # at line 1:635: StringLiteral
        string_literal!


      when 96
        # at line 1:649: ENUM
        enum!


      when 97
        # at line 1:654: ASSERT
        assert!


      when 98
        # at line 1:661: Identifier
        identifier!


      when 99
        # at line 1:672: WS
        ws!


      when 100
        # at line 1:675: COMMENT
        comment!


      when 101
        # at line 1:683: LINE_COMMENT
        line_comment!


      end
    end


    # - - - - - - - - - - DFA definitions - - - - - - - - - - -
    class DFA18 < ANTLR3::DFA
      EOT = unpack( 6, -1 )
      EOF = unpack( 6, -1 )
      MIN = unpack( 2, 46, 4, -1 )
      MAX = unpack( 1, 57, 1, 102, 4, -1 )
      ACCEPT = unpack( 2, -1, 1, 2, 1, 1, 1, 3, 1, 4 )
      SPECIAL = unpack( 6, -1 )
      TRANSITION = [
        unpack( 1, 2, 1, -1, 10, 1 ),
        unpack( 1, 3, 1, -1, 10, 1, 10, -1, 1, 5, 1, 4, 1, 5, 29, -1, 1, 
                 5, 1, 4, 1, 5 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  )
      ].freeze

      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end

      @decision = 18


      def description
        <<-'__dfa_description__'.strip!
          925:1: FloatingPointLiteral : ( ( '0' .. '9' )+ '.' ( '0' .. '9' )* ( Exponent )? ( FloatTypeSuffix )? | '.' ( '0' .. '9' )+ ( Exponent )? ( FloatTypeSuffix )? | ( '0' .. '9' )+ Exponent ( FloatTypeSuffix )? | ( '0' .. '9' )+ FloatTypeSuffix );
        __dfa_description__
      end

    end
    class DFA29 < ANTLR3::DFA
      EOT = unpack( 1, -1, 1, 48, 1, 50, 1, 53, 2, -1, 1, 55, 1, 58, 1, 
                    -1, 1, 61, 1, 63, 1, 68, 3, -1, 1, 70, 5, -1, 1, 72, 
                    15, 45, 1, -1, 1, 113, 2, -1, 2, 115, 30, -1, 10, 45, 
                    1, 130, 7, 45, 1, 138, 19, 45, 5, -1, 1, 165, 1, 115, 
                    12, 45, 1, -1, 6, 45, 1, 184, 1, -1, 2, 45, 1, 189, 
                    2, 45, 1, 192, 16, 45, 1, 209, 3, 45, 1, -1, 4, 45, 
                    1, 217, 1, 218, 1, 45, 1, 220, 4, 45, 1, 225, 1, 45, 
                    1, 227, 3, 45, 1, -1, 4, 45, 1, -1, 1, 235, 1, 45, 1, 
                    -1, 1, 237, 11, 45, 1, 249, 2, 45, 1, 252, 1, -1, 1, 
                    253, 5, 45, 1, 259, 2, -1, 1, 260, 1, -1, 1, 261, 3, 
                    45, 1, -1, 1, 45, 1, -1, 1, 266, 1, 268, 1, 269, 4, 
                    45, 1, -1, 1, 45, 1, -1, 5, 45, 1, 280, 2, 45, 1, 283, 
                    2, 45, 1, -1, 1, 287, 1, 45, 2, -1, 1, 45, 1, 290, 1, 
                    45, 1, 292, 1, 45, 3, -1, 2, 45, 1, 296, 1, 45, 1, -1, 
                    1, 45, 2, -1, 1, 45, 1, 300, 2, 45, 1, 303, 3, 45, 1, 
                    307, 1, 308, 1, -1, 1, 309, 1, 45, 1, -1, 1, 311, 1, 
                    45, 1, 313, 1, -1, 2, 45, 1, -1, 1, 45, 1, -1, 1, 317, 
                    1, 45, 1, 319, 1, -1, 1, 320, 1, 321, 1, 45, 1, -1, 
                    2, 45, 1, -1, 1, 325, 1, 326, 1, 45, 3, -1, 1, 45, 1, 
                    -1, 1, 45, 1, -1, 2, 45, 1, 332, 1, -1, 1, 333, 3, -1, 
                    3, 45, 2, -1, 1, 45, 1, 338, 2, 45, 1, 341, 2, -1, 2, 
                    45, 1, 344, 1, 345, 1, -1, 1, 45, 1, 347, 1, -1, 1, 
                    348, 1, 349, 2, -1, 1, 45, 3, -1, 1, 45, 1, 352, 1, 
                    -1 )
      EOF = unpack( 353, -1 )
      MIN = unpack( 1, 9, 2, 61, 1, 38, 2, -1, 1, 61, 1, 43, 1, -1, 1, 45, 
                    1, 46, 1, 42, 3, -1, 1, 61, 5, -1, 1, 61, 1, 98, 1, 
                    111, 1, 97, 1, 101, 1, 108, 1, 97, 1, 102, 1, 111, 2, 
                    97, 1, 101, 2, 104, 1, 111, 1, 104, 1, -1, 1, 61, 2, 
                    -1, 2, 46, 30, -1, 2, 115, 1, 111, 1, 101, 1, 116, 1, 
                    115, 2, 97, 1, 110, 1, 102, 1, 36, 1, 115, 1, 116, 1, 
                    117, 1, 108, 1, 110, 1, 111, 1, 114, 1, 36, 1, 112, 
                    1, 115, 1, 110, 1, 116, 1, 119, 1, 108, 1, 99, 1, 105, 
                    1, 98, 1, 116, 1, 111, 1, 97, 1, 112, 1, 105, 1, 110, 
                    1, 105, 1, 97, 2, 105, 5, -1, 2, 46, 1, 116, 1, 101, 
                    1, 108, 1, 97, 2, 101, 1, 99, 1, 114, 1, 115, 1, 116, 
                    1, 97, 1, 98, 1, -1, 2, 101, 1, 109, 1, 115, 2, 97, 
                    1, 36, 1, -1, 1, 108, 1, 116, 1, 36, 1, 103, 1, 105, 
                    1, 36, 1, 108, 1, 107, 1, 118, 1, 116, 1, 108, 1, 117, 
                    1, 114, 1, 116, 1, 105, 1, 101, 1, 116, 1, 99, 1, 115, 
                    1, 111, 1, 110, 1, 101, 1, 36, 1, 100, 1, 97, 1, 108, 
                    1, -1, 2, 114, 1, 101, 1, 107, 2, 36, 1, 104, 1, 36, 
                    1, 115, 1, 105, 1, 117, 1, 108, 1, 36, 1, 110, 1, 36, 
                    1, 101, 1, 108, 1, 116, 1, -1, 1, 101, 1, 114, 1, 97, 
                    1, 114, 1, -1, 1, 36, 1, 118, 1, -1, 1, 36, 2, 97, 1, 
                    101, 1, 105, 1, 114, 1, 116, 1, 105, 1, 99, 1, 114, 
                    1, 99, 1, 104, 1, 36, 1, 119, 1, 115, 1, 36, 1, -1, 
                    1, 36, 1, 116, 1, 101, 1, 97, 1, 116, 1, 97, 1, 36, 
                    2, -1, 1, 36, 1, -1, 1, 36, 1, 110, 1, 108, 1, 101, 
                    1, -1, 1, 100, 1, -1, 3, 36, 1, 109, 1, 116, 1, 110, 
                    1, 102, 1, -1, 1, 101, 1, -1, 1, 103, 1, 116, 2, 99, 
                    1, 110, 1, 36, 1, 99, 1, 116, 1, 36, 1, 104, 1, 114, 
                    1, -1, 1, 36, 1, 105, 2, -1, 1, 105, 1, 36, 1, 99, 1, 
                    36, 1, 110, 3, -1, 1, 117, 1, 116, 1, 36, 1, 115, 1, 
                    -1, 1, 121, 2, -1, 1, 101, 1, 36, 1, 99, 1, 97, 1, 36, 
                    2, 101, 1, 116, 2, 36, 1, -1, 1, 36, 1, 102, 1, -1, 
                    1, 36, 1, 111, 1, 36, 1, -1, 1, 101, 1, 108, 1, -1, 
                    1, 116, 1, -1, 1, 36, 1, 101, 1, 36, 1, -1, 2, 36, 1, 
                    110, 1, -1, 1, 101, 1, 99, 1, -1, 2, 36, 1, 101, 3, 
                    -1, 1, 112, 1, -1, 1, 110, 1, -1, 1, 110, 1, 101, 1, 
                    36, 1, -1, 1, 36, 3, -1, 1, 116, 1, 111, 1, 101, 2, 
                    -1, 1, 100, 1, 36, 1, 105, 1, 116, 1, 36, 2, -1, 1, 
                    115, 1, 102, 2, 36, 1, -1, 1, 122, 1, 36, 1, -1, 2, 
                    36, 2, -1, 1, 101, 3, -1, 1, 100, 1, 36, 1, -1 )
      MAX = unpack( 1, 64255, 3, 61, 2, -1, 2, 61, 1, -1, 1, 61, 1, 57, 
                    1, 61, 3, -1, 1, 61, 5, -1, 1, 61, 1, 115, 1, 121, 2, 
                    111, 1, 120, 1, 111, 1, 110, 1, 111, 2, 117, 1, 101, 
                    1, 121, 1, 114, 1, 111, 1, 104, 1, -1, 1, 124, 2, -1, 
                    1, 120, 1, 102, 30, -1, 2, 115, 1, 111, 1, 101, 2, 116, 
                    2, 97, 1, 110, 1, 102, 1, 64255, 1, 115, 1, 116, 1, 
                    117, 1, 108, 1, 110, 1, 111, 1, 114, 1, 64255, 1, 112, 
                    1, 116, 1, 110, 1, 116, 1, 119, 1, 108, 1, 99, 1, 111, 
                    1, 98, 1, 116, 1, 111, 1, 114, 1, 112, 1, 105, 1, 110, 
                    1, 114, 1, 121, 1, 108, 1, 105, 5, -1, 2, 102, 1, 116, 
                    1, 101, 1, 108, 1, 97, 2, 101, 1, 99, 1, 114, 1, 115, 
                    1, 116, 1, 97, 1, 98, 1, -1, 2, 101, 1, 109, 1, 115, 
                    2, 97, 1, 64255, 1, -1, 1, 111, 1, 116, 1, 64255, 1, 
                    103, 1, 105, 1, 64255, 1, 108, 1, 107, 1, 118, 1, 116, 
                    1, 108, 1, 117, 1, 114, 1, 116, 1, 105, 1, 101, 1, 116, 
                    1, 99, 1, 115, 1, 111, 1, 110, 1, 101, 1, 64255, 1, 
                    100, 1, 97, 1, 108, 1, -1, 2, 114, 1, 101, 1, 107, 2, 
                    64255, 1, 104, 1, 64255, 1, 115, 1, 105, 1, 117, 1, 
                    108, 1, 64255, 1, 110, 1, 64255, 1, 101, 1, 108, 1, 
                    116, 1, -1, 1, 101, 1, 114, 1, 97, 1, 114, 1, -1, 1, 
                    64255, 1, 118, 1, -1, 1, 64255, 2, 97, 1, 101, 1, 105, 
                    1, 114, 1, 116, 1, 105, 1, 99, 1, 114, 1, 99, 1, 104, 
                    1, 64255, 1, 119, 1, 115, 1, 64255, 1, -1, 1, 64255, 
                    1, 116, 1, 101, 1, 97, 1, 116, 1, 97, 1, 64255, 2, -1, 
                    1, 64255, 1, -1, 1, 64255, 1, 110, 1, 108, 1, 101, 1, 
                    -1, 1, 100, 1, -1, 3, 64255, 1, 109, 1, 116, 1, 110, 
                    1, 102, 1, -1, 1, 101, 1, -1, 1, 103, 1, 116, 2, 99, 
                    1, 110, 1, 64255, 1, 99, 1, 116, 1, 64255, 1, 104, 1, 
                    114, 1, -1, 1, 64255, 1, 105, 2, -1, 1, 105, 1, 64255, 
                    1, 99, 1, 64255, 1, 110, 3, -1, 1, 117, 1, 116, 1, 64255, 
                    1, 115, 1, -1, 1, 121, 2, -1, 1, 101, 1, 64255, 1, 99, 
                    1, 97, 1, 64255, 2, 101, 1, 116, 2, 64255, 1, -1, 1, 
                    64255, 1, 102, 1, -1, 1, 64255, 1, 111, 1, 64255, 1, 
                    -1, 1, 101, 1, 108, 1, -1, 1, 116, 1, -1, 1, 64255, 
                    1, 101, 1, 64255, 1, -1, 2, 64255, 1, 110, 1, -1, 1, 
                    101, 1, 99, 1, -1, 2, 64255, 1, 101, 3, -1, 1, 112, 
                    1, -1, 1, 110, 1, -1, 1, 110, 1, 101, 1, 64255, 1, -1, 
                    1, 64255, 3, -1, 1, 116, 1, 111, 1, 101, 2, -1, 1, 100, 
                    1, 64255, 1, 105, 1, 116, 1, 64255, 2, -1, 1, 115, 1, 
                    102, 2, 64255, 1, -1, 1, 122, 1, 64255, 1, -1, 2, 64255, 
                    2, -1, 1, 101, 3, -1, 1, 100, 1, 64255, 1, -1 )
      ACCEPT = unpack( 4, -1, 1, 8, 1, 9, 2, -1, 1, 15, 3, -1, 1, 23, 1, 
                       24, 1, 25, 1, -1, 1, 28, 1, 29, 1, 30, 1, 31, 1, 
                       32, 16, -1, 1, 84, 1, -1, 1, 88, 1, 89, 2, -1, 1, 
                       94, 1, 95, 1, 98, 1, 99, 1, 2, 1, 1, 1, 4, 1, 3, 
                       1, 5, 1, 7, 1, 6, 1, 11, 1, 10, 1, 13, 1, 14, 1, 
                       12, 1, 17, 1, 18, 1, 16, 1, 20, 1, 19, 1, 93, 1, 
                       22, 1, 100, 1, 101, 1, 21, 1, 27, 1, 26, 1, 34, 1, 
                       33, 38, -1, 1, 86, 1, 87, 1, 85, 1, 90, 1, 91, 14, 
                       -1, 1, 45, 7, -1, 1, 54, 26, -1, 1, 92, 18, -1, 1, 
                       53, 4, -1, 1, 58, 2, -1, 1, 62, 16, -1, 1, 80, 7, 
                       -1, 1, 38, 1, 39, 1, -1, 1, 41, 4, -1, 1, 47, 1, 
                       -1, 1, 96, 7, -1, 1, 60, 1, -1, 1, 63, 11, -1, 1, 
                       75, 2, -1, 1, 79, 1, 81, 5, -1, 1, 37, 1, 40, 1, 
                       42, 4, -1, 1, 49, 1, -1, 1, 50, 1, 52, 10, -1, 1, 
                       69, 2, -1, 1, 72, 3, -1, 1, 76, 2, -1, 1, 83, 1, 
                       -1, 1, 97, 3, -1, 1, 46, 3, -1, 1, 56, 2, -1, 1, 
                       61, 3, -1, 1, 67, 1, 68, 1, 70, 1, -1, 1, 73, 1, 
                       -1, 1, 77, 3, -1, 1, 36, 1, -1, 1, 44, 1, 48, 1, 
                       51, 3, -1, 1, 64, 1, 65, 5, -1, 1, 35, 1, 43, 4, 
                       -1, 1, 71, 2, -1, 1, 82, 2, -1, 1, 59, 1, 66, 1, 
                       -1, 1, 78, 1, 55, 1, 57, 2, -1, 1, 74 )
      SPECIAL = unpack( 353, -1 )
      TRANSITION = [
        unpack( 2, 46, 1, -1, 2, 46, 18, -1, 1, 46, 1, 1, 1, 44, 1, -1, 
                1, 45, 1, 2, 1, 3, 1, 43, 1, 4, 1, 5, 1, 6, 1, 7, 1, 8, 
                1, 9, 1, 10, 1, 11, 1, 41, 9, 42, 1, 12, 1, 13, 1, 14, 1, 
                15, 1, 16, 1, 17, 1, 18, 26, 45, 1, 19, 1, -1, 1, 20, 1, 
                21, 1, 45, 1, -1, 1, 22, 1, 23, 1, 24, 1, 25, 1, 26, 1, 
                27, 2, 45, 1, 28, 2, 45, 1, 29, 1, 45, 1, 30, 1, 45, 1, 
                31, 1, 45, 1, 32, 1, 33, 1, 34, 1, 45, 1, 35, 1, 36, 3, 
                45, 1, 37, 1, 38, 1, 39, 1, 40, 65, -1, 23, 45, 1, -1, 31, 
                45, 1, -1, 7944, 45, 4160, -1, 336, 45, 368, -1, 128, 45, 
                128, -1, 2350, 45, 4306, -1, 20992, 45, 22784, -1, 512, 
                45 ),
        unpack( 1, 47 ),
        unpack( 1, 49 ),
        unpack( 1, 51, 22, -1, 1, 52 ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 54 ),
        unpack( 1, 56, 17, -1, 1, 57 ),
        unpack(  ),
        unpack( 1, 59, 15, -1, 1, 60 ),
        unpack( 1, 62, 1, -1, 10, 64 ),
        unpack( 1, 66, 4, -1, 1, 67, 13, -1, 1, 65 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 69 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 71 ),
        unpack( 1, 73, 16, -1, 1, 74 ),
        unpack( 1, 75, 2, -1, 1, 76, 6, -1, 1, 77 ),
        unpack( 1, 78, 6, -1, 1, 79, 3, -1, 1, 80, 2, -1, 1, 81 ),
        unpack( 1, 82, 9, -1, 1, 83 ),
        unpack( 1, 84, 1, -1, 1, 86, 9, -1, 1, 85 ),
        unpack( 1, 87, 7, -1, 1, 88, 2, -1, 1, 89, 2, -1, 1, 90 ),
        unpack( 1, 91, 6, -1, 1, 92, 1, 93 ),
        unpack( 1, 94 ),
        unpack( 1, 95, 3, -1, 1, 96, 15, -1, 1, 97 ),
        unpack( 1, 98, 16, -1, 1, 99, 2, -1, 1, 100 ),
        unpack( 1, 101 ),
        unpack( 1, 102, 11, -1, 1, 103, 1, 104, 1, -1, 1, 105, 1, -1, 1, 
                 106 ),
        unpack( 1, 107, 9, -1, 1, 108 ),
        unpack( 1, 109 ),
        unpack( 1, 110 ),
        unpack(  ),
        unpack( 1, 111, 62, -1, 1, 112 ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 64, 1, -1, 8, 116, 2, 64, 10, -1, 3, 64, 17, -1, 1, 
                 114, 11, -1, 3, 64, 17, -1, 1, 114 ),
        unpack( 1, 64, 1, -1, 10, 117, 10, -1, 3, 64, 29, -1, 3, 64 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 118 ),
        unpack( 1, 119 ),
        unpack( 1, 120 ),
        unpack( 1, 121 ),
        unpack( 1, 122 ),
        unpack( 1, 123, 1, 124 ),
        unpack( 1, 125 ),
        unpack( 1, 126 ),
        unpack( 1, 127 ),
        unpack( 1, 128 ),
        unpack( 1, 45, 11, -1, 10, 45, 7, -1, 26, 45, 4, -1, 1, 45, 1, 
                 -1, 20, 45, 1, 129, 5, 45, 69, -1, 23, 45, 1, -1, 31, 45, 
                 1, -1, 7944, 45, 4160, -1, 336, 45, 368, -1, 128, 45, 128, 
                 -1, 2350, 45, 4306, -1, 20992, 45, 22784, -1, 512, 45 ),
        unpack( 1, 131 ),
        unpack( 1, 132 ),
        unpack( 1, 133 ),
        unpack( 1, 134 ),
        unpack( 1, 135 ),
        unpack( 1, 136 ),
        unpack( 1, 137 ),
        unpack( 1, 45, 11, -1, 10, 45, 7, -1, 26, 45, 4, -1, 1, 45, 1, 
                 -1, 26, 45, 69, -1, 23, 45, 1, -1, 31, 45, 1, -1, 7944, 
                 45, 4160, -1, 336, 45, 368, -1, 128, 45, 128, -1, 2350, 
                 45, 4306, -1, 20992, 45, 22784, -1, 512, 45 ),
        unpack( 1, 139 ),
        unpack( 1, 140, 1, 141 ),
        unpack( 1, 142 ),
        unpack( 1, 143 ),
        unpack( 1, 144 ),
        unpack( 1, 145 ),
        unpack( 1, 146 ),
        unpack( 1, 147, 5, -1, 1, 148 ),
        unpack( 1, 149 ),
        unpack( 1, 150 ),
        unpack( 1, 151 ),
        unpack( 1, 152, 16, -1, 1, 153 ),
        unpack( 1, 154 ),
        unpack( 1, 155 ),
        unpack( 1, 156 ),
        unpack( 1, 157, 8, -1, 1, 158 ),
        unpack( 1, 159, 19, -1, 1, 160, 3, -1, 1, 161 ),
        unpack( 1, 162, 2, -1, 1, 163 ),
        unpack( 1, 164 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 64, 1, -1, 8, 116, 2, 64, 10, -1, 3, 64, 29, -1, 3, 
                 64 ),
        unpack( 1, 64, 1, -1, 10, 117, 10, -1, 3, 64, 29, -1, 3, 64 ),
        unpack( 1, 166 ),
        unpack( 1, 167 ),
        unpack( 1, 168 ),
        unpack( 1, 169 ),
        unpack( 1, 170 ),
        unpack( 1, 171 ),
        unpack( 1, 172 ),
        unpack( 1, 173 ),
        unpack( 1, 174 ),
        unpack( 1, 175 ),
        unpack( 1, 176 ),
        unpack( 1, 177 ),
        unpack(  ),
        unpack( 1, 178 ),
        unpack( 1, 179 ),
        unpack( 1, 180 ),
        unpack( 1, 181 ),
        unpack( 1, 182 ),
        unpack( 1, 183 ),
        unpack( 1, 45, 11, -1, 10, 45, 7, -1, 26, 45, 4, -1, 1, 45, 1, 
                 -1, 26, 45, 69, -1, 23, 45, 1, -1, 31, 45, 1, -1, 7944, 
                 45, 4160, -1, 336, 45, 368, -1, 128, 45, 128, -1, 2350, 
                 45, 4306, -1, 20992, 45, 22784, -1, 512, 45 ),
        unpack(  ),
        unpack( 1, 185, 2, -1, 1, 186 ),
        unpack( 1, 187 ),
        unpack( 1, 45, 11, -1, 10, 45, 7, -1, 26, 45, 4, -1, 1, 45, 1, 
                 -1, 4, 45, 1, 188, 21, 45, 69, -1, 23, 45, 1, -1, 31, 45, 
                 1, -1, 7944, 45, 4160, -1, 336, 45, 368, -1, 128, 45, 128, 
                 -1, 2350, 45, 4306, -1, 20992, 45, 22784, -1, 512, 45 ),
        unpack( 1, 190 ),
        unpack( 1, 191 ),
        unpack( 1, 45, 11, -1, 10, 45, 7, -1, 26, 45, 4, -1, 1, 45, 1, 
                 -1, 26, 45, 69, -1, 23, 45, 1, -1, 31, 45, 1, -1, 7944, 
                 45, 4160, -1, 336, 45, 368, -1, 128, 45, 128, -1, 2350, 
                 45, 4306, -1, 20992, 45, 22784, -1, 512, 45 ),
        unpack( 1, 193 ),
        unpack( 1, 194 ),
        unpack( 1, 195 ),
        unpack( 1, 196 ),
        unpack( 1, 197 ),
        unpack( 1, 198 ),
        unpack( 1, 199 ),
        unpack( 1, 200 ),
        unpack( 1, 201 ),
        unpack( 1, 202 ),
        unpack( 1, 203 ),
        unpack( 1, 204 ),
        unpack( 1, 205 ),
        unpack( 1, 206 ),
        unpack( 1, 207 ),
        unpack( 1, 208 ),
        unpack( 1, 45, 11, -1, 10, 45, 7, -1, 26, 45, 4, -1, 1, 45, 1, 
                 -1, 26, 45, 69, -1, 23, 45, 1, -1, 31, 45, 1, -1, 7944, 
                 45, 4160, -1, 336, 45, 368, -1, 128, 45, 128, -1, 2350, 
                 45, 4306, -1, 20992, 45, 22784, -1, 512, 45 ),
        unpack( 1, 210 ),
        unpack( 1, 211 ),
        unpack( 1, 212 ),
        unpack(  ),
        unpack( 1, 213 ),
        unpack( 1, 214 ),
        unpack( 1, 215 ),
        unpack( 1, 216 ),
        unpack( 1, 45, 11, -1, 10, 45, 7, -1, 26, 45, 4, -1, 1, 45, 1, 
                 -1, 26, 45, 69, -1, 23, 45, 1, -1, 31, 45, 1, -1, 7944, 
                 45, 4160, -1, 336, 45, 368, -1, 128, 45, 128, -1, 2350, 
                 45, 4306, -1, 20992, 45, 22784, -1, 512, 45 ),
        unpack( 1, 45, 11, -1, 10, 45, 7, -1, 26, 45, 4, -1, 1, 45, 1, 
                 -1, 26, 45, 69, -1, 23, 45, 1, -1, 31, 45, 1, -1, 7944, 
                 45, 4160, -1, 336, 45, 368, -1, 128, 45, 128, -1, 2350, 
                 45, 4306, -1, 20992, 45, 22784, -1, 512, 45 ),
        unpack( 1, 219 ),
        unpack( 1, 45, 11, -1, 10, 45, 7, -1, 26, 45, 4, -1, 1, 45, 1, 
                 -1, 26, 45, 69, -1, 23, 45, 1, -1, 31, 45, 1, -1, 7944, 
                 45, 4160, -1, 336, 45, 368, -1, 128, 45, 128, -1, 2350, 
                 45, 4306, -1, 20992, 45, 22784, -1, 512, 45 ),
        unpack( 1, 221 ),
        unpack( 1, 222 ),
        unpack( 1, 223 ),
        unpack( 1, 224 ),
        unpack( 1, 45, 11, -1, 10, 45, 7, -1, 26, 45, 4, -1, 1, 45, 1, 
                 -1, 26, 45, 69, -1, 23, 45, 1, -1, 31, 45, 1, -1, 7944, 
                 45, 4160, -1, 336, 45, 368, -1, 128, 45, 128, -1, 2350, 
                 45, 4306, -1, 20992, 45, 22784, -1, 512, 45 ),
        unpack( 1, 226 ),
        unpack( 1, 45, 11, -1, 10, 45, 7, -1, 26, 45, 4, -1, 1, 45, 1, 
                 -1, 26, 45, 69, -1, 23, 45, 1, -1, 31, 45, 1, -1, 7944, 
                 45, 4160, -1, 336, 45, 368, -1, 128, 45, 128, -1, 2350, 
                 45, 4306, -1, 20992, 45, 22784, -1, 512, 45 ),
        unpack( 1, 228 ),
        unpack( 1, 229 ),
        unpack( 1, 230 ),
        unpack(  ),
        unpack( 1, 231 ),
        unpack( 1, 232 ),
        unpack( 1, 233 ),
        unpack( 1, 234 ),
        unpack(  ),
        unpack( 1, 45, 11, -1, 10, 45, 7, -1, 26, 45, 4, -1, 1, 45, 1, 
                 -1, 26, 45, 69, -1, 23, 45, 1, -1, 31, 45, 1, -1, 7944, 
                 45, 4160, -1, 336, 45, 368, -1, 128, 45, 128, -1, 2350, 
                 45, 4306, -1, 20992, 45, 22784, -1, 512, 45 ),
        unpack( 1, 236 ),
        unpack(  ),
        unpack( 1, 45, 11, -1, 10, 45, 7, -1, 26, 45, 4, -1, 1, 45, 1, 
                 -1, 26, 45, 69, -1, 23, 45, 1, -1, 31, 45, 1, -1, 7944, 
                 45, 4160, -1, 336, 45, 368, -1, 128, 45, 128, -1, 2350, 
                 45, 4306, -1, 20992, 45, 22784, -1, 512, 45 ),
        unpack( 1, 238 ),
        unpack( 1, 239 ),
        unpack( 1, 240 ),
        unpack( 1, 241 ),
        unpack( 1, 242 ),
        unpack( 1, 243 ),
        unpack( 1, 244 ),
        unpack( 1, 245 ),
        unpack( 1, 246 ),
        unpack( 1, 247 ),
        unpack( 1, 248 ),
        unpack( 1, 45, 11, -1, 10, 45, 7, -1, 26, 45, 4, -1, 1, 45, 1, 
                 -1, 26, 45, 69, -1, 23, 45, 1, -1, 31, 45, 1, -1, 7944, 
                 45, 4160, -1, 336, 45, 368, -1, 128, 45, 128, -1, 2350, 
                 45, 4306, -1, 20992, 45, 22784, -1, 512, 45 ),
        unpack( 1, 250 ),
        unpack( 1, 251 ),
        unpack( 1, 45, 11, -1, 10, 45, 7, -1, 26, 45, 4, -1, 1, 45, 1, 
                 -1, 26, 45, 69, -1, 23, 45, 1, -1, 31, 45, 1, -1, 7944, 
                 45, 4160, -1, 336, 45, 368, -1, 128, 45, 128, -1, 2350, 
                 45, 4306, -1, 20992, 45, 22784, -1, 512, 45 ),
        unpack(  ),
        unpack( 1, 45, 11, -1, 10, 45, 7, -1, 26, 45, 4, -1, 1, 45, 1, 
                 -1, 26, 45, 69, -1, 23, 45, 1, -1, 31, 45, 1, -1, 7944, 
                 45, 4160, -1, 336, 45, 368, -1, 128, 45, 128, -1, 2350, 
                 45, 4306, -1, 20992, 45, 22784, -1, 512, 45 ),
        unpack( 1, 254 ),
        unpack( 1, 255 ),
        unpack( 1, 256 ),
        unpack( 1, 257 ),
        unpack( 1, 258 ),
        unpack( 1, 45, 11, -1, 10, 45, 7, -1, 26, 45, 4, -1, 1, 45, 1, 
                 -1, 26, 45, 69, -1, 23, 45, 1, -1, 31, 45, 1, -1, 7944, 
                 45, 4160, -1, 336, 45, 368, -1, 128, 45, 128, -1, 2350, 
                 45, 4306, -1, 20992, 45, 22784, -1, 512, 45 ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 45, 11, -1, 10, 45, 7, -1, 26, 45, 4, -1, 1, 45, 1, 
                 -1, 26, 45, 69, -1, 23, 45, 1, -1, 31, 45, 1, -1, 7944, 
                 45, 4160, -1, 336, 45, 368, -1, 128, 45, 128, -1, 2350, 
                 45, 4306, -1, 20992, 45, 22784, -1, 512, 45 ),
        unpack(  ),
        unpack( 1, 45, 11, -1, 10, 45, 7, -1, 26, 45, 4, -1, 1, 45, 1, 
                 -1, 26, 45, 69, -1, 23, 45, 1, -1, 31, 45, 1, -1, 7944, 
                 45, 4160, -1, 336, 45, 368, -1, 128, 45, 128, -1, 2350, 
                 45, 4306, -1, 20992, 45, 22784, -1, 512, 45 ),
        unpack( 1, 262 ),
        unpack( 1, 263 ),
        unpack( 1, 264 ),
        unpack(  ),
        unpack( 1, 265 ),
        unpack(  ),
        unpack( 1, 45, 11, -1, 10, 45, 7, -1, 26, 45, 4, -1, 1, 45, 1, 
                 -1, 26, 45, 69, -1, 23, 45, 1, -1, 31, 45, 1, -1, 7944, 
                 45, 4160, -1, 336, 45, 368, -1, 128, 45, 128, -1, 2350, 
                 45, 4306, -1, 20992, 45, 22784, -1, 512, 45 ),
        unpack( 1, 45, 11, -1, 10, 45, 7, -1, 26, 45, 4, -1, 1, 45, 1, 
                 -1, 11, 45, 1, 267, 14, 45, 69, -1, 23, 45, 1, -1, 31, 
                 45, 1, -1, 7944, 45, 4160, -1, 336, 45, 368, -1, 128, 45, 
                 128, -1, 2350, 45, 4306, -1, 20992, 45, 22784, -1, 512, 
                 45 ),
        unpack( 1, 45, 11, -1, 10, 45, 7, -1, 26, 45, 4, -1, 1, 45, 1, 
                 -1, 26, 45, 69, -1, 23, 45, 1, -1, 31, 45, 1, -1, 7944, 
                 45, 4160, -1, 336, 45, 368, -1, 128, 45, 128, -1, 2350, 
                 45, 4306, -1, 20992, 45, 22784, -1, 512, 45 ),
        unpack( 1, 270 ),
        unpack( 1, 271 ),
        unpack( 1, 272 ),
        unpack( 1, 273 ),
        unpack(  ),
        unpack( 1, 274 ),
        unpack(  ),
        unpack( 1, 275 ),
        unpack( 1, 276 ),
        unpack( 1, 277 ),
        unpack( 1, 278 ),
        unpack( 1, 279 ),
        unpack( 1, 45, 11, -1, 10, 45, 7, -1, 26, 45, 4, -1, 1, 45, 1, 
                 -1, 26, 45, 69, -1, 23, 45, 1, -1, 31, 45, 1, -1, 7944, 
                 45, 4160, -1, 336, 45, 368, -1, 128, 45, 128, -1, 2350, 
                 45, 4306, -1, 20992, 45, 22784, -1, 512, 45 ),
        unpack( 1, 281 ),
        unpack( 1, 282 ),
        unpack( 1, 45, 11, -1, 10, 45, 7, -1, 26, 45, 4, -1, 1, 45, 1, 
                 -1, 26, 45, 69, -1, 23, 45, 1, -1, 31, 45, 1, -1, 7944, 
                 45, 4160, -1, 336, 45, 368, -1, 128, 45, 128, -1, 2350, 
                 45, 4306, -1, 20992, 45, 22784, -1, 512, 45 ),
        unpack( 1, 284 ),
        unpack( 1, 285 ),
        unpack(  ),
        unpack( 1, 45, 11, -1, 10, 45, 7, -1, 26, 45, 4, -1, 1, 45, 1, 
                 -1, 18, 45, 1, 286, 7, 45, 69, -1, 23, 45, 1, -1, 31, 45, 
                 1, -1, 7944, 45, 4160, -1, 336, 45, 368, -1, 128, 45, 128, 
                 -1, 2350, 45, 4306, -1, 20992, 45, 22784, -1, 512, 45 ),
        unpack( 1, 288 ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 289 ),
        unpack( 1, 45, 11, -1, 10, 45, 7, -1, 26, 45, 4, -1, 1, 45, 1, 
                 -1, 26, 45, 69, -1, 23, 45, 1, -1, 31, 45, 1, -1, 7944, 
                 45, 4160, -1, 336, 45, 368, -1, 128, 45, 128, -1, 2350, 
                 45, 4306, -1, 20992, 45, 22784, -1, 512, 45 ),
        unpack( 1, 291 ),
        unpack( 1, 45, 11, -1, 10, 45, 7, -1, 26, 45, 4, -1, 1, 45, 1, 
                 -1, 26, 45, 69, -1, 23, 45, 1, -1, 31, 45, 1, -1, 7944, 
                 45, 4160, -1, 336, 45, 368, -1, 128, 45, 128, -1, 2350, 
                 45, 4306, -1, 20992, 45, 22784, -1, 512, 45 ),
        unpack( 1, 293 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 294 ),
        unpack( 1, 295 ),
        unpack( 1, 45, 11, -1, 10, 45, 7, -1, 26, 45, 4, -1, 1, 45, 1, 
                 -1, 26, 45, 69, -1, 23, 45, 1, -1, 31, 45, 1, -1, 7944, 
                 45, 4160, -1, 336, 45, 368, -1, 128, 45, 128, -1, 2350, 
                 45, 4306, -1, 20992, 45, 22784, -1, 512, 45 ),
        unpack( 1, 297 ),
        unpack(  ),
        unpack( 1, 298 ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 299 ),
        unpack( 1, 45, 11, -1, 10, 45, 7, -1, 26, 45, 4, -1, 1, 45, 1, 
                 -1, 26, 45, 69, -1, 23, 45, 1, -1, 31, 45, 1, -1, 7944, 
                 45, 4160, -1, 336, 45, 368, -1, 128, 45, 128, -1, 2350, 
                 45, 4306, -1, 20992, 45, 22784, -1, 512, 45 ),
        unpack( 1, 301 ),
        unpack( 1, 302 ),
        unpack( 1, 45, 11, -1, 10, 45, 7, -1, 26, 45, 4, -1, 1, 45, 1, 
                 -1, 26, 45, 69, -1, 23, 45, 1, -1, 31, 45, 1, -1, 7944, 
                 45, 4160, -1, 336, 45, 368, -1, 128, 45, 128, -1, 2350, 
                 45, 4306, -1, 20992, 45, 22784, -1, 512, 45 ),
        unpack( 1, 304 ),
        unpack( 1, 305 ),
        unpack( 1, 306 ),
        unpack( 1, 45, 11, -1, 10, 45, 7, -1, 26, 45, 4, -1, 1, 45, 1, 
                 -1, 26, 45, 69, -1, 23, 45, 1, -1, 31, 45, 1, -1, 7944, 
                 45, 4160, -1, 336, 45, 368, -1, 128, 45, 128, -1, 2350, 
                 45, 4306, -1, 20992, 45, 22784, -1, 512, 45 ),
        unpack( 1, 45, 11, -1, 10, 45, 7, -1, 26, 45, 4, -1, 1, 45, 1, 
                 -1, 26, 45, 69, -1, 23, 45, 1, -1, 31, 45, 1, -1, 7944, 
                 45, 4160, -1, 336, 45, 368, -1, 128, 45, 128, -1, 2350, 
                 45, 4306, -1, 20992, 45, 22784, -1, 512, 45 ),
        unpack(  ),
        unpack( 1, 45, 11, -1, 10, 45, 7, -1, 26, 45, 4, -1, 1, 45, 1, 
                 -1, 26, 45, 69, -1, 23, 45, 1, -1, 31, 45, 1, -1, 7944, 
                 45, 4160, -1, 336, 45, 368, -1, 128, 45, 128, -1, 2350, 
                 45, 4306, -1, 20992, 45, 22784, -1, 512, 45 ),
        unpack( 1, 310 ),
        unpack(  ),
        unpack( 1, 45, 11, -1, 10, 45, 7, -1, 26, 45, 4, -1, 1, 45, 1, 
                 -1, 26, 45, 69, -1, 23, 45, 1, -1, 31, 45, 1, -1, 7944, 
                 45, 4160, -1, 336, 45, 368, -1, 128, 45, 128, -1, 2350, 
                 45, 4306, -1, 20992, 45, 22784, -1, 512, 45 ),
        unpack( 1, 312 ),
        unpack( 1, 45, 11, -1, 10, 45, 7, -1, 26, 45, 4, -1, 1, 45, 1, 
                 -1, 26, 45, 69, -1, 23, 45, 1, -1, 31, 45, 1, -1, 7944, 
                 45, 4160, -1, 336, 45, 368, -1, 128, 45, 128, -1, 2350, 
                 45, 4306, -1, 20992, 45, 22784, -1, 512, 45 ),
        unpack(  ),
        unpack( 1, 314 ),
        unpack( 1, 315 ),
        unpack(  ),
        unpack( 1, 316 ),
        unpack(  ),
        unpack( 1, 45, 11, -1, 10, 45, 7, -1, 26, 45, 4, -1, 1, 45, 1, 
                 -1, 26, 45, 69, -1, 23, 45, 1, -1, 31, 45, 1, -1, 7944, 
                 45, 4160, -1, 336, 45, 368, -1, 128, 45, 128, -1, 2350, 
                 45, 4306, -1, 20992, 45, 22784, -1, 512, 45 ),
        unpack( 1, 318 ),
        unpack( 1, 45, 11, -1, 10, 45, 7, -1, 26, 45, 4, -1, 1, 45, 1, 
                 -1, 26, 45, 69, -1, 23, 45, 1, -1, 31, 45, 1, -1, 7944, 
                 45, 4160, -1, 336, 45, 368, -1, 128, 45, 128, -1, 2350, 
                 45, 4306, -1, 20992, 45, 22784, -1, 512, 45 ),
        unpack(  ),
        unpack( 1, 45, 11, -1, 10, 45, 7, -1, 26, 45, 4, -1, 1, 45, 1, 
                 -1, 26, 45, 69, -1, 23, 45, 1, -1, 31, 45, 1, -1, 7944, 
                 45, 4160, -1, 336, 45, 368, -1, 128, 45, 128, -1, 2350, 
                 45, 4306, -1, 20992, 45, 22784, -1, 512, 45 ),
        unpack( 1, 45, 11, -1, 10, 45, 7, -1, 26, 45, 4, -1, 1, 45, 1, 
                 -1, 26, 45, 69, -1, 23, 45, 1, -1, 31, 45, 1, -1, 7944, 
                 45, 4160, -1, 336, 45, 368, -1, 128, 45, 128, -1, 2350, 
                 45, 4306, -1, 20992, 45, 22784, -1, 512, 45 ),
        unpack( 1, 322 ),
        unpack(  ),
        unpack( 1, 323 ),
        unpack( 1, 324 ),
        unpack(  ),
        unpack( 1, 45, 11, -1, 10, 45, 7, -1, 26, 45, 4, -1, 1, 45, 1, 
                 -1, 26, 45, 69, -1, 23, 45, 1, -1, 31, 45, 1, -1, 7944, 
                 45, 4160, -1, 336, 45, 368, -1, 128, 45, 128, -1, 2350, 
                 45, 4306, -1, 20992, 45, 22784, -1, 512, 45 ),
        unpack( 1, 45, 11, -1, 10, 45, 7, -1, 26, 45, 4, -1, 1, 45, 1, 
                 -1, 26, 45, 69, -1, 23, 45, 1, -1, 31, 45, 1, -1, 7944, 
                 45, 4160, -1, 336, 45, 368, -1, 128, 45, 128, -1, 2350, 
                 45, 4306, -1, 20992, 45, 22784, -1, 512, 45 ),
        unpack( 1, 327 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 328 ),
        unpack(  ),
        unpack( 1, 329 ),
        unpack(  ),
        unpack( 1, 330 ),
        unpack( 1, 331 ),
        unpack( 1, 45, 11, -1, 10, 45, 7, -1, 26, 45, 4, -1, 1, 45, 1, 
                 -1, 26, 45, 69, -1, 23, 45, 1, -1, 31, 45, 1, -1, 7944, 
                 45, 4160, -1, 336, 45, 368, -1, 128, 45, 128, -1, 2350, 
                 45, 4306, -1, 20992, 45, 22784, -1, 512, 45 ),
        unpack(  ),
        unpack( 1, 45, 11, -1, 10, 45, 7, -1, 26, 45, 4, -1, 1, 45, 1, 
                 -1, 26, 45, 69, -1, 23, 45, 1, -1, 31, 45, 1, -1, 7944, 
                 45, 4160, -1, 336, 45, 368, -1, 128, 45, 128, -1, 2350, 
                 45, 4306, -1, 20992, 45, 22784, -1, 512, 45 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 334 ),
        unpack( 1, 335 ),
        unpack( 1, 336 ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 337 ),
        unpack( 1, 45, 11, -1, 10, 45, 7, -1, 26, 45, 4, -1, 1, 45, 1, 
                 -1, 26, 45, 69, -1, 23, 45, 1, -1, 31, 45, 1, -1, 7944, 
                 45, 4160, -1, 336, 45, 368, -1, 128, 45, 128, -1, 2350, 
                 45, 4306, -1, 20992, 45, 22784, -1, 512, 45 ),
        unpack( 1, 339 ),
        unpack( 1, 340 ),
        unpack( 1, 45, 11, -1, 10, 45, 7, -1, 26, 45, 4, -1, 1, 45, 1, 
                 -1, 26, 45, 69, -1, 23, 45, 1, -1, 31, 45, 1, -1, 7944, 
                 45, 4160, -1, 336, 45, 368, -1, 128, 45, 128, -1, 2350, 
                 45, 4306, -1, 20992, 45, 22784, -1, 512, 45 ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 342 ),
        unpack( 1, 343 ),
        unpack( 1, 45, 11, -1, 10, 45, 7, -1, 26, 45, 4, -1, 1, 45, 1, 
                 -1, 26, 45, 69, -1, 23, 45, 1, -1, 31, 45, 1, -1, 7944, 
                 45, 4160, -1, 336, 45, 368, -1, 128, 45, 128, -1, 2350, 
                 45, 4306, -1, 20992, 45, 22784, -1, 512, 45 ),
        unpack( 1, 45, 11, -1, 10, 45, 7, -1, 26, 45, 4, -1, 1, 45, 1, 
                 -1, 26, 45, 69, -1, 23, 45, 1, -1, 31, 45, 1, -1, 7944, 
                 45, 4160, -1, 336, 45, 368, -1, 128, 45, 128, -1, 2350, 
                 45, 4306, -1, 20992, 45, 22784, -1, 512, 45 ),
        unpack(  ),
        unpack( 1, 346 ),
        unpack( 1, 45, 11, -1, 10, 45, 7, -1, 26, 45, 4, -1, 1, 45, 1, 
                 -1, 26, 45, 69, -1, 23, 45, 1, -1, 31, 45, 1, -1, 7944, 
                 45, 4160, -1, 336, 45, 368, -1, 128, 45, 128, -1, 2350, 
                 45, 4306, -1, 20992, 45, 22784, -1, 512, 45 ),
        unpack(  ),
        unpack( 1, 45, 11, -1, 10, 45, 7, -1, 26, 45, 4, -1, 1, 45, 1, 
                 -1, 26, 45, 69, -1, 23, 45, 1, -1, 31, 45, 1, -1, 7944, 
                 45, 4160, -1, 336, 45, 368, -1, 128, 45, 128, -1, 2350, 
                 45, 4306, -1, 20992, 45, 22784, -1, 512, 45 ),
        unpack( 1, 45, 11, -1, 10, 45, 7, -1, 26, 45, 4, -1, 1, 45, 1, 
                 -1, 26, 45, 69, -1, 23, 45, 1, -1, 31, 45, 1, -1, 7944, 
                 45, 4160, -1, 336, 45, 368, -1, 128, 45, 128, -1, 2350, 
                 45, 4306, -1, 20992, 45, 22784, -1, 512, 45 ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 350 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 351 ),
        unpack( 1, 45, 11, -1, 10, 45, 7, -1, 26, 45, 4, -1, 1, 45, 1, 
                 -1, 26, 45, 69, -1, 23, 45, 1, -1, 31, 45, 1, -1, 7944, 
                 45, 4160, -1, 336, 45, 368, -1, 128, 45, 128, -1, 2350, 
                 45, 4306, -1, 20992, 45, 22784, -1, 512, 45 ),
        unpack(  )
      ].freeze

      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end

      @decision = 29


      def description
        <<-'__dfa_description__'.strip!
          1:1: Tokens : ( T__25 | T__26 | T__27 | T__28 | T__29 | T__30 | T__31 | T__32 | T__33 | T__34 | T__35 | T__36 | T__37 | T__38 | T__39 | T__40 | T__41 | T__42 | T__43 | T__44 | T__45 | T__46 | T__47 | T__48 | T__49 | T__50 | T__51 | T__52 | T__53 | T__54 | T__55 | T__56 | T__57 | T__58 | T__59 | T__60 | T__61 | T__62 | T__63 | T__64 | T__65 | T__66 | T__67 | T__68 | T__69 | T__70 | T__71 | T__72 | T__73 | T__74 | T__75 | T__76 | T__77 | T__78 | T__79 | T__80 | T__81 | T__82 | T__83 | T__84 | T__85 | T__86 | T__87 | T__88 | T__89 | T__90 | T__91 | T__92 | T__93 | T__94 | T__95 | T__96 | T__97 | T__98 | T__99 | T__100 | T__101 | T__102 | T__103 | T__104 | T__105 | T__106 | T__107 | T__108 | T__109 | T__110 | T__111 | T__112 | T__113 | HexLiteral | DecimalLiteral | OctalLiteral | FloatingPointLiteral | CharacterLiteral | StringLiteral | ENUM | ASSERT | Identifier | WS | COMMENT | LINE_COMMENT );
        __dfa_description__
      end

    end


    private

    def initialize_dfas
      super rescue nil
      @dfa18 = DFA18.new( self, 18 )

      @dfa29 = DFA29.new( self, 29 )


    end

  end # class Lexer < ANTLR3::Lexer

  at_exit { Lexer.main( ARGV ) } if __FILE__ == $0

end
