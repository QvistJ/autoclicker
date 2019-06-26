require 'launchy'
require 'win32/screenshot'
require 'auto_click'
include AutoClickMethods

Launchy.open("https://www.humanbenchmark.com/tests/reactiontime")

mouse_move(900,300)
sleep 0.5
left_click

# TODO: Screenshot and search for green pixel.
# Try and get rmagick to work because it seems to have a capture method.