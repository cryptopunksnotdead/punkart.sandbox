require 'punks'





def make_composite( glob, base: )
  files = Dir.glob( glob )
  puts "   #{files.size} file(s)"
  
  cols = 10 
  quotient, remainder = files.size.divmod( cols )
  quotient += 1  if remainder != 0

  composite = ImageComposite.new( cols, quotient, width: 24,
                                                  height: 24 )


  files.each do |file|
    basedir  = File.basename( File.dirname( file ))  ## e.g. f or m or such expected
    subdir   = File.basename( File.dirname(File.dirname( file )))
    basename = File.basename( file, File.extname( file ))

    hair = Image.read( file )

    puts "==> #{basedir}/#{basename} - #{hair.width}x#{hair.height}"
  
    punk = Image.new( 24, 24 )
    punk.compose!( base )
    punk.compose!( hair )
    
    ## save individual as 8x?
    punk.zoom(8).save( "./tmp/#{subdir}_#{basename}-#{basedir}@8x.png" )
    composite << punk 
  end

  composite
end


base = Punk::Image.generate( 'Ghost'  )    
m = make_composite( '../punkart.blocks.hair/hair/m/*.png', base: base )
m.save( "./tmp/hair_m.png")
m.zoom(4).save( "./tmp/hair_m@4x.png")

base = Punk::Image.generate( 'Orc', 'Eye Mask', 'Goat', 'Gold Chain'  )    
m = make_composite( '../punkart.blocks.hair/hair/m/*.png', base: base )
m.save( "./tmp/orc_hair_m.png")
m.zoom(4).save( "./tmp/orc_hair_m@4x.png")

base = Punk::Image.generate( 'Ghost Female' )    
f = make_composite( '../punkart.blocks.hair/hair/f/*.png', base: base )
f.save( "./tmp/hair_f.png")
f.zoom(4).save( "./tmp/hair_f@4x.png")

base = Punk::Image.generate( 'Orc Female' )    
f = make_composite( '../punkart.blocks.hair/hair/f/*.png', base: base )
f.save( "./tmp/orc_hair_f.png")
f.zoom(4).save( "./tmp/orc_hair_f@4x.png")

base = Punk::Image.generate( 'Female3', 'Clown Nose' )    
f = make_composite( '../punkart.blocks.hair/hair/f/*.png', base: base )
f.save( "./tmp/female3_hair_f.png")
f.zoom(4).save( "./tmp/female3_hair_f@4x.png")


####
# basic
base = Punk::Image.generate( 'Ghost'  )    
m = make_composite( '../punkart.blocks.hair/basic/m/*.png', base: base )
m.save( "./tmp/basic_m.png")
m.zoom(4).save( "./tmp/basic_m@4x.png")

base = Punk::Image.generate( 'Ghost Female' )    
f = make_composite( '../punkart.blocks.hair/basic/f/*.png', base: base )
f.save( "./tmp/basic_f.png")
f.zoom(4).save( "./tmp/basic_f@4x.png")



puts "bye"