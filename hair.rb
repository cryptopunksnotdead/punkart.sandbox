$LOAD_PATH.unshift( './punkmaker/lib' )
require 'punkmaker'
require 'punks'


#########
##
#  todo/fix:
##   change basehair image color
##    from black to gray!!!
##    why? let's us use black as a "pass-throug" color
##       as used in same base images - use/change - why? why not?
##
## todo/fix:  use a red pixel color or such
##                 for pixels that will always stay black
##                  and NOT get recolored
##                  e.g. recheck in vampire? and others?



def dump_colors( colors )
  colors.each_with_index do |color, i|
    print "[#{i}]  "
    print   Color.format( color )
    print "\n"
  end
end



colors =  Punk::Hair.colors 


## add more colors - why? why not?
more_colors = {
  'darkred'   => '6B0004',
  'periwinkle' => '5248FF',
  'lightblue'  => '57C0FF',
  'lightgreen' => '5BFFC1',
  'teal'      => '146E6D',

}


colors.each do |name, color|
  puts "  #{name}  - #{Color.format( color )}"
end


def collect_colors( glob )
  colors = {}

  files = Dir.glob( glob )
  files.each do |file|
    basedir  = File.basename( File.dirname( file ))  ## e.g. f or m or such expected
    basename = File.basename( file, File.extname( file ))
  
    basehair = Image.read( file )
  
    basehair.pixels.uniq.each do |color|
      h,s,v = Color.to_hsv( color, include_alpha: false )
      h = h % 360    ## make sure h(ue) is always positive!!!

      if h == 240  ## blue - assume slot color
         colors[color] ||= 0
         colors[color] += 1

         if color != 0x0000ffff  ## blue
            puts "   #{Color.to_hex(color)} used in #{basedir}/#{basename}"
         end
      end
    end
  end

  colors
end


def colorize( glob, colors: )

files = Dir.glob( glob )
files.each do |file|
  basedir  = File.basename( File.dirname( file ))  ## e.g. f or m or such expected
  basename = File.basename( file, File.extname( file ))

  ## exclude/skip all alpha only (no colors)
  next if ['shavedhead'].include?( basename )


  basehair = Image.read( file )
  
 
  colors.each do |name, color|
    puts "==> #{name} - #{Color.format( color )}:"

    color_map = Punk::Hair.derive_color_map( color )
    hair = basehair.change_colors( color_map  )

    hair.save( "./tmp/#{basedir}/#{name}/#{basename}.png" )
    hair.zoom(4).save( "./tmp/4x/#{basename}_(#{basedir})_#{name}@4x.png" )
  end
end
end


slots =  collect_colors( '../punkart.blocks.hair/hair/{f,m}/*.png' )
pp slots
## => {65535=>83, 707461119=>6, 56831=>2, 1414856703=>2}
# [0]  #0000ff / rgb(  0   0 255) - hsl(240° 100%  50%) - hsv(240° 100% 100%)
# [1]  #2a2aff / rgb( 42  42 255) - hsl(240° 100%  58%) - hsv(240°  84% 100%)
# [2]  #0000dd / rgb(  0   0 221) - hsl(240° 100%  43%) - hsv(240° 100%  87%)
# [3]  #5454ff / rgb( 84  84 255) - hsl(240° 100%  66%) - hsv(240°  67% 100%)


dump_colors( slots.keys )


# colorize( '../punkart.blocks.hair/hair/f/*.png', colors: colors )
# colorize( '../punkart.blocks.hair/hair/m/*.png', colors: colors )




styles = {
 'Afro'        => %w[m f],
 'Big'         => %w[m f],
 'Bob'         => { 'm' =>  ['','2'],
                    'f' =>  ['','2', '3'] },
 'Buzz Cut'    => %w[m f],
 'Clown'       => { 'm' =>  [''],
                    'f' =>  ['','2'] },
 'Comma'       => %w[m],
 'Crazy'       => { 'm' =>  ['','2', '3'],
                    'f' =>  ['','2', '3'] },
 'Fringe Up'      => %w[m],
 'Frumpy'      => %w[m f],
 'Half Shaved' => { 'm' =>  ['','2'],
                    'f' =>  ['','2', '3'] },
 'Heart'      => %w[f],
 'Long'       => %w[m],
 'Long Curly' => %w[f],
 'Long Front Curly' => %w[m],
 'Messier'      => %w[m],
 'Messy'      => %w[m f],
 'Mohawk'     => { 'm' =>  ['','2'],
                   'f' =>  ['','2'] },
 'Mohawk Big'   => %w[m],
 'Mohawk Short'   => %w[m],
 'Mohawk Thin'   => %w[m f],
 'Old Man' => %w[m],
 'Peak Spike' => { 'm' =>  [''],
                   'f' =>  ['','2'] },
 'Pigtails'   => { 'm' =>  [''],
                   'f' =>  ['','2','3'] },
 'Pixie'      => %w[f],
 'Pompadour'  => %w[m],
 'Short'      => { 'm' =>  ['','2','3'],
                   'f' =>  ['','2'] },
 'Short Messy'   => %w[m],
 'Side'       => { 'm' =>  ['','2'],
                    'f' =>  ['','2'] },
 'Spiky'      => %w[f],
 'Straight' => { 'm' =>  [''],
                 'f' =>  ['','2','3'] },
 'Stringy'      => %w[m f],
 'Vampire'     => { 'm' =>  ['','2'],
                    'f' =>  ['','2'] },
 'Wild'        => { 'm' =>  ['','2', '3', '4', '5'],
                    'f' =>  ['','2', '3', '4', '5'] },
}


styles.each do |name, spec|

  slug = name.downcase.gsub( /[ -]/, '' ).strip

  ## shortcut; auto-convert array to hash
  spec =  spec.reduce( {} ) { |h,value| h[value] = ['']; h }  if spec.is_a?( Array )
          
  ## pp spec
  genders = spec.keys


  print "#{name} "
  print "(#{genders.join('/')}) "
  spec.each do |gender, variants|
    variants.each do |variant|
      print " ![](morehair/#{gender}/black/#{slug}#{variant}.png)"
    end
  end
  print "\n\n"

  spec.each do |gender, variants|
    variants.each do |variant|
      colors.each do |color_name, _|
        next if color_name == 'black'
        puts "  ![](morehair/#{gender}/#{color_name}/#{slug}#{variant}.png)"
      end
      puts "  <br>"
    end
  end
  puts "\n\n"
end



puts "bye"
