#################################
# to run use:
#
#  $ ruby sandbox/hair.rb

$LOAD_PATH.unshift( "./lib" )
require 'punkmaker'



pp Punk::Hair.colors

pp Punk::Hair.derive_color_map( '#ff0000' )


puts "bye"

