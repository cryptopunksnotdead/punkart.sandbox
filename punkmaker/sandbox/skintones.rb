#################################
# to run use:
#
#  $ ruby sandbox/skintones.rb

$LOAD_PATH.unshift( "./lib" )
require 'punkmaker'

pp Punk::Skintone.bundle

puts Color.fmt( Punk::Skintone[ '1' ] )
puts Color.fmt( Punk::Skintone[ 'mid' ] )
puts Color.fmt( Punk::Skintone[ 'dark' ] )
pp Punk::Skintone[ 'xxx' ]


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
