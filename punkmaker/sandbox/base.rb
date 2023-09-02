#################################
# to run use:
#
#  $ ruby sandbox/base.rb

$LOAD_PATH.unshift( "./lib" )
require 'punkmaker'



base = Punk::Alien.base
base.zoom(8).save( "./tmp6/alien_m@8x.png" )

base = Punk::Alien.base( gender: 'f' )
base.zoom(8).save( "./tmp6/alien_f@8x.png" )

punk = Punk::Alien.make
punk.zoom(8).save( "./tmp6/alien2_m@8x.png" )

punk = Punk::Alien.make( gender: 'm' )
punk.zoom(8).save( "./tmp6/alien2_f@8x.png" )


puts "bye"
