module Punk

  
module Robot    ## make it a class - why? why not?
    
  BASE_M = Image.read( "#{Pixelart::Module::Punkmaker.root}/config/robot-male.png" )
  BASE_F = Image.read( "#{Pixelart::Module::Punkmaker.root}/config/robot-female.png" )
        
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
    color = Color.from_hex( color )  if color.is_a?( String )

# 384 pixels #000000 / rgb(  0   0   0) - hsl(  0°   0%   0%) - hsv(  0°   0%   0%) - α(  0%) - TRANSPARENT
# 74 pixels #000000 / rgb(  0   0   0) - hsl(  0°   0%   0%) - hsv(  0°   0%   0%)           - BLACK
# 100 pixels #a4a4a4 / rgb(164 164 164) - hsl(  0°   0%  64%) - hsv(  0°   0%  64%)           - 8-BIT GRAYSCALE #164
# 16 pixels #535353 / rgb( 83  83  83) - hsl(  0°   0%  33%) - hsv(  0°   0%  33%)           - 8-BIT GRAYSCALE #83
# 2 pixels #a9f7ff / rgb(169 247 255) - hsl(186° 100%  83%) - hsv(186°  34% 100%)
# ---
# 427 pixels #000000 / rgb(  0   0   0) - hsl(  0°   0%   0%) - hsv(  0°   0%   0%) - α(  0%) - TRANSPARENT
# 65 pixels #000000 / rgb(  0   0   0) - hsl(  0°   0%   0%) - hsv(  0°   0%   0%)           - BLACK
# 67 pixels #a4a4a4 / rgb(164 164 164) - hsl(  0°   0%  64%) - hsv(  0°   0%  64%)           - 8-BIT GRAYSCALE #164
# 15 pixels #535353 / rgb( 83  83  83) - hsl(  0°   0%  33%) - hsv(  0°   0%  33%)           - 8-BIT GRAYSCALE #83
# 2 pixels #a9f7ff / rgb(169 247 255) - hsl(186° 100%  83%) - hsv(186°  34% 100%)

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

  color_map = {
    '#a4a4a4' =>  base,
    '#535353' =>  darker,
  }

  color_map
end
end   # module Robot
end   # module Punk



