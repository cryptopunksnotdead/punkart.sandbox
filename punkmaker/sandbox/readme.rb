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



NEONGREEN     =  '#c3ff00'
DEEPPINK      =  '#ff1493'
DEEPPURPLE    =  '#aa4399'


colors = {
  'green'  =>  NEONGREEN,
  'pink'   =>  DEEPPINK,
  'purple' =>  DEEPPURPLE,
}

types = [Punk::Human]+types  ## add human first

types.each do |type|
    ## get last name e.g. Orc from Punk::Orc
    name = type.name.split('::')[-1].downcase
    colors.each do |color_name, color|  
      punk_m = type.make( color, gender: 'm' )
      punk_m.save( "tmp3/#{name}-male_#{color_name}.png" )
      punk_m.zoom(4).save( "tmp3/#{name}-#{color_name}@4x.png" )

      punk_f = type.make( color, gender: 'f' )
      punk_f.save( "tmp3/#{name}-female_#{color_name}.png" )
      punk_f.zoom(4).save( "tmp3/#{name}-female_#{color_name}@4x.png" )
    end
end



puts "bye"