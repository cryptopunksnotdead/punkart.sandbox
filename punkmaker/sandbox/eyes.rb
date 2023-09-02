#################################
# to run use:
#
#  $ ruby sandbox/eyes.rb

$LOAD_PATH.unshift( "./lib" )
require 'punkmaker'


skintones = ['albino', 'light', 'mid', 'dark' ]
eyes      = [nil, 'brown', 'green', 'blue', 'purple'  ]

composite = ImageComposite.new( eyes.size*2, skintones.size  )

skintones.each do |skintone|
   ['m','f'].each do |gender| 
     eyes.each do |color|
        composite << Punk::Human.make( skintone, 
                                      eye_color: color,  
                                      gender: gender )
     end
   end 
end  

composite.save( "./tmp/eyes.png" )
composite.zoom(4).save( "./tmp/eyes@4x.png" )

puts "bye"
