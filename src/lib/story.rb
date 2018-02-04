# encoding: UTF-8
#!/usr/bin/env ruby

# ascii art taken from http://loveascii.com/

$story = {
  :options => {
    'go north' => {
      :response => ""
    },
    'go south' => {
      :response  => ''
    },
    'go east' => {
      :response => %{
          #{"You have encountered the entrance for the kingdom of Valkaria!".bg_gray}

           >>                                                        >>
           |                     >>            >>                    |
           *                     |             |                     *
          / \\                    *             *                    / \\
         /___\\                 _/ \\           / \\_                 /___\\
         [   ]                |/   \\_________/   \\|                [   ]
         [ I ]                /     \\       /     \\                [ I ]
         [   ]_ _ _          /       \\     /       \\          _ _ _[   ]
         [   ] U U |        \{#########\}   \{#########\}        | U U [   ]
         [   ]====/          \\=======/     \\=======/          \\====[   ]
         [   ]    |           |   I |_ _ _ _| I   |           |    [   ]
         [___]    |_ _ _ _ _ _|     | U U U |     |_ _ _ _ _ _|    [___]
         \\===/  I | U U U U U |     |=======|     | U U U U U | I  \\===/
          \\=/     |===========| I   | + W + |   I |===========|     \\=/
           |  I   |           |     |_______|     |           |   I  |
           |      |           |     |||||||||     |           |      |
           |      |           |   I ||vvvvv|| I   |           |      |
       _-_-|______|-----------|_____||     ||_____|-----------|______|-_-_
          /________\\         /______||     ||______\\         /________\\
         |__________|-------|________\\_____/________|-------|__________|
      }.green,
      :options => {
        'enter' => {
          :response => %{
            Some guards stopped you from entering the castle
                        *_   _   _   _   _   _ *
                ^       | `_' `-' `_' `-' `_' `|       ^
                |       |                      |       |
                |  (*)  |_   _   _   _   _   _ |  \\^\/  |
                | _<">_ | `_' `-' `_' `-' `_' `| _(#)_ |
               o+o \\ \/ \\0                      0\/ \\ \/ (=)
                0'\\ ^ \/\/                      \/\\ ^ \/`0
                  \/_^_\\ |                      | \/_^_\\
                  || || |                      | || ||
                  d|_|b_T______________________T_d|_|b
          },
          :options => {
            'fight' => {
              :response => ''
            },
            'talk' => {
              :response => '[GUARDS] What is your purpose here, filthy outcast?'.black.bg_gray,
              :options => {
                'trading' => {
                  :response => ''
                },
                'keep quiet' => {
                  :response => ''
                }
              }
            },
            'go east' => {
              :response => ''
            },
            'go south' => {
              :response => ''
            }
          }
        },
        'go back' => {
          :response => "You went back."
        }
      }
    }
  }
}
