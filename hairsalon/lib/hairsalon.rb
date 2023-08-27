require 'punkmaker'


# our code
require_relative 'hairsalon/version'  # let version go first



module Hairsalon
  module Hair
    def self.maker
      @maker ||= Punk::Hair::Maker.read( "#{Pixelart::Module::Hairsalon.root}/config/spritesheet-hair.png",
                                         "#{Pixelart::Module::Hairsalon.root}/config/spritesheet-hair.csv",
                                         width: 24, height: 24,
                                         colors: Punk::Hair.colors )
    end
    def self.sheet() maker.sheet; end
    def self.colors() maker.colors; end
           
    def self.make( style, color: 'black' )
       maker.make( style, color: color )
    end

    ## "low-level" convenience helper/wrapper/forwarder
    def self.colorize( hair, color: )  Punk::Hair.colorize( hair, color: color ); end
  end # module Hair
end # module Hairsalon



## add aliases - why? why not?
Salon     = Hairsalon
HairSalon = Hairsalon



puts Pixelart::Module::Hairsalon.banner    ## say hello
