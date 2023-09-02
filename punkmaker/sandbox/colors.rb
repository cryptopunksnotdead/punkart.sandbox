#################################
# to run use:
#
#  $ ruby sandbox/colors.rb

$LOAD_PATH.unshift( "./lib" )
require 'punkmaker'

pp Punk::Skintone.colors

puts Color.fmt( Punk::Skintone.colors[ '1' ] )
puts Color.fmt( Punk::Skintone.colors[ 'mid' ] )
puts Color.fmt( Punk::Skintone.colors[ 'dark' ] )
pp Punk::Skintone.colors[ 'xxx' ]

puts Color.fmt( Punk::Skintone[ '1' ] )
puts Color.fmt( Punk::Skintone[ 'mid' ] )
puts Color.fmt( Punk::Skintone[ 'dark' ] )
pp Punk::Skintone[ 'xxx' ]


pp Punk::Eyes.colors

puts Color.fmt( Punk::Eyes.colors[ 'blue' ] )
puts Color.fmt( Punk::Eyes.colors[ 'green' ] )
puts Color.fmt( Punk::Eyes.colors[ 'brown' ] )
pp Punk::Eyes.colors[ 'yellow' ]

puts Color.fmt( Punk::Eyes[ 'b' ] )
puts Color.fmt( Punk::Eyes[ 'g' ] )
puts Color.fmt( Punk::Eyes[ 'r' ] )
pp Punk::Eyes[ 'yellow' ]


pp Punk::Hair.colors

puts Color.fmt( Punk::Hair[ 'blonde' ] )
puts Color.fmt( Punk::Hair[ 'brunette' ] )
puts Color.fmt( Punk::Hair[ 'pink' ] )
pp Punk::Hair[ 'yellow' ]


__END__

skintones = ColorBundle.read( './config/skintone/ye_olde_punks.csv',
                              './config/skintone/color_me_human.csv',
                              './config/skintone/dr_ellis_monk.csv',
                              './config/skintone/punks_not_dead.csv' )
pp skintones


puts Color.fmt( skintones[ '1' ] )
puts Color.fmt( skintones[ 'mid' ] )
puts Color.fmt( skintones[ 'dark' ] )
pp skintones[ 'xxx' ]

puts Color.fmt( skintones[ 'ivory' ] )
puts Color.fmt( skintones[ 'gold' ] )
puts Color.fmt( skintones[ 'gold 1' ] )

puts Color.fmt( skintones[ '01' ] )
puts Color.fmt( skintones[ '10' ] )


puts "bye"
