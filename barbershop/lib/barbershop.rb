require 'pixelart'
require 'spritesheet'


# our code
require_relative 'barbershop/version'  # let version go first



module Barbershop
  module Hair
   def self.sheet
      @sheet ||= Pixelart::Spritesheet.read( 
                     "#{Pixelart::Module::Barbershop.root}/config/spritesheet-hair.png",
                     "#{Pixelart::Module::Barbershop.root}/config/spritesheet-hair.csv",
                                    width: 24,
                                    height: 24 )
   end
   def self.find_by( name: )  sheet.find_by( name: name ); end

   def self.colors
      @colors ||= begin
                    {
        'black'  => '000000',
      
        'brown'     => '51360c',   # (darker) brown
        'brunette'  => 'a66e2c',   # lighter brown
      
        'orange'  => 'e65700',
        'red'     => 'e22626',
        'pink'    => 'ff8ebe',
        'purple'  => '710cc7',
      
        'green'   => '28b143',
      
        'blonde' => 'fff68e',
        'silver' => 'e0e0e0',
        'white'  => 'FFFFFF',
      }.reduce( {} ) do |h, (name, color_hex)|
         h[ name ] = Color.from_hex( color_hex )
         h
        end
      end
      @colors
    end

    def self.colorize( hair, color: )     
            h,s,v = Color.to_hsv( color, include_alpha: false )
            h = h % 360    ## make sure h(ue) is always positive!!!
            puts "    #{[h,s,v].inspect}"
        
              # lighter  - #2a2aff / rgb( 42  42 255) - hsl(240° 100%  58%) - hsv(240°  84% 100%)
              #   - used in hair( frumpy, f/pigtails3, f/straight3, f/wild4, f/wild5 )
        
              # lightest -  #5454ff / rgb( 84  84 255) - hsl(240° 100%  66%) - hsv(240°  67% 100%)
              #  - used in hair(mohawk thin)
        
              # darker   - #0000dd / rgb(  0   0 221) - hsl(240° 100%  43%) - hsv(240° 100%  87%)
              #  - used in hair(mohawk)
        
              ## todo/fix: make lighter/darker formula more "robust"/ better!!!
            if color == 0x000000ff   # black
              # hsv(  0°   0%   0%)
              lighter =  Color.from_hsv( h, 0.0, 0.16 )
              lightest = Color.from_hsv( h, 0.0, 0.33 )
              darker   = Color.from_hsv( h, 0.0, 0.0 )  ## darker than black not possible ;-)
            elsif color == 0xe0e0e0ff   # silver
             #  hsv(  0°   0%  88%)
              lighter =  Color.from_hsv( h, 0.0, 1.0 )  # white
              lightest = Color.from_hsv( h, 0.0, 1.0 )  # white
              darker   = Color.from_hsv( h, 0.0, [0.0, v-0.13].max )
            elsif color == 0xffffffff   # white
             #  hsv(  0°   0% 100%)
               lighter =  Color.from_hsv( h, 0.0, [0.0, v-0.11].max )  # note: make darker
               lightest = Color.from_hsv( h, 0.0, 1.0 )
               darker   = Color.from_hsv( h, 0.0, [0.0, v-0.16].max )   
            else
              lighter =  Color.from_hsv( h, [0.0, s-0.16].max, v )
              lightest = Color.from_hsv( h, [0.0, s-0.33].max, v )
              darker   = Color.from_hsv( h, s, [0.0, v-0.13].max )
            end
        
            hair.change_colors( {
                     '0000ffff' => color,
                     '2a2affff' => lighter,
                     '5454ffff' => lightest, 
                     '0000ddff' => darker,
                  })
    end # method self.colorize
        
           
   def self.make( style, color: 'black' )
       ## pass-through  shavedhead (no colors - alpha only) - why? why not?
       hair = sheet.find_by( name: style )
       if hair.nil?
         puts "!! ERROR - unknow hair style >#{style}<; sorry"
         exit 1
       end

       color_key = color.downcase.gsub(' ','')
       rgba  = colors[ color_key ]
       if rgba.nil?
        puts "!! ERROR - unknow hair color >#{style}<; sorry"
        exit 1
      end

       colorize( hair, color: rgba )
   end


  end # module Hair
end # module Barbershop



## add aliases - why? why not?
Barbers    = Barbershop
Barber     = Barbershop
BarberShop = Barbershop



puts Pixelart::Module::Barbershop.banner    ## say hello
