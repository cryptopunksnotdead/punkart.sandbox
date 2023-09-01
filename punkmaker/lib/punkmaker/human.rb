

module Punk

module Human   ## make it a class - why? why not?

  BASE_M = Image.read( "#{Pixelart::Module::Punkmaker.root}/config/human-male4.png" )
  BASE_F = Image.read( "#{Pixelart::Module::Punkmaker.root}/config/human-female4.png" )


  def self.make( color=nil,
                 shine: true,
                 eye_color: nil,
                 gender: 'm'  )

    base =   gender == 'm' ? BASE_M : BASE_F

    ## note: make a copy of base 
    punk = Image.new( base.width, base.height )  
    punk.compose!( base )
    
    if color    ## change skin tone (& eyebrows)?
      color_map = derive_color_map( color )  
      punk = punk.change_colors( color_map )
    end

    if eye_color    ## change eye color?
       eye_color = Color.parse( eye_color )    if eye_color.is_a?( String )
       if gender == 'm'
         punk[9,12]  = eye_color
         punk[14,12] = eye_color
       else
         punk[9,13] = eye_color
         punk[14,13] = eye_color
       end
    end

    if shine     ## add shine?
       # note: default shine color is white
       shine_color =    color ? derive_shine( color ) : 0xffffffff
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
 

  ##
  ## todo/check:
  ##  add a derive_colors or dervice_skintones  method - why? why not?
  ##    - change to name skintone_palette - why? why not?
  ## def self.derive_skintone_colors( color  or base )  ???

  def self.derive_color_map( color )
      color = Color.parse( color )  if color.is_a?( String )

      base = color

      hsl  = Color.to_hsl( color )
      pp hsl

      h, s, l = hsl
      h = h % 360   # make always positive (might be -50 or such)
      pp [h,s,l]

      ## sub one degree on hue on color wheel (plus +10% on lightness??)
      ## darker
      eyebrows = Color.from_hsl(
                     h,
                     s,
                     [0.05, l-0.1].max)

      color_map = {
         '#ead9d9'  =>   base,
         '#a58d8d'  =>   eyebrows,
      }
      color_map
  end

end   # module Human
end   # module Punk





