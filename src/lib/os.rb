#!/usr/bin/env ruby

module OS
  class << self
    def windows?
        return !!(/cygwin|mswin|mingw|bccwin|wince|emx/ =~ RUBY_PLATFORM)
    end

    def mac?
        return !!(/darwin/ =~ RUBY_PLATFORM)
    end

    def unix?
        return !windows?
    end

    def linux?
        return unix? if !mac?
    end
  end
end

def clear
  OS.windows? ? system('cls') : system('clear')
end