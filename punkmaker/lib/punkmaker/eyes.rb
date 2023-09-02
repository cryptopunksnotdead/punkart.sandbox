
module Punk
module Eyes

def self.colors
  @colors ||= ColorBundle.read( './config/colors/eyes.csv' ) 
end
def self.[]( name )  colors.find_by( name: name ); end

end   # module Eyes
end   # module Punk
        