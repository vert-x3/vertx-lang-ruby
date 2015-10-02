require 'vertx/command_line'
require 'vertx/util/utils.rb'
# Generated from io.vertx.core.cli.CLI
module Vertx
  #  Interface defining a command-line interface (in other words a command such as 'run', 'ls'...).
  #  This interface is polyglot to ease reuse such as in Vert.x Shell.
  #  <p/>
  #  A command line interface has a name, and defines a set of options and arguments. Options are key-value pair such
  #  as <code>-foo=bar</code> or <code>-flag</code>. The supported formats depend on the used parser. Arguments are unlike
  #  options raw values. Options are defined using
  #  {Hash}, while argument are defined using {Hash}.
  #  <p/>
  #  Command line interfaces also define a summary and a description. These attributes are used in the usage generation
  #  . To disable the help generation, set the <code>hidden</code> attribute to <code>true</code>.
  #  <p/>
  #  Command Line Interface object does not contains "value", it's a model. It must be evaluated by a
  #  parser that returns a {::Vertx::CommandLine} object containing the argument and option values.
  class CLI
    # @private
    # @param j_del [::Vertx::CLI] the java delegate
    def initialize(j_del)
      @j_del = j_del
    end
    # @private
    # @return [::Vertx::CLI] the underlying java delegate
    def j_del
      @j_del
    end
    #  Creates an instance of {::Vertx::CLI} using the default implementation.
    # @param [String] name the name of the CLI (must not be <code>null</code>)
    # @return [::Vertx::CLI] the created instance of {::Vertx::CLI}
    def self.create(name=nil)
      if name.class == String && !block_given?
        return ::Vertx::Util::Utils.safe_create(Java::IoVertxCoreCli::CLI.java_method(:create, [Java::java.lang.String.java_class]).call(name),::Vertx::CLI)
      end
      raise ArgumentError, "Invalid arguments when calling create(name)"
    end
    #  Parses the user command line interface and create a new {::Vertx::CommandLine} containing extracting values.
    # @param [Array<String>] arguments the arguments
    # @param [true,false] validate enable / disable parsing validation
    # @return [::Vertx::CommandLine] the creates command line
    def parse(arguments=nil,validate=nil)
      if arguments.class == Array && !block_given? && validate == nil
        return ::Vertx::Util::Utils.safe_create(@j_del.java_method(:parse, [Java::JavaUtil::List.java_class]).call(arguments.map { |element| element }),::Vertx::CommandLine)
      elsif arguments.class == Array && (validate.class == TrueClass || validate.class == FalseClass) && !block_given?
        return ::Vertx::Util::Utils.safe_create(@j_del.java_method(:parse, [Java::JavaUtil::List.java_class,Java::boolean.java_class]).call(arguments.map { |element| element },validate),::Vertx::CommandLine)
      end
      raise ArgumentError, "Invalid arguments when calling parse(arguments,validate)"
    end
    #  @return the CLI name.
    # @return [String]
    def get_name
      if !block_given?
        return @j_del.java_method(:getName, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling get_name()"
    end
    #  Sets the name of the CLI.
    # @param [String] name the name
    # @return [self]
    def set_name(name=nil)
      if name.class == String && !block_given?
        @j_del.java_method(:setName, [Java::java.lang.String.java_class]).call(name)
        return self
      end
      raise ArgumentError, "Invalid arguments when calling set_name(name)"
    end
    #  @return the CLI description.
    # @return [String]
    def get_description
      if !block_given?
        return @j_del.java_method(:getDescription, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling get_description()"
    end
    # @param [String] desc 
    # @return [self]
    def set_description(desc=nil)
      if desc.class == String && !block_given?
        @j_del.java_method(:setDescription, [Java::java.lang.String.java_class]).call(desc)
        return self
      end
      raise ArgumentError, "Invalid arguments when calling set_description(desc)"
    end
    #  @return the CLI summary.
    # @return [String]
    def get_summary
      if !block_given?
        return @j_del.java_method(:getSummary, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling get_summary()"
    end
    #  Sets the summary of the CLI.
    # @param [String] summary the summary
    # @return [self]
    def set_summary(summary=nil)
      if summary.class == String && !block_given?
        @j_del.java_method(:setSummary, [Java::java.lang.String.java_class]).call(summary)
        return self
      end
      raise ArgumentError, "Invalid arguments when calling set_summary(summary)"
    end
    #  Checks whether or not the current {::Vertx::CLI} instance is hidden.
    # @return [true,false] <code>true</code> if the current {::Vertx::CLI} is hidden,  otherwise
    def hidden?
      if !block_given?
        return @j_del.java_method(:isHidden, []).call()
      end
      raise ArgumentError, "Invalid arguments when calling hidden?()"
    end
    #  Sets whether or not the current instance of {::Vertx::CLI} must be hidden. Hidden CLI are not listed when
    #  displaying usages / help messages. In other words, hidden commands are for power user.
    # @param [true,false] hidden enables or disables the hidden aspect of the CI
    # @return [self]
    def set_hidden(hidden=nil)
      if (hidden.class == TrueClass || hidden.class == FalseClass) && !block_given?
        @j_del.java_method(:setHidden, [Java::boolean.java_class]).call(hidden)
        return self
      end
      raise ArgumentError, "Invalid arguments when calling set_hidden(hidden)"
    end
    #  Gets the list of options.
    # @return [Array<Hash>] the list of options, empty if none.
    def get_options
      if !block_given?
        return @j_del.java_method(:getOptions, []).call().to_a.map { |elt| elt != nil ? JSON.parse(elt.toJson.encode) : nil }
      end
      raise ArgumentError, "Invalid arguments when calling get_options()"
    end
    #  Adds an option.
    # @param [Hash] option the option, must not be <code>null</code>.
    # @return [self]
    def add_option(option=nil)
      if option.class == Hash && !block_given?
        @j_del.java_method(:addOption, [Java::IoVertxCoreCli::Option.java_class]).call(Java::IoVertxCoreCli::Option.new(::Vertx::Util::Utils.to_json_object(option)))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling add_option(option)"
    end
    #  Adds a set of options. Unlike {::Vertx::CLI#set_options}}, this method does not remove the existing options.
    #  The given list is appended to the existing list.
    # @param [Array<Hash>] options the options, must not be <code>null</code>
    # @return [self]
    def add_options(options=nil)
      if options.class == Array && !block_given?
        @j_del.java_method(:addOptions, [Java::JavaUtil::List.java_class]).call(options.map { |element| Java::IoVertxCoreCli::Option.new(::Vertx::Util::Utils.to_json_object(element)) })
        return self
      end
      raise ArgumentError, "Invalid arguments when calling add_options(options)"
    end
    #  Sets the list of arguments.
    # @param [Array<Hash>] options the list of options, must not be <code>null</code>
    # @return [self]
    def set_options(options=nil)
      if options.class == Array && !block_given?
        @j_del.java_method(:setOptions, [Java::JavaUtil::List.java_class]).call(options.map { |element| Java::IoVertxCoreCli::Option.new(::Vertx::Util::Utils.to_json_object(element)) })
        return self
      end
      raise ArgumentError, "Invalid arguments when calling set_options(options)"
    end
    #  Gets the list of defined arguments.
    # @return [Array<Hash>] the list of argument, empty if none.
    def get_arguments
      if !block_given?
        return @j_del.java_method(:getArguments, []).call().to_a.map { |elt| elt != nil ? JSON.parse(elt.toJson.encode) : nil }
      end
      raise ArgumentError, "Invalid arguments when calling get_arguments()"
    end
    #  Adds an argument.
    # @param [Hash] arg the argument, must not be <code>null</code>
    # @return [self]
    def add_argument(arg=nil)
      if arg.class == Hash && !block_given?
        @j_del.java_method(:addArgument, [Java::IoVertxCoreCli::Argument.java_class]).call(Java::IoVertxCoreCli::Argument.new(::Vertx::Util::Utils.to_json_object(arg)))
        return self
      end
      raise ArgumentError, "Invalid arguments when calling add_argument(arg)"
    end
    #  Adds a set of arguments. Unlike {::Vertx::CLI#set_arguments}, this method does not remove the existing arguments.
    #  The given list is appended to the existing list.
    # @param [Array<Hash>] args the arguments, must not be <code>null</code>
    # @return [self]
    def add_arguments(args=nil)
      if args.class == Array && !block_given?
        @j_del.java_method(:addArguments, [Java::JavaUtil::List.java_class]).call(args.map { |element| Java::IoVertxCoreCli::Argument.new(::Vertx::Util::Utils.to_json_object(element)) })
        return self
      end
      raise ArgumentError, "Invalid arguments when calling add_arguments(args)"
    end
    #  Sets the list of arguments.
    # @param [Array<Hash>] args the list of arguments, must not be <code>null</code>
    # @return [self]
    def set_arguments(args=nil)
      if args.class == Array && !block_given?
        @j_del.java_method(:setArguments, [Java::JavaUtil::List.java_class]).call(args.map { |element| Java::IoVertxCoreCli::Argument.new(::Vertx::Util::Utils.to_json_object(element)) })
        return self
      end
      raise ArgumentError, "Invalid arguments when calling set_arguments(args)"
    end
    #  Gets an {Hash} based on its name (short name, long name or argument name).
    # @param [String] name the name, must not be <code>null</code>
    # @return [Hash] the {Hash}, <code>null</code> if not found
    def get_option(name=nil)
      if name.class == String && !block_given?
        return @j_del.java_method(:getOption, [Java::java.lang.String.java_class]).call(name) != nil ? JSON.parse(@j_del.java_method(:getOption, [Java::java.lang.String.java_class]).call(name).toJson.encode) : nil
      end
      raise ArgumentError, "Invalid arguments when calling get_option(name)"
    end
    #  Gets an {Hash} based on its index.
    # @overload getArgument(name)
    #   @param [String] name the name of the argument, must not be <code>null</code>
    # @overload getArgument(index)
    #   @param [Fixnum] index the index, must be positive or zero.
    # @return [Hash] the {Hash}, <code>null</code> if not found.
    def get_argument(param_1=nil)
      if param_1.class == String && !block_given?
        return @j_del.java_method(:getArgument, [Java::java.lang.String.java_class]).call(param_1) != nil ? JSON.parse(@j_del.java_method(:getArgument, [Java::java.lang.String.java_class]).call(param_1).toJson.encode) : nil
      elsif param_1.class == Fixnum && !block_given?
        return @j_del.java_method(:getArgument, [Java::int.java_class]).call(param_1) != nil ? JSON.parse(@j_del.java_method(:getArgument, [Java::int.java_class]).call(param_1).toJson.encode) : nil
      end
      raise ArgumentError, "Invalid arguments when calling get_argument(param_1)"
    end
    #  Removes an option identified by its name. This method does nothing if the option cannot be found.
    # @param [String] name the option name
    # @return [self]
    def remove_option(name=nil)
      if name.class == String && !block_given?
        @j_del.java_method(:removeOption, [Java::java.lang.String.java_class]).call(name)
        return self
      end
      raise ArgumentError, "Invalid arguments when calling remove_option(name)"
    end
    #  Removes an argument identified by its index. This method does nothing if the argument cannot be found.
    # @param [Fixnum] index the argument index
    # @return [self]
    def remove_argument(index=nil)
      if index.class == Fixnum && !block_given?
        @j_del.java_method(:removeArgument, [Java::int.java_class]).call(index)
        return self
      end
      raise ArgumentError, "Invalid arguments when calling remove_argument(index)"
    end
  end
end
