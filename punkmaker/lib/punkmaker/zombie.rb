module Punk

  
module Zombie    ## make it a class - why? why not?
    
  BASE_M = Image.read( "#{Pixelart::Module::Punkmaker.root}/config/zombie-male.png" )
  BASE_F = Image.read( "#{Pixelart::Module::Punkmaker.root}/config/zombie-female.png" )
        
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

#    2 pixels #9bbc88 / rgb(155 188 136) - hsl( 98°  28%  64%)  - lighter
#  125 pixels #7da269 / rgb(125 162 105) - hsl( 99°  23%  52%) - base  (use as base)
#    7 pixels #5e7253 / rgb( 94 114  83) - hsl( 99°  16%  39%)  - darker

  base = color

  hsl  = Color.to_hsl( color )
  pp hsl

  h, s, l = hsl
  h = h % 360   # make always positive (might be -50 or such)
  pp [h,s,l]

  darker = Color.from_hsl(
    h,
    [0.0,s-0.05].max,
    [0.0,l-0.12].max)

  ## todo/check - check "formula" used in skintones script for humans!!!
  lighter = Color.from_hsl(
     (h+1)%360,   # todo/check: make lighter by -1 on hue? or +1????
     [1.0,s+0.10].min,
     [1.0,l+0.25].min)


  color_map = {
      '#7da269' =>  base,
      '#5e7253' => darker,
      '#9bbc88' => lighter
  }

  color_map
end
end   # module Zombie
end   # module Punk


