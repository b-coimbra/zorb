#!/usr/bin/env ruby
# encoding: UTF-8

class Adventurer
  class << self
    attr_accessor :name, :age, :lives

    def genre
      %[orc elf dwarf human].split.sample
    end

    def class
      %[mage warrior paladin archer].split.sample
    end

    def health
      return ("|" * lives).ljust(10).bg_green
    end

    def story
      YAML.load_file('lib/story.yml')[rand(1..4)]
    end
  end
end
