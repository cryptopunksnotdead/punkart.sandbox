module Punk

  
module Vampire    ## make it a class - why? why not?
    
  BASE_M = Image.read( "#{Pixelart::Module::Punkmaker.root}/config/vampire-male.png" )
  BASE_F = Image.read( "#{Pixelart::Module::Punkmaker.root}/config/vampire-female.png" )
        
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

# 366 pixels #000000 / rgb(  0   0   0) - hsl(  0°   0%   0%) - hsv(  0°   0%   0%) - α(  0%) - TRANSPARENT
# 67 pixels #000000 / rgb(  0   0   0) - hsl(  0°   0%   0%) - hsv(  0°   0%   0%)           - BLACK
# 126 pixels #e0e0e0 / rgb(224 224 224) - hsl(  0°   0%  88%) - hsv(  0°   0%  88%)           - 8-BIT GRAYSCALE #224
# 4 pixels #535353 / rgb( 83  83  83) - hsl(  0°   0%  33%) - hsv(  0°   0%  33%)           - 8-BIT GRAYSCALE #83
# 2 pixels #ffffff / rgb(255 255 255) - hsl(  0°   0% 100%) - hsv(  0°   0% 100%)           - WHITE
# 2 pixels #f6000b / rgb(246   0  11) - hsl(357° 100%  48%) - hsv(357° 100%  96%)
# 9 pixels #131313 / rgb( 19  19  19) - hsl(  0°   0%   7%) - hsv(  0°   0%   7%)           - 8-BIT GRAYSCALE #19
# ---
# 403 pixels #000000 / rgb(  0   0   0) - hsl(  0°   0%   0%) - hsv(  0°   0%   0%) - α(  0%) - TRANSPARENT
# 62 pixels #000000 / rgb(  0   0   0) - hsl(  0°   0%   0%) - hsv(  0°   0%   0%)           - BLACK
# 92 pixels #e0e0e0 / rgb(224 224 224) - hsl(  0°   0%  88%) - hsv(  0°   0%  88%)           - 8-BIT GRAYSCALE #224
# 4 pixels #535353 / rgb( 83  83  83) - hsl(  0°   0%  33%) - hsv(  0°   0%  33%)           - 8-BIT GRAYSCALE #83
# 2 pixels #ffffff / rgb(255 255 255) - hsl(  0°   0% 100%) - hsv(  0°   0% 100%)           - WHITE
# 2 pixels #f6000b / rgb(246   0  11) - hsl(357° 100%  48%) - hsv(357° 100%  96%)
# 11 pixels #131313 / rgb( 19  19  19) - hsl(  0°   0%   7%) - hsv(  0°   0%   7%)           - 8-BIT GRAYSCALE #19
base = color

hsl  = Color.to_hsl( color )
pp hsl

h, s, l = hsl
h = h % 360   # make always positive (might be -50 or such)
pp [h,s,l]


darker = Color.from_hsl(
  h,
  s,
   [0.0,l-0.20].max)


darkest = Color.from_hsl(
  h,
  s,
   [0.0,l-0.35].max)

color_map = {
  '#e0e0e0' =>  base,
  '#535353' =>  darker,
  '#131313' =>  darkest,
}

color_map
end
end   # module Vampire
end   # module Punk

