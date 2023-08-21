######################
# check colors for hair style prototypes / templates


require 'pixelart'


def dump_colors( img )
    colors = img.pixels.uniq
   ## note: filter out transparent (0)
   colors = colors.select { |color| color != 0 }

   colors.each_with_index do |color, i|
      print "[#{i}]  "
      print   Color.format( color )
      print "\n"
    end
end
  

files = Dir.glob( '../punkart.blocks.hair/{f,m}/*.png' )
puts "   #{files.size} file(s)"

files.each do |file|
  basedir  = File.basename( File.dirname( file ))  ## e.g. f or m or such expected
  basename = File.basename( file, File.extname( file ))

  hair = Image.read( file )

  puts "==> #{basedir}/#{basename} - #{hair.width}x#{hair.height}"
  dump_colors( hair )
end


puts "bye"