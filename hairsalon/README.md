# hairsalon

hairsalon gem - make your own (pixel) women's punk hair style incl. mohawk, wild & crazy, short & long, and much more with your own hair colors incl white, silver, blonde, pink, purple, red and much more  



* home  :: [github.com/cryptopunksnotdead/punkart.sandbox](https://github.com/cryptopunksnotdead/punkart.sandbox)
* bugs  :: [github.com/cryptopunksnotdead/punkart.sandbox/issues](https://github.com/cryptopunksnotdead/punkart.sandbox/issues)
* gem   :: [rubygems.org/gems/hairsalon](https://rubygems.org/gems/hairsalon)
* rdoc  :: [rubydoc.info/gems/hairsalon](http://rubydoc.info/gems/hairsalon)



## Usage


### Hair Colors

For now the hair colors include:

- ![](i/color-black.png) black - #000000 / rgb(  0   0   0) - hsl(  0°   0%   0%) - hsv(  0°   0%   0%)          
- ![](i/color-brown.png) brown - #51360c / rgb( 81  54  12) - hsl( 37°  74%  18%) - hsv( 37°  85%  32%)
- ![](i/color-brunette.png) brunette - #a66e2c / rgb(166 110  44) - hsl( 32°  58%  41%) - hsv( 32°  73%  65%)
- ![](i/color-orange.png) orange - #e65700 / rgb(230  87   0) - hsl( 23° 100%  45%) - hsv( 23° 100%  90%)
- ![](i/color-red.png) red - #e22626 / rgb(226  38  38) - hsl(  0°  76%  52%) - hsv(  0°  83%  89%)
- ![](i/color-pink.png) pink - #ff8ebe / rgb(255 142 190) - hsl(335° 100%  78%) - hsv(335°  44% 100%)
- ![](i/color-purple.png) purple - #710cc7 / rgb(113  12 199) - hsl(272°  89%  41%) - hsv(272°  94%  78%)
- ![](i/color-green.png) green - #28b143 / rgb( 40 177  67) - hsl(132°  63%  43%) - hsv(132°  77%  69%)
- ![](i/color-blonde.png) blonde - #fff68e / rgb(255 246 142) - hsl( 55° 100%  78%) - hsv( 55°  44% 100%)
- ![](i/color-silver.png) silver - #e0e0e0 / rgb(224 224 224) - hsl(  0°   0%  88%) - hsv(  0°   0%  88%)       
- ![](i/color-white.png) white - #ffffff / rgb(255 255 255) - hsl(  0°   0% 100%) - hsv(  0°   0% 100%)          



### Hair Styles

The hair styles include:

- afro ![](i/hair/afro-strip.png)
- big ![](i/hair/big-strip.png)
- bob ![](i/hair/bob-strip.png)
- bob2 ![](i/hair/bob2-strip.png)
- bob3 ![](i/hair/bob3-strip.png)
- buzzcut ![](i/hair/buzzcut-strip.png)
- clown ![](i/hair/clown-strip.png)
- clown2 ![](i/hair/clown2-strip.png)
- crazy ![](i/hair/crazy-strip.png)
- crazy2 ![](i/hair/crazy2-strip.png)
- crazy3 ![](i/hair/crazy3-strip.png)
- frumpy ![](i/hair/frumpy-strip.png)
- halfshaved ![](i/hair/halfshaved-strip.png)
- halfshaved2 ![](i/hair/halfshaved2-strip.png)
- halfshaved3 ![](i/hair/halfshaved3-strip.png)
- heart ![](i/hair/heart-strip.png)
- longcurly ![](i/hair/longcurly-strip.png)
- messy ![](i/hair/messy-strip.png)
- mohawk ![](i/hair/mohawk-strip.png)
- mohawk2 ![](i/hair/mohawk2-strip.png)
- mohawkthin ![](i/hair/mohawkthin-strip.png)
- peakspike ![](i/hair/peakspike-strip.png)
- peakspike2 ![](i/hair/peakspike2-strip.png)
- pigtails ![](i/hair/pigtails-strip.png)
- pigtails2 ![](i/hair/pigtails2-strip.png)
- pigtails3 ![](i/hair/pigtails3-strip.png)
- pixie ![](i/hair/pixie-strip.png)
- short ![](i/hair/short-strip.png)
- short2 ![](i/hair/short2-strip.png)
- side ![](i/hair/side-strip.png)
- side2 ![](i/hair/side2-strip.png)
- spiky ![](i/hair/spiky-strip.png)
- straight ![](i/hair/straight-strip.png)
- straight2 ![](i/hair/straight2-strip.png)
- straight3 ![](i/hair/straight3-strip.png)
- stringy ![](i/hair/stringy-strip.png)
- vampire ![](i/hair/vampire-strip.png)
- vampire2 ![](i/hair/vampire2-strip.png)
- wild ![](i/hair/wild-strip.png)
- wild2 ![](i/hair/wild2-strip.png)
- wild3 ![](i/hair/wild3-strip.png)
- wild4 ![](i/hair/wild4-strip.png)
- wild5 ![](i/hair/wild5-strip.png)


plus (no color - alpha channel only)

- shavedhead ![](i/hair/shavedhead.png)



### How To Make Hair Styles


Use the make method - pass in the hair style and optional the color (default is black) -
and get the hair (pixel art) image attribute (in 24x24px).

``` ruby
require 'hairsalon'

hair =  Hairsalon::Hair.make( 'Buzz Cut' )
hair.save( "./buzzcut-black.png" )
hair.zoom(4).save( "./buzzcut-black@4x.png" )

hair =  Hairsalon::Hair.make( 'Pigtails', color: 'Green' )
hair.save( "./pigtails-green.png" )
hair.zoom(4).save( "./pigtails-green@4x.png" )

hair =  Hairsalon::Hair.make( 'Wild', color: 'Blonde' )
hair.save( "./wild-blonde.png" )
hair.zoom(4).save( "./wild-blonde@4x.png" )
```


resulting in:

![](i/buzzcut-black.png)
![](i/pigtails-green.png)
![](i/wild-blonde.png)

4x

![](i/buzzcut-black@4x.png)
![](i/pigtails-green@4x.png)
![](i/wild-blonde@4x.png)


That's it for now.




## Questions? Comments?

Join us in the [Punk Art discord (chat server)](https://discord.gg/FE3HeXNKRa). Yes you can.
Your questions and commentary welcome.

Or post them over at the [Help & Support](https://github.com/geraldb/help) page. Thanks.


