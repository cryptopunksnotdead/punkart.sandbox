###
#  to run use
#     ruby -I ./lib sandbox/test_hair.rb


require 'punkme'



###
#  deep pink "barbies"

DEEP_PINK = '#ff1493'
BLONDE    = '#fff68e'

  punk = Punkme::Image.generate( skintone: DEEP_PINK ,
                                 gender: 'f',
                                 hair: 'straight3',
                                 hair_color: 'blonde' )
  punk.save( "./tmp/pink_(f).png")
  punk.zoom(8).save( "./tmp/pink_(f)@8x.png")

  punkb = punk.add( 'Big Shades' )
  punkb.save( "./tmp/pink_(f)-ii.png")
  punkb.zoom(8).save( "./tmp/pink_(f)-ii@8x.png")


    punk = Punkme::Image.generate( skintone: DEEP_PINK ,
                                 gender: 'f',
                                 hair: 'side2',
                                 hair_color: 'blonde' )
  punk.save( "./tmp/pink2_(f).png")
  punk.zoom(8).save( "./tmp/pink2_(f)@8x.png")

  punkb = punk.add( '3D Glasses' )
  punkb.save( "./tmp/pink2_(f)-ii.png")
  punkb.zoom(8).save( "./tmp/pink2_(f)-ii@8x.png")


###
#  purple punk

PURPLE =  '#AA4399'
 
  punk = Punkme::Image.generate( skintone: PURPLE,
                                 gender: 'm',
                                 hair: 'mohawkbig' )
  punk.save( "./tmp/purple_(m).png")
  punk.zoom(8).save( "./tmp/purple_(m)@8x.png")

  punkb = punk.add( 'VR' )
  punkb.save( "./tmp/purple_(m)-ii.png")
  punkb.zoom(8).save( "./tmp/purple_(m)-ii@8x.png")


    punk = Punkme::Image.generate( skintone: PURPLE,
                                 gender: 'm',
                                 hair: 'halfshaved' )
  punk.save( "./tmp/purple2_(m).png")
  punk.zoom(8).save( "./tmp/purple2_(m)@8x.png")

  punkb = punk.add( '3D Glasses' )
  punkb.save( "./tmp/purple2_(m)-ii.png")
  punkb.zoom(8).save( "./tmp/purple2_(m)-ii@8x.png")



puts "bye"


__END__

fix error message -> !! ERROR - unknow hair color >straight3<; sorry
  - reports not hair color BUT hair style!!!

