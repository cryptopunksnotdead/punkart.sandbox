

module Punk

module Alien   ## make it a class - why? why not?
  
  BASE_M = Image.read( "#{Pixelart::Module::Punkmaker.root}/config/alien-male.png" )
  BASE_F = Image.read( "#{Pixelart::Module::Punkmaker.root}/config/alien-female.png" )
  
  
  def self.make( color=nil,
                 shine: true,
                 gender: 'm'  )

    base =   gender == 'm' ? BASE_M : BASE_F

    ## note: make a copy of base 
    punk = Image.new( base.width, base.height )  
    punk.compose!( base )
    
    if color    ## change skin tone (& eyebrows)?
      color_map = derive_color_map( color )  
      punk = punk.change_colors( color_map )
    end

   
    if shine
     shine_color =    color ? derive_shine( color ) : 0xf1ffffff
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
## was before - reuse old formula- why? why not?
## todo/check - check "formula" used in skintones script for humans!!!
## lighter = Color.from_hsl(
##   (h+1)%360,   # todo/check: make lighter by -1 on hue? or +1????
##   [1.0,s+0.10].min,
##   [1.0,l+0.25].min)

    color = Color.parse( color )  if color.is_a?( String )
  
    hsv  = Color.to_hsv( color )
    # pp hsv

    h, s, v = hsv
    h = h % 360   # make always positive (might be -50 or such)
    ## pp [h,s,v]

    ## add extra saturation if v(alue) / brightness is max 1.0 - why? why not?
    sdiff = v >= 0.99 ? 0.35 : 0.25

    lighter =  Color.from_hsv( h, [0.0, s-sdiff].max, [v+0.1,1.0].min )  
    lighter
  end


  
def self.derive_color_map( color )

# 2 pixels #f1ffff / rgb(241 255 255) - hsl(180° 100%  97%)  - lighter
# 125 pixels #c8fbfb / rgb(200 251 251) - hsl(180°  86%  88%)   - base (use as base)
#  6 pixels #9be0e0 / rgb(155 224 224) - hsl(180°  53%  74%)   - darker
#  2 pixels #75bdbd / rgb(117 189 189) - hsl(180°  35%  60%)  - darkest
color = Color.parse( color )  if color.is_a?( String )
base = color

hsl  = Color.to_hsl( color )
pp hsl

h, s, l = hsl
h = h % 360   # make always positive (might be -50 or such)
pp [h,s,l]


darker = Color.from_hsl(
  h,
  [0.0,s-0.05].max,
  [0.0,l-0.10].max)

darkest = Color.from_hsl(
  h,
  [0.0,s-0.10].max,
  [0.0,l-0.20].max)


color_map = {
    '#c8fbfb' =>  base,
    '#9be0e0' => darker,
    '#75bdbd' => darkest,
}

color_map
end

end   # module Alien
end   # module Punk

