# Redefine the require and load methods so we can make them synchronized

require 'jruby/synchronized'

module Kernel
  # make an alias of the original require
  alias_method :original_require, :require
  alias_method :original_load, :load

  def require(*args)
    Java::IoVertxLangJruby::JRubyVerticleFactory.requireCallback do
      #puts "in require callback"
      original_require(*args)
    end
  end

  def load(*args)
    Java::IoVertxLangJruby::JRubyVerticleFactory.requireCallback do
      #puts "in require callback"
      original_load(*args)
    end
  end

end

