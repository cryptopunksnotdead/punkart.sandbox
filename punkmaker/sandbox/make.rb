#################################
# to run use:
#
#  $ ruby sandbox/make.rb

$LOAD_PATH.unshift( "./lib" )
require 'punkmaker'


GOLD          =  '#ffd700'
GOLDENROD     =  '#daa520'
DARKGOLDENROD =  '#b8860b'

DEEPPINK      =  '#ff1493'
DEEPPURPLE    =  '#aa4399'


RED    = '#ff0000'
BLUE   = '#0000ff'
ORANGE =  '#ffa500'

colors = {
  'gold'   =>  GOLD,
  'gold2'  =>  GOLDENROD,
  'gold3'  =>  DARKGOLDENROD,
  'pink'   =>  DEEPPINK,
  'purple' =>  DEEPPURPLE,
}


types = {
  'human' => Punk::Human,
  'mummy' => Punk::Mummy,
  'alien' => Punk::Alien, 
}

types.each do |type, type_class|
  colors.each do |name, color|
 
    punk_m = type_class.make( color,  gender: 'm' )
    punk_m.save( "./tmp/#{type}-male_#{name}.png" )
    punk_m.zoom(4).save( "./tmp/#{type}-male_#{name}@4x.png" )

    punk_f = type_class.make( color,  gender: 'f' )
    punk_f.save( "./tmp/#{type}-female_#{name}.png" )
    punk_f.zoom(4).save( "./tmp/#{type}-female_#{name}@4x.png" )
  end
end


puts "bye"