###########
# to run use:
#
#  $  ruby sandbox/spritesheet.rb


require 'spritesheet'


sheet = Pixelart::Spritesheet.pack( './sandbox/attributes.csv',
                                      dir: '../../punkart.blocks.hair',
                                      width: 24,
                                      height: 24 )

pp sheet.records
puts "  #{sheet.records.size} record(s)"

sheet.export( "./tmp/spritesheet-hair.csv" )

sheet.image.save( "./tmp/spritesheet-hair.png" )
sheet.image.zoom(4).save( "./tmp/spritesheet-hair@4x.png" )


puts "bye"