

module Punk
  module Hair
    def self.colors
      @colors ||= ColorBundle.read( './config/colors/hair.csv' )
    end
    def self.[]( name )  colors.find_by( name: name ); end



    def self.derive_color_map( color )
        color = Color.from_hex( color )  if color.is_a?( String )
  
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
        
            color_map = {
                     '0000ffff' => color,
                     '2a2affff' => lighter,
                     '5454ffff' => lightest, 
                     '0000ddff' => darker,
            }
            color_map
    end # method self.derive_color_map

    def self.colorize( hair, color: )  
        # "low-level" with no validity checks on hair image and passed in color (integer)
       color_map = derive_color_map( color )
       hair.change_colors( color_map )
    end


    class Maker   ## rename to Factory or Studio or Generator or .. such - why? why not? 
        def self.read( image_path, meta_path, width:, height:, colors:  )
          sheet = Pixelart::Spritesheet.read( image_path, meta_path,
                     width: width, 
                     height: height )
          new( sheet, colors: colors ) 
        end
    
        attr_reader :sheet, :colors
       
        def initialize( sheet, colors: ) 
                @sheet = sheet
                @colors = colors
             end
        def find_by( name: )  @sheet.find_by( name: name ); end
         

        def make( style, color: 'black' )   ## change name to colorize - why? why not?
            ## pass-through  shavedhead (no colors - alpha only) - why? why not?
            hair = @sheet.find_by( name: style )
            if hair.nil?
              puts "!! ERROR - unknow hair style >#{style}<; sorry"
              exit 1
            end
     
            color = parse_hair_color( color )

            color_map = Hair.derive_color_map( color )
            hair.change_colors( color_map )
        end

        def parse_hair_color( color )
          if color.is_a?( String ) 
            @colors[ color ] || Color.from_hex( color )  
          else ## assume color is integer - assert - why? why not?
            color
          end      
        end
    end  ## (embedded) class Maker
  end # module Hair
end # module Punk
