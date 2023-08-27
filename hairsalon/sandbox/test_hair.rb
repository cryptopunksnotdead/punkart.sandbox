###########
# to run use:
#
#  $  ruby -I ./lib sandbox/test_hair.rb


$LOAD_PATH.unshift( "../punkmaker/lib" )
require 'hairsalon'


hair   =  Hairsalon::Hair.sheet.find_by( name: 'Afro' )
hair.save( "./tmp/afro.png" )
hair.zoom(4).save( "./tmp/afro@4x.png" )


hair =  Hairsalon::Hair.sheet.find_by( name: 'Buzz Cut' )
hair.save( "./tmp/buzzcut.png" )
hair.zoom(4).save( "./tmp/buzzcut@4x.png" )



pp Hairsalon::Hair.colors


hair =  Hairsalon::Hair.make( 'Buzz Cut' )
hair.save( "./tmp/buzzcut-black.png" )
hair.zoom(4).save( "./tmp/buzzcut-black@4x.png" )

hair =  Hairsalon::Hair.make( 'Pigtails', color: 'Green' )
hair.save( "./tmp/pigtails-green.png" )
hair.zoom(4).save( "./tmp/pigtails-green@4x.png" )

hair =  Hairsalon::Hair.make( 'Wild', color: 'Blonde' )
hair.save( "./tmp/wild-blonde.png" )
hair.zoom(4).save( "./tmp/wild-blonde@4x.png" )


puts "bye"
