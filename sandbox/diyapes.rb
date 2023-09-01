require 'punkmaker'
require 'punks'



specs = [
  [],  
  ['Cap'],
  ['Hoodie'],
  ['Cap', 'Hoodie'],  
]


GOLD          =  '#ffd700'
DEEPPINK      =  '#ff1493'
DEEPPURPLE    =  '#aa4399'


colors = {
    'gold'   =>  GOLD,
    'pink'   =>  DEEPPINK,
    'purple' =>  DEEPPURPLE,    
}


colors.each do |color_name, color|
   base = Punk::Ape.make( color )

   specs.each_with_index do |spec, i|
     pp spec

     punk = Image.new( 24,24 )
     punk.compose!( base )
     spec.each do |attribute_name|
        attribute = Punk::Sheet.find_by( name: attribute_name,
                                         gender: 'm', size: 'l' )
        if attribute.nil?
            puts "!! ERROR - #{attribute_name} not found; sorry"
            exit 1
        end
        punk.compose!( attribute )
     end

     punk.save( "./tmp3/punk#{i+1}-#{color_name}.png" )
     punk.zoom(8).save( "./tmp3/punk#{i+1}-#{color_name}@8x.png" )
   end
end

puts "bye"