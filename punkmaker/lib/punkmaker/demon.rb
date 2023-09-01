module Punk

  
module Demon    ## make it a class - why? why not?
    
  BASE_M = Image.read( "#{Pixelart::Module::Punkmaker.root}/config/demon-male.png" )
  BASE_F = Image.read( "#{Pixelart::Module::Punkmaker.root}/config/demon-female.png" )
        
  def self.make( color=nil,
                   gender: 'm'  )
       base =   gender == 'm' ? BASE_M : BASE_F

    ## note: make a copy of base 
    punk = Image.new( base.width, base.height )  
    punk.compose!( base )
    
    if color   
      color_map = derive_color_map( color )  
      punk = punk.change_colors( color_map )
    end

    punk
                
  end
  
  def self.derive_color_map( color )
    color = Color.parse( color )  if color.is_a?( String )

# 134 pixels #850008 / rgb(133   0   8) - hsl(356° 100%  26%)  - base
#   2 pixels #630006 / rgb( 99   0   6) - hsl(356° 100%  19%)  - darker
#   4 pixels #390102 / rgb( 57   1   2) - hsl(359°  97%  11%)  - darkest
#
# 373 pixels #000000 / rgb(  0   0   0) - hsl(  0°   0%   0%) - α(  0%) - TRANSPARENT
#  63 pixels #000000 / rgb(  0   0   0) - hsl(  0°   0%   0%)           - BLACK

base = color

hsl  = Color.to_hsl( color )
pp hsl

h, s, l = hsl
h = h % 360   # make always positive (might be -50 or such)
pp [h,s,l]

darker = Color.from_hsl(
  h,
  s,
  [0.0,l-0.08].max)

darkest = Color.from_hsl(
  (h+2)%360,
  [0.0,s-0.05].max,
  [0.0,l-0.15].max)


color_map = {
    '#850008' =>  base,
    '#630006' => darker,
    '#390102' => darkest,
}

color_map
end
end   # module Demon
end   # module Punk
