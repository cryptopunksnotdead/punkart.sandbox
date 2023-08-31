module Punk

  
module Orc    ## make it a class - why? why not?
    
  BASE_M = Image.read( "#{Pixelart::Module::Punkmaker.root}/config/orc-male.png" )
  BASE_F = Image.read( "#{Pixelart::Module::Punkmaker.root}/config/orc-female.png" )
        
  def self.make( color,
                   gender: 'm'  )
      color_map = derive_color_map( color )
  
      punk = nil
      if gender == 'm'
          punk = BASE_M.change_colors( color_map )
      else
          punk = BASE_F.change_colors( color_map )
      end
      punk
  end
  
  def self.derive_color_map( color )
    color = Color.parse( color )  if color.is_a?( String )

# 380 pixels #000000 / rgb(  0   0   0) - hsl(  0°   0%   0%) - hsv(  0°   0%   0%) - α(  0%) - TRANSPARENT
# 63 pixels #000000 / rgb(  0   0   0) - hsl(  0°   0%   0%) - hsv(  0°   0%   0%)           - BLACK
# 120 pixels #50650e / rgb( 80 101  14) - hsl( 74°  76%  23%) - hsv( 74°  86%  40%)
# 7 pixels #171a08 / rgb( 23  26   8) - hsl( 70°  53%   7%) - hsv( 70°  69%  10%)
# 6 pixels #ffffff / rgb(255 255 255) - hsl(  0°   0% 100%) - hsv(  0°   0% 100%)           - WHITE
# ---
# 423 pixels #000000 / rgb(  0   0   0) - hsl(  0°   0%   0%) - hsv(  0°   0%   0%) - α(  0%) - TRANSPARENT
# 55 pixels #000000 / rgb(  0   0   0) - hsl(  0°   0%   0%) - hsv(  0°   0%   0%)           - BLACK
# 87 pixels #50650e / rgb( 80 101  14) - hsl( 74°  76%  23%) - hsv( 74°  86%  40%)
# 7 pixels #171a08 / rgb( 23  26   8) - hsl( 70°  53%   7%) - hsv( 70°  69%  10%)
# 4 pixels #ffffff / rgb(255 255 255) - hsl(  0°   0% 100%) - hsv(  0°   0% 100%)           - WHITE
base = color

hsl  = Color.to_hsl( color )
pp hsl

h, s, l = hsl
h = h % 360   # make always positive (might be -50 or such)
pp [h,s,l]


darker = Color.from_hsl(
  h,
  s,
   [0.0,l-0.16].max)



color_map = {
  '#50650e' =>  base,
  '#171a08' =>  darker,
}

color_map
end
end   # module Orc
end   # module Punk

