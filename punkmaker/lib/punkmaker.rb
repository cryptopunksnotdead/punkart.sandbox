require 'pixelart'
require 'spritesheet'


require_relative 'punkmaker/version'  ## let version always go first

## more base / archetypes
require_relative 'punkmaker/human'
require_relative 'punkmaker/alien'
require_relative 'punkmaker/mummy'

## more hair (incl. beards & eyebrows)
require_relative 'punkmaker/hair'



puts Pixelart::Module::Punkmaker.banner    # say hello



