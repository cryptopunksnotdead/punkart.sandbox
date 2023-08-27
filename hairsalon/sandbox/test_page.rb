###########
# to run use:
#
#  $  ruby -I ./lib sandbox/test_page.rb


$LOAD_PATH.unshift( "../punkmaker/lib" )
require 'hairsalon'

colors = Hairsalon::Hair.colors
puts "  #{colors.size} color(s)"

sheet  = Hairsalon::Hair.sheet
pp sheet.records
puts "  #{sheet.records.size} record(s)"


colors = Hairsalon::Hair.colors
puts "  #{colors.size} color(s)"

buf = ''
colors.each do |name, color|
  bar = Image.new( 24, 24, color )
  bar.save( "./tmp4/color-#{name}.png" )

  buf << "- ![](i/color-#{name}.png) #{name} - #{Color.fmt(color)}\n"
end
puts buf
puts


buf = ''
sheet.records.each do |rec|

  pp rec
  name = rec.name
  hair = sheet.find_by( name: name )
  hair.save( "./tmp/#{name}.png" )
  hair.zoom(4).save( "./tmp/#{name}@4x.png" )

  ## make all color variants
  next if ['shavedhead'].include?(name)
  hairs = ImageComposite.new( colors.size, 1, width: 24, height: 24 )
  colors.each do |_, color|
    hairs << Hairsalon::Hair.colorize( hair, color: color )
  end
  hairs.save( "./tmp2/#{name}-strip.png" )
  hairs.zoom(4).save( "./tmp4/#{name}-strip@4x.png" )

  buf << "- #{name} ![](i/hair/#{name}-strip.png)\n"
end

puts buf
puts



__END__

hair   =  Hairsalon::Hair.sheet.find_by( name: 'Afro' )
hair.save( "./tmp/afro.png" )
hair.zoom(4).save( "./tmp/afro@4x.png" )


hair =  Hairsalon::Hair.sheet.find_by( name: 'Buzz Cut' )
hair.save( "./tmp/buzzcut.png" )
hair.zoom(4).save( "./tmp/buzzcut@4x.png" )



pp Hairsalon::Hair.colors


hair =  Hairsalon::Hair.make( 'Buzz Cut' )
hair.save( "./tmp/buzzcut-black.png" )
hair.zoom(4).save( "./tmp/buzzcut-black@4x.png" )

hair =  Hairsalon::Hair.make( 'Afro', color: 'Green' )
hair.save( "./tmp/afro-green.png" )
hair.zoom(4).save( "./tmp/afro-green@4x.png" )


puts "bye"
