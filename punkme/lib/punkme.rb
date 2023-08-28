## 3rd party
require 'punkmaker'
require 'barbershop'   ## men's hair styles & more
require 'hairsalon'    ## women's hair styles & more

require 'punks'   ## more accessories



## our own code
require_relative 'punkme/version'    # note: let version always go first



module Punkme

  SKINTONE_DARK = 0x713f1dff


class Image < Pixelart::Image


  ## change/rename generate to make - why? why not?
  ##   or add/use alias - why? why not?
  ##
  ##  names (attributes) MUST go first -
  ##   check if possible after keyword args ???
  def self.generate( 
                      skintone: SKINTONE_DARK,
                       gender:  'm',
                       hair: nil,
                       hair_color: nil )

      skintone = Color.parse( skintone )  unless skintone.is_a?( Integer )

      punk = if gender == 'm'
                Punk::Human.make( skintone, gender: 'm' )
             else  ## assume f/female
                Punk::Human.make( skintone, gender: 'f' )
             end

      if hair
          hair_color = 'black'  if hair_color.nil? 
         img =  if gender == 'm'
                      Barbershop::Hair.make( hair, color: hair_color )
                else   ## assume f/female
                      Hairsalon::Hair.make( hair, color: hair_color )
                end
          punk.compose!( img )
      end

      ## wrap as Punkme image (keeps metadata) - why? why not?
      new( punk.image, gender: gender,
                       skintone: skintone,
                       hair: hair,
                       hair_color: hair_color )
  end   # method self.generate


  attr_reader :gender,
              :skintone,
              :accessories

  def initialize( img, gender:, 
                       skintone: nil,
                       hair: nil,
                       hair_color: nil )
     @gender     = gender
     @skintone   = skintone
     @hair       = hair
     @hair_color = hair_color

     @accessories = []
     super( nil, nil, img )  ### fix Image#initialze to accept "raw" image only
  end

  def add( *names )      
      punk = Image.new( Pixelart::Image.new( width, height ).image,   
                         gender: @gender,
                         skintone: @skintone )
      punk.compose!( self ) ## add ourselves (that is, base punk) here

      ## add (optional) attributes
      names.each do |name|
        img = if gender == 'm'
                Punk::Sheet.find_by( name: name, gender: 'm', size: 'l' )
              else
                Punk::Sheet.find_by( name: name, gender: 'f', size: 's' )
             end
         punk.compose!( img )
         @accessories << name
      end
      punk
  end
end # class Image
end # module Punkme


###
#  add some convience shortcuts / alternate spelling variants
PunkMe  = Punkme


puts Pixelart::Module::Punkme.banner    # say hello
