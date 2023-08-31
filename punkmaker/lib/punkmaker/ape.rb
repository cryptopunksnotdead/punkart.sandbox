module Punk

  
module Ape    ## make it a class - why? why not?
    
  BASE_M = Image.read( "#{Pixelart::Module::Punkmaker.root}/config/ape-male.png" )
  BASE_F = Image.read( "#{Pixelart::Module::Punkmaker.root}/config/ape-female.png" )
        
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
   
    darkest = color

  hsl  = Color.to_hsl( color )
  pp hsl

  h, s, l = hsl
  h = h % 360   # make always positive (might be -50 or such)
  pp [h,s,l]

  darker = Color.from_hsl(
    h,
    s,
    [1.0,l+0.05].min)

  light = Color.from_hsl(
     (h+1)%360,
     [1.0,s+0.10].min,
     [1.0,l+0.20].min)

  lighter = Color.from_hsl(
    (h+1)%360,
    [1.0,s+0.20].min,
    [1.0,l+0.35].min)

  color_map = {
      '#352410' =>  darkest,  # darkest  - 56 pixels (base!!)
      '#6a563f' => darker,    # darker   -  4 pixels
      '#856f56' => light,     # light    - 63 pixels
      '#a98c6b' => lighter    # lighter
  }

  color_map
end
end   # module Ape
end   # module Punk

