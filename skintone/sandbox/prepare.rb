####
#  to run use:
#   $   ruby sandbox/prepare.rb

require 'punkmaker'


def slugify( str )
  str.downcase.strip.gsub( /[ ]/, '_' )
end



palettes = [
  'ye_olde_punks',
  'dr_ellis_monk',
  'punks_not_dead',
]

palettes = [
  'color_me_human'
]

buf = String.new('')

palettes.each do |palette|

  path = "./#{palette}.csv"

  puts "==> reading #{path}..."
  recs = read_csv( path )
  puts "  #{recs.size} record(s)"


  cols = 10
  rows = (recs.size*2) / cols
  rows += 1   if (recs.size*2) % cols != 0


  puts "  cols=#{cols},rows=#{rows} | #{cols*rows} punks"
  composite = ImageComposite.new( cols, rows )


  buf << "## #{palette} (#{recs.size} skin tones)\n\n"

  buf << "![](i/#{palette}@2x.png)"
  buf << "\n\n"


  buf << "Names | Color  | HEX, RGB, HSL, HSV\n"
  buf << "------|--------|---------\n"

  recs.each do |rec|
    hex        = rec['color']
    names       = rec['names'].split( '|' )

    color = Color.parse( hex )

    ## normalize spaces in more names
    names = names.map {|str| str.strip.gsub(/[ ]{2,}/, ' ' )}
    slug  = slugify( names[0] )

    id  = "#{palette}-#{slug}"
    bar = Image.new( 128, 64, color )
    bar.save( "./tmp/#{id}.png" )


    buf << names.join( ' • ' )
    buf << " | "
    buf << "![](i/#{id}.png)"
    buf << " | "
    buf << Color.format( color )
    buf << "\n"

    punk = Punk::Human.make( color,
                             gender: 'm' )
    composite << punk

    punk = Punk::Human.make( color,
                             gender: 'f' )
    composite << punk
  end
  buf << "\n\n"

  composite.save( "./tmp/#{palette}.png" )
  composite.zoom(2).save( "./tmp/#{palette}@2x.png" )
end




write_text( "./tmp/page.md",  buf )


puts "bye"