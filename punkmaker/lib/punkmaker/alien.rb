

module Punk

module Alien   ## make it a class - why? why not?
  
  BASE_M = Image.read( "#{Pixelart::Module::Punkmaker.root}/config/alien-male.png" )
  BASE_F = Image.read( "#{Pixelart::Module::Punkmaker.root}/config/alien-female.png" )
  
  
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

## todo/check - check "formula" used in skintones script for humans!!!
lighter = Color.from_hsl(
   (h+1)%360,   # todo/check: make lighter by -1 on hue? or +1????
   [1.0,s+0.10].min,
   [1.0,l+0.25].min)


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
    '#f1ffff' => lighter,
    '#9be0e0' => darker,
    '#75bdbd' => darkest,
}

color_map
end

end   # module Alien
end   # module Punk

