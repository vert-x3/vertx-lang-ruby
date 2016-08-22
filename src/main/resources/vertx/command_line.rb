require 'vertx/cli'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.cli.CommandLine
module Vertx
  #  The parser transforms a CLI (a model) into an {::Vertx::CommandLine}. This {::Vertx::CommandLine}
  #  has stored the argument and option values. Only  instance of parser should create
  #  objects of this type.
  class CommandLine
    # @private
    # @param j_del [::Vertx::CommandLine] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::Vertx::CommandLine] the underlying java delegate
    def j_del
      @j_del
    end
    #  Creates a command line object from the {::Vertx::CLI}. This object is intended to be used by
    #  the parser to set the argument and option values.
    # @param [::Vertx::CLI] cli the CLI definition
    # @return [::Vertx::CommandLine] the command line object
    def self.create(cli=nil)
      if cli.class.method_defined?(:j_del) && !block_given?
        return ::Vertx::Util::Utils.safe_create(Java::IoVertxCoreCli::CommandLine.java_method(:create, [Java::IoVertxCoreCli::CLI.java_class]).call(cli.j_del),::Vertx::CommandLine)
      end
      raise ArgumentError, "Invalid arguments when calling create(cli)"
    end
    # @return [::Vertx::CLI] the model of this command line object.
    def cli
      if !block_given?
        return ::Vertx::Util::Utils.safe_create(@j_del.java_method(:cli, []).call(),::Vertx::CLI)
      end
      raise ArgumentError, "Invalid arguments when calling cli()"
    end
    # @return [Array<String>] the ordered list of arguments. Arguments are command line arguments not matching an option.
    def all_arguments
      if !block_given?
        return @j_del.java_method(:allArguments, []).call().to_a.map { |elt| elt }
      end
      raise ArgumentError, "Invalid arguments when calling all_arguments()"
    end
    #  Gets the value of an option with the matching name (can be the long name, short name or arg name).
    # @param [String] name the name
    # @return [Object] the value, <code>null</code> if not set
    def get_option_value(name=nil)
      if name.class == String && !block_given?
        return ::Vertx::Util::Utils.from_object(@j_del.java_method(:getOptionValue, [Java::java.lang.String.java_class]).call(name))
      end
      raise ArgumentError, "Invalid arguments when calling get_option_value(name)"
    end
    #  Gets the value of an argument with the given index.
    # @overload getArgumentValue(name)
    #   @param [String] name the name
    # @overload getArgumentValue(index)
    #   @param [Fixnum] index the index
    # @return [Object] the value, <code>null</code> if not set
    def get_argument_value(param_1=nil)
      if param_1.class == String && !block_given?
        return ::Vertx::Util::Utils.from_object(@j_del.java_method(:getArgumentValue, [Java::java.lang.String.java_class]).call(param_1))
      elsif param_1.class == Fixnum && !block_given?
        return ::Vertx::Util::Utils.from_object(@j_del.java_method(:getArgumentValue, [Java::int.java_class]).call(param_1))
      end
      raise ArgumentError, "Invalid arguments when calling get_argument_value(param_1)"
    end
    #  Gets the value of an option marked as a flag.
    #  <p/>
    #  Calling this method an a non-flag option throws an IllegalStateException.
    # @param [String] name the option name
    # @return [true,false] <code>true</code> if the flag has been set in the command line, <code>false</code> otherwise.
    def flag_enabled?(name=nil)
      if name.class == String && !block_given?
        return @j_del.java_method(:isFlagEnabled, [Java::java.lang.String.java_class]).call(name)
      end
      raise ArgumentError, "Invalid arguments when calling flag_enabled?(name)"
    end
    #  Checks whether or not the given option has been assigned in the command line.
    # @param [Hash] option the option
    # @return [true,false] <code>true</code> if the option has received a value,  otherwise.
    def option_assigned?(option=nil)
      if option.class == Hash && !block_given?
        return @j_del.java_method(:isOptionAssigned, [Java::IoVertxCoreCli::Option.java_class]).call(Java::IoVertxCoreCli::Option.new(::Vertx::Util::Utils.to_json_object(option)))
      end
      raise ArgumentError, "Invalid arguments when calling option_assigned?(option)"
    end
    #  Gets the raw values of the given option. Raw values are simple "String", not converted to the option type.
    # @param [Hash] option the option
    # @return [Array<String>] the list of values, empty if none
    def get_raw_values(option=nil)
      if option.class == Hash && !block_given?
        return @j_del.java_method(:getRawValues, [Java::IoVertxCoreCli::Option.java_class]).call(Java::IoVertxCoreCli::Option.new(::Vertx::Util::Utils.to_json_object(option))).to_a.map { |elt| elt }
      end
      raise ArgumentError, "Invalid arguments when calling get_raw_values(option)"
    end
    #  Gets the raw values of the given option. Raw values are simple "String", not converted to the option type.
    # @param [Hash] option the option
    # @return [Array<String>] the list of values, empty if none
    def get_raw_values_for_option(option=nil)
      if option.class == Hash && !block_given?
        return @j_del.java_method(:getRawValuesForOption, [Java::IoVertxCoreCli::Option.java_class]).call(Java::IoVertxCoreCli::Option.new(::Vertx::Util::Utils.to_json_object(option))).to_a.map { |elt| elt }
      end
      raise ArgumentError, "Invalid arguments when calling get_raw_values_for_option(option)"
    end
    #  Gets the raw values of the given argument. Raw values are simple "String", not converted to the argument type.
    # @param [Hash] argument the argument
    # @return [Array<String>] the list of values, empty if none
    def get_raw_values_for_argument(argument=nil)
      if argument.class == Hash && !block_given?
        return @j_del.java_method(:getRawValuesForArgument, [Java::IoVertxCoreCli::Argument.java_class]).call(Java::IoVertxCoreCli::Argument.new(::Vertx::Util::Utils.to_json_object(argument))).to_a.map { |elt| elt }
      end
      raise ArgumentError, "Invalid arguments when calling get_raw_values_for_argument(argument)"
    end
    #  Gets the raw value of the given option. Raw values are the values as given in the user command line.
    # @param [Hash] option the option
    # @return [String] the value, <code>null</code> if none.
    def get_raw_value_for_option(option=nil)
      if option.class == Hash && !block_given?
        return @j_del.java_method(:getRawValueForOption, [Java::IoVertxCoreCli::Option.java_class]).call(Java::IoVertxCoreCli::Option.new(::Vertx::Util::Utils.to_json_object(option)))
      end
      raise ArgumentError, "Invalid arguments when calling get_raw_value_for_option(option)"
    end
    #  Checks whether or not the given option accept more values.
    # @param [Hash] option the option
    # @return [true,false]  if the option accepts more values,  otherwise.
    def accept_more_values?(option=nil)
      if option.class == Hash && !block_given?
        return @j_del.java_method(:acceptMoreValues, [Java::IoVertxCoreCli::Option.java_class]).call(Java::IoVertxCoreCli::Option.new(::Vertx::Util::Utils.to_json_object(option)))
      end
      raise ArgumentError, "Invalid arguments when calling accept_more_values?(option)"
    end
    #  Gets the raw value of the given argument. Raw values are the values as given in the user command line.
    # @param [Hash] arg the argument
    # @return [String] the value, <code>null</code> if none.
    def get_raw_value_for_argument(arg=nil)
      if arg.class == Hash && !block_given?
        return @j_del.java_method(:getRawValueForArgument, [Java::IoVertxCoreCli::Argument.java_class]).call(Java::IoVertxCoreCli::Argument.new(::Vertx::Util::Utils.to_json_object(arg)))
      end
      raise ArgumentError, "Invalid arguments when calling get_raw_value_for_argument(arg)"
    end
    #  Checks whether or not the given argument has been assigned in the command line.
    # @param [Hash] arg the argument
    # @return [true,false] <code>true</code> if the argument has received a value,  otherwise.
    def argument_assigned?(arg=nil)
      if arg.class == Hash && !block_given?
        return @j_del.java_method(:isArgumentAssigned, [Java::IoVertxCoreCli::Argument.java_class]).call(Java::IoVertxCoreCli::Argument.new(::Vertx::Util::Utils.to_json_object(arg)))
      end
      raise ArgumentError, "Invalid arguments when calling argument_assigned?(arg)"
    end
    #  Checks whether or not the given option has been seen in the user command line.
    # @param [Hash] option the option
    # @return [true,false] <code>true</code> if the user command line has used the option
    def seen_in_command_line?(option=nil)
      if option.class == Hash && !block_given?
        return @j_del.java_method(:isSeenInCommandLine, [Java::IoVertxCoreCli::Option.java_class]).call(Java::IoVertxCoreCli::Option.new(::Vertx::Util::Utils.to_json_object(option)))
      end
      raise ArgumentError, "Invalid arguments when calling seen_in_command_line?(option)"
    end
    #  Checks whether or not the command line is valid, i.e. all constraints from arguments and options have been
    #  satisfied. This method is used when the parser validation is disabled.
    # @return [true,false] <code>true</code> if the current {::Vertx::CommandLine} object is valid.  otherwise.
    def valid?
      if !block_given?
        return @j_del.java_method(:isValid, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling valid?()"
    end
    #  Checks whether or not the user has passed a "help" option and is asking for help.
    # @return [true,false] <code>true</code> if the user command line has enabled a "Help" option,  otherwise.
    def asking_for_help?
      if !block_given?
        return @j_del.java_method(:isAskingForHelp, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling asking_for_help?()"
    end
  end
end
