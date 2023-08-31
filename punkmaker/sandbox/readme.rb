#################################
# to run use:
#
#  $ ruby sandbox/readme.rb

$LOAD_PATH.unshift( "./lib" )
require 'punkmaker'



GOLD  =  '#ffd700'

###
# humans
punk_m = Punk::Human.make( GOLD,  gender: 'm' )
punk_m.save( 'tmp3/human-male_gold.png' )
punk_m.zoom(4).save( 'tmp3/human-male_gold@4x.png' )

punk_f = Punk::Human.make( GOLD, gender: 'f' )
punk_f.save( 'tmp3/human-female_gold.png' )
punk_f.zoom(4).save( 'tmp3/human-female_gold@4x.png' )

###
# more base (arche)types

types = [
  Punk::Mummy,
  Punk::Alien, 
  Punk::Ape,
  Punk::Skeleton,
  Punk::Zombie,
  Punk::Demon,
  Punk::Orc,
  Punk::Robot,
  Punk::Vampire,   
]

types.each do |type|
    ## get last name e.g. Orc from Punk::Orc
    name = type.name.split('::')[-1].downcase
  
   punk_m = type.make( GOLD, gender: 'm' )
   punk_m.save( "tmp3/#{name}-male_gold.png" )
   punk_m.zoom(4).save( "tmp3/#{name}-male_gold@4x.png" )

   punk_f = type.make( GOLD, gender: 'f' )
   punk_f.save( "tmp3/#{name}-female_gold.png" )
   punk_f.zoom(4).save( "tmp3/#{name}-female_gold@4x.png" )
end

puts "bye"