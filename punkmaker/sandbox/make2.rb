#################################
# to run use:
#
#  $ ruby sandbox/make2.rb

$LOAD_PATH.unshift( "./lib" )
require 'punkmaker'

GOLD          =  '#ffd700'
DEEPPINK      =  '#ff1493'

punks = [
 Punk::Human.base,
 Punk::Human.base( gender: 'f' ),

 Punk::Human.make( GOLD, eye_color: 'blue' ),
 Punk::Human.make( GOLD, eye_color: 'green' ),
 Punk::Human.make( GOLD, eye_color: 'brown' ),
 Punk::Human.make( GOLD, eye_color: 'purple' ),
 Punk::Human.make( GOLD, eye_color: 'red' ),
 Punk::Human.make( DEEPPINK, gender: 'f', eye_color: 'blue' ),
 Punk::Human.make( DEEPPINK, gender: 'f', eye_color: 'green' ),
 Punk::Human.make( DEEPPINK, gender: 'f', eye_color: 'brown' ),
 Punk::Human.make( DEEPPINK, gender: 'f', eye_color: 'purple' ),
 Punk::Human.make( DEEPPINK, gender: 'f', eye_color: 'red' ),

 Punk::Human.make,
 Punk::Human.make( shine: false ), 
 Punk::Human.make( gender: 'f' ),
 Punk::Human.make( gender: 'f', shine: false ),   
 
 Punk::Human.make( GOLD ),
 Punk::Human.make( GOLD, shine: false ), 
 Punk::Human.make( GOLD, gender: 'f' ),
 Punk::Human.make( GOLD, gender: 'f', shine: false ),   

 Punk::Human.make( DEEPPINK ),
 Punk::Human.make( DEEPPINK, shine: false), 
 Punk::Human.make( DEEPPINK, gender: 'f' ),
 Punk::Human.make( DEEPPINK, gender: 'f', shine: false ),   

 Punk::Alien.make, 
 Punk::Alien.make( GOLD ), 
 Punk::Alien.make( shine: false ), 
 Punk::Zombie.make,
 Punk::Zombie.make( shine: false ),
 
 Punk::Mummy.make,
  Punk::Ape.make,
  Punk::Skeleton.make,
  Punk::Demon.make,
  Punk::Orc.make,
  Punk::Robot.make,
  Punk::Vampire.make,

  Punk::Alien.make( gender: 'f' ), 
  Punk::Alien.make( GOLD, gender: 'f'  ), 
  Punk::Alien.make( gender: 'f', shine: false ), 
  Punk::Zombie.make( gender: 'f' ),
  Punk::Zombie.make( gender: 'f', shine: false ),

  Punk::Mummy.make( gender: 'f' ),
  Punk::Ape.make( gender: 'f' ),
  Punk::Skeleton.make( gender: 'f' ),
  Punk::Demon.make( gender: 'f' ),
  Punk::Orc.make( gender: 'f' ),
  Punk::Robot.make( gender: 'f' ),
  Punk::Vampire.make( gender: 'f' ),
]


punks.each_with_index do |punk,i|
   punk.save( "./tmp4/punk#{i+1}.png" )
   punk.zoom(8).save( "./tmp4/punk#{i+1}@8x.png" )
end


puts "bye"