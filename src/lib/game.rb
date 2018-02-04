#!/usr/bin/env ruby
# encoding: UTF-8

require_relative 'map'

class Game
  class << self
    def greet(name, genre, story)
      "Sir #{name.red} you are #{genre[/^(o|e)/i] ? 'an' : 'a'} #{genre}, #{story}"
    end

    def health
      Adventurer.lives = 10
      print "HEALTH ".green, Adventurer.health
    end

    def prompt state='>> '
      $> << state.red
    end

    def options path
      print "\n" * 2

      if path[:options] == nil
        abort "End of the game"
      else
        path[:options].each { |key, val| print key.upcase.bg_blue, ' ' }
      end
      health()
      print ' ', "MAP".bg_magenta
      print ' ', "QUIT".bg_red

      print "\n" * 2
    end

    def help
      print %{
        zo.rb - Text adventure game inspired by Zork

        help - shows this help
        quit - quits the game
      }
    end
  end
end