###########
# to run use:
#
#  $  ruby -I ./lib sandbox/test_hair.rb


$LOAD_PATH.unshift( "../punkmaker/lib" )
require 'barbershop'


hair   =  Barbershop::Hair.sheet.find_by( name: 'Afro' )
hair.save( "./tmp/afro.png" )
hair.zoom(4).save( "./tmp/afro@4x.png" )


hair =  Barbershop::Hair.sheet.find_by( name: 'Buzz Cut' )
hair.save( "./tmp/buzzcut.png" )
hair.zoom(4).save( "./tmp/buzzcut@4x.png" )



pp Barbershop::Hair.colors


hair =  Barbershop::Hair.make( 'Buzz Cut' )
hair.save( "./tmp/buzzcut-black.png" )
hair.zoom(4).save( "./tmp/buzzcut-black@4x.png" )

hair =  Barbershop::Hair.make( 'Mohawk Big', color: 'Green' )
hair.save( "./tmp/mohawkbig-green.png" )
hair.zoom(4).save( "./tmp/mohawkbig-green@4x.png" )


puts "bye"
