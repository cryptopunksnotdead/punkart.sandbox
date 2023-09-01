###
# to run use:
#   $ ruby sandbox/shine.rb

## try shine with black+opacity and white+opactiy

require 'pixelart'

# 25(dec)- 19(hex)
# 50     - 32
# 77     - 4d
shines = [
  '#0000004d',   #black 77(dec)
  '#00000032',   #black
  '#ffffff4d',   #white 
  '#ffffff32',    
  '#ffffff19',    
  '#7d7d7d4d',   #white 
  '#7d7d7d32',    
  '#7d7d7d19',    
]

bases = [
    Image.new( 24, 24, 'red'),
    Image.new( 24, 24, '#713F1D'),  # male 1/dark
    Image.new( 24, 24, '#DBB180'),  # male 2/light
    Image.new( 24, 24, '#EAD9D9'),  # male 4/albino
]

composite = ImageComposite.new( shines.size+2, bases.size )

bases.each do |base|

    hsv  = Color.to_hsv( base[0,0] )
    pp hsv
    
    h, s, v = hsv
    h = h % 360   # make always positive (might be -50 or such)
    pp [h,s,v]

    lighter1 =  Color.from_hsv( h, [0.0, s-0.15].max, [v+0.10,1.0].min )  
    lighter2 =  Color.from_hsv( h, [0.0, s-0.10].max, [v+0.15,1.0].min )  
    
    moreshines = [lighter1,lighter2]+shines
moreshines.each do |color|
  img = Image.new( 24, 24 )
  img.compose!( base )

  shine = Image.new( 24, 24 )
  shine[9,7] = color
  shine[8,8] = color
  img.compose!( shine )

  composite << img
end
end


composite.save( "./tmp/shine.png" )
composite.zoom(4).save( "./tmp/shine@4x.png" )


puts "bye"