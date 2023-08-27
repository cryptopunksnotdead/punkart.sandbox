###
#  to run use
#     ruby -I ./lib sandbox/test_punkme.rb


require 'punkme'



skintones = {
  orange:   '#F05423',
  warm_red: '#EF483E',
  red:      '#EE3342',
  purple:   '#AA4399',
  blue:     '#462E8D',
  violet:   '#BC9BC9',
}

# 'Wild Hair',

skintones.each do |skintone_name, skintone_hex|
  punk = Punkme::Image.generate( skintone: skintone_hex,
                                 gender: 'm' )
  punk.save( "./tmp/punk_(m)_#{skintone_name}.png")
  punk.zoom(8).save( "./tmp/punk_(m)_#{skintone_name}@8x.png")

  punkb = punk.add( 'Wild Hair' )
  punkb.save( "./tmp/punk_(m)_#{skintone_name}-ii.png")
  punkb.zoom(8).save( "./tmp/punk_(m)_#{skintone_name}-ii@8x.png")

  punkc = punk.add( '3D Glasses' )
  punkc.save( "./tmp/punk_(m)_#{skintone_name}-iii.png")
  punkc.zoom(8).save( "./tmp/punk_(m)_#{skintone_name}-iii@8x.png")
  

  punk = Punkme::Image.generate( skintone: skintone_hex,
                                 gender: 'f' )
  punk.save( "./tmp/punk_(f)_#{skintone_name}.png")
  punk.zoom(8).save( "./tmp/punk_(f)_#{skintone_name}@8x.png")

  punkb = punk.add( 'Wild Hair' )
  punkb.save( "./tmp/punk_(f)_#{skintone_name}-ii.png")
  punkb.zoom(8).save( "./tmp/punk_(f)_#{skintone_name}-ii@8x.png")

  punkc = punk.add( '3D Glasses' )
  punkc.save( "./tmp/punk_(f)_#{skintone_name}-iii.png")
  punkc.zoom(8).save( "./tmp/punk_(f)_#{skintone_name}-iii@8x.png")
end



puts "bye"


