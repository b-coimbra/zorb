require 'json'
require 'yaml'

Dir[File.join(__dir__, %w[lib], '*.rb')].map(&method(:require))

$> << %{
       .
    / \\
    | |
    |.|
    |.|
    |:|      __
  ,_|:|_,   /  )
    (Oo    / _I_
     +\\ \\  || __|
        \\ \\||___|
          \\ /.:.\\-\\
           |.:. /--Z--\\
           |___|::oOo::|
           /   |:<_R_>:|
          |_____\\ :B: /
           | |  \\ \\:/
           | |   | |
           \\ /   | \\___
           / |   \\_____\\
           `-'
}

print "Enter thy name, brave adventurer: "
Adventurer.name = gets.chomp

puts Game.greet(Adventurer.name, Adventurer.genre, Adventurer.story)

def copy_hash(hash)
  Marshal.load(Marshal.dump(hash))
end

commands = {
  :map  => -> { Map.show() },
  :quit => -> { abort 'You have abandoned your journey.' },
  :help => -> { Game.help() }
}

now = {}

loop do
  Game.options($story) if now.empty?
  Game.prompt

  action = gets.chop.strip

  if !now.empty?
    now = copy_hash(now[:options][action])
    changed = true
  end

  begin
    commands[action.to_sym].call
  rescue NoMethodError
    now = copy_hash($story[:options][action]) unless changed

    puts now[:response]

    Game.options(now)
  end
end
