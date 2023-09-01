#################################
# to run use:
#
#  $ ruby sandbox/make3.rb

$LOAD_PATH.unshift( "./lib" )
require 'punkmaker'

punks = [
 Punk::Human.make( '1' ),
 Punk::Human.make( '2' ),
 Punk::Human.make( '3' ),
 Punk::Human.make( '4' ),
 Punk::Human.make( 'mid' ),
 Punk::Human.make( 'dark' ),
 Punk::Human.make( 'albino' ),

 Punk::Human.make( '01' ),
 Punk::Human.make( '02' ),
 Punk::Human.make( '09' ),
 Punk::Human.make( '10' ),
 Punk::Human.make( 'monk10' ),
 Punk::Human.make( 'monk01' ),


 Punk::Human.make( 'gold' ),
 Punk::Human.make( 'sienna' ),
 Punk::Human.make( 'honey' ),

 Punk::Human.make( 'a1' ),
 Punk::Human.make( 'a2' ),
 Punk::Human.make( 'f1' ),
 Punk::Human.make( 'f2' ),
]


punks.each_with_index do |punk,i|
   punk.save( "./tmp4/skintone#{i+1}.png" )
   punk.zoom(8).save( "./tmp4/skintone#{i+1}@8x.png" )
end


puts "bye"