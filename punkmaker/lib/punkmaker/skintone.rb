
module Punk
module Skintone

def self.colors
  @colors ||= ColorBundle.read( 
                './config/skintone/ye_olde_punks.csv',
                './config/skintone/color_me_human.csv',
                './config/skintone/dr_ellis_monk.csv',
                './config/skintone/punks_not_dead.csv' ) 
end
def self.[]( name )  colors.find_by( name: name ); end

end   # module Skintone
end   # module Punk
        