require 'pixelart'
require 'spritesheet'


require_relative 'punkmaker/version'  ## let version always go first

## support - move to ???
require_relative 'punkmaker/colors'   ## ColorBundle (color by name lookup and mroe)
require_relative 'punkmaker/skintone'
require_relative 'punkmaker/eyes'


## more base / archetypes
require_relative 'punkmaker/type/human'
require_relative 'punkmaker/type/alien'
require_relative 'punkmaker/type/mummy'
require_relative 'punkmaker/type/ape'
require_relative 'punkmaker/type/skeleton'
require_relative 'punkmaker/type/zombie'
require_relative 'punkmaker/type/demon'
require_relative 'punkmaker/type/orc'
require_relative 'punkmaker/type/robot'
require_relative 'punkmaker/type/vampire'


## more hair (incl. beards & eyebrows)
require_relative 'punkmaker/hair'



puts Pixelart::Module::Punkmaker.banner    # say hello



