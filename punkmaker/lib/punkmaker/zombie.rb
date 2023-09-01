module Punk

  
module Zombie    ## make it a class - why? why not?
    
  BASE_M = Image.read( "#{Pixelart::Module::Punkmaker.root}/config/zombie-male.png" )
  BASE_F = Image.read( "#{Pixelart::Module::Punkmaker.root}/config/zombie-female.png" )
        
  def self.make( color=nil,
                  shine: true,
                   gender: 'm'  )
    base =   gender == 'm' ? BASE_M : BASE_F

    ## note: make a copy of base 
    punk = Image.new( base.width, base.height )  
    punk.compose!( base )
    
    if color    
      color_map = derive_color_map( color )  
      punk = punk.change_colors( color_map )
    end

    if shine
      shine_color =    color ? derive_shine( color ) : 0x9bbc88ff
      if gender == 'm'
        punk[9,7] = shine_color
        punk[8,8] = shine_color
      else 
        punk[9,9] = shine_color
      end
     end   

    punk
  end


  def self.derive_shine( color )
## was before - reuse - why? why not?
## todo/check - check "formula" used in skintones script for humans!!!
##  lighter = Color.from_hsl(
##    (h+1)%360,   # todo/check: make lighter by -1 on hue? or +1????
##   [1.0,s+0.10].min,
##   [1.0,l+0.25].min)

    color = Color.parse( color )  if color.is_a?( String )
  
    hsv  = Color.to_hsv( color )
    # pp hsv

    h, s, v = hsv
    h = h % 360   # make always positive (might be -50 or such)
    ## pp [h,s,v]

    ## add extra saturation if v(alue) / brightness is max 1.0 - why? why not?
    sdiff = v >= 0.99 ? 0.25 : 0.15

    lighter =  Color.from_hsv( h, [0.0, s-sdiff].max, [v+0.1,1.0].min )  
    lighter
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


  color_map = {
      '#7da269' =>  base,
      '#5e7253' => darker,
  }

  color_map
end
end   # module Zombie
end   # module Punk


