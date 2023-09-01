require 'pixelart'
require 'spritesheet'


require_relative 'punkmaker/version'  ## let version always go first

## support - move to ???
require_relative 'punkmaker/colors'   ## ColorBundle (color by name lookup and mroe)
require_relative 'punkmaker/skintone'

## more base / archetypes
require_relative 'punkmaker/human'
require_relative 'punkmaker/alien'
require_relative 'punkmaker/mummy'
require_relative 'punkmaker/ape'
require_relative 'punkmaker/skeleton'
require_relative 'punkmaker/zombie'
require_relative 'punkmaker/demon'
require_relative 'punkmaker/orc'
require_relative 'punkmaker/robot'
require_relative 'punkmaker/vampire'


## more hair (incl. beards & eyebrows)
require_relative 'punkmaker/hair'



puts Pixelart::Module::Punkmaker.banner    # say hello



