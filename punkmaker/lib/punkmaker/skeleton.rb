module Punk

module Skeleton    ## make it a class - why? why not?
    
  BASE_M = Image.read( "#{Pixelart::Module::Punkmaker.root}/config/skeleton-male.png" )
  BASE_F = Image.read( "#{Pixelart::Module::Punkmaker.root}/config/skeleton-female.png" )
        
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
  
# 122 pixels #e0e0e0 / rgb(224 224 224) - hsl(  0°   0%  88%)           - 8-BIT GRAYSCALE #224

# 385 pixels #000000 / rgb(  0   0   0) - hsl(  0°   0%   0%) - α(  0%) - TRANSPARENT
#  69 pixels #000000 / rgb(  0   0   0) - hsl(  0°   0%   0%)           - BLACK

  base = color

  color_map = {
    '#e0e0e0' =>  base,
  }

  color_map
end
end   # module Skeleton
end   # module Punk

