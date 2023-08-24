####
#  a little script on color theory / basics

require 'pixelart'

## note: MUST add alpha channel!!!
r = 0xff000000
g = 0x00ff0000
b = 0x0000ff00

colors = {
  '000__black':   0xff,                # k(ey)
  '100__red':     r+0xff,              # r 
  '110__yellow_(r+g)':  r+g+0xff,      # y
  '010__green':   g+0xff,              # g
  '011__cyan_(g+b)':     g+b+0xff,     # c
  '001__blue':    b+0xff,              # b
  '101__magenta_(r+b)':  r+b+0xff,     # m
  '111__white_(r+g+b)': r+g+b+0xff,    # w
}

colors.each_with_index do |(name, color), i|
  img = Image.new( 24, 24, color )
  print "  #{i+1} - "
  print '%-24s' % name
  print "  "
  print Color.fmt( color )
  print "\n"
  img.save( "./tmp2/#{i+1}-#{name}.png" )
end



## todo:
##  generate wheel 
#  0 (red==360), 30, 60, 90,
#  120 (green), 150, 180, 210,
#  240 (blue), 270, 300, 330



puts "bye"

__END__
  1 - 000  black                #000000 / rgb(  0   0   0) - hsl(  0°   0%   0%) - hsv(  0°   0%   0%)           - BLACK
  2 - 100  red                  #ff0000 / rgb(255   0   0) - hsl(  0° 100%  50%) - hsv(  0° 100% 100%)
  3 - 110  yellow (r+g)         #ffff00 / rgb(255 255   0) - hsl( 60° 100%  50%) - hsv( 60° 100% 100%)
  4 - 010  green                #00ff00 / rgb(  0 255   0) - hsl(120° 100%  50%) - hsv(120° 100% 100%)
  5 - 011  cyan (g+b)           #00ffff / rgb(  0 255 255) - hsl(180° 100%  50%) - hsv(180° 100% 100%)
  6 - 001  blue                 #0000ff / rgb(  0   0 255) - hsl(240° 100%  50%) - hsv(240° 100% 100%)
  7 - 101  magenta (r+b)        #ff00ff / rgb(255   0 255) - hsl(300° 100%  50%) - hsv(300° 100% 100%)
  8 - 111  white (r+g+b)        #ffffff / rgb(255 255 255) - hsl(  0°   0% 100%) - hsv(  0°   0% 100%)           - WHITE

