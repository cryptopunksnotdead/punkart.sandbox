#################################
# to run use:
#
#  $ ruby sandbox/base.rb

require 'punks'


###
# vampires
base_m = Punk::Sheet.find_by( name: 'vampire' )
base_m.save( "./tmp2/vampire-male.png" )
base_m.zoom(4).save( "./tmp2/vampire-male@4x.png" )

base_f = Punk::Sheet.find_by( name: 'vampire female' )
base_f.save( "./tmp2/vampire-female.png" )
base_f.zoom(4).save( "./tmp2/vampire-female@4x.png" )


###
# robots
base_m = Punk::Sheet.find_by( name: 'robot' )
base_m.save( "./tmp2/robot-male.png" )
base_m.zoom(4).save( "./tmp2/robot-male@4x.png" )

base_f = Punk::Sheet.find_by( name: 'robot female' )
base_f.save( "./tmp2/robot-female.png" )
base_f.zoom(4).save( "./tmp2/robot-female@4x.png" )


###
# orcs
base_m = Punk::Sheet.find_by( name: 'orc' )
base_m.save( "./tmp2/orc-male.png" )
base_m.zoom(4).save( "./tmp2/orc-male@4x.png" )

base_f = Punk::Sheet.find_by( name: 'orc female' )
base_f.save( "./tmp2/orc-female.png" )
base_f.zoom(4).save( "./tmp2/orc-female@4x.png" )


###
# demons
base_m = Punk::Sheet.find_by( name: 'demon' )
base_m.save( "./tmp2/demon-male.png" )
base_m.zoom(4).save( "./tmp2/demon-male@4x.png" )

base_f = Punk::Sheet.find_by( name: 'demon female' )
base_f.save( "./tmp2/demon-female.png" )
base_f.zoom(4).save( "./tmp2/demon-female@4x.png" )


###
# zombies
base_m = Punk::Sheet.find_by( name: 'zombie' )
base_m.save( "./tmp2/zombie-male.png" )
base_m.zoom(4).save( "./tmp2/zombie-male@4x.png" )

base_f = Punk::Sheet.find_by( name: 'zombie female' )
base_f.save( "./tmp2/zombie-female.png" )
base_f.zoom(4).save( "./tmp2/zombie-female@4x.png" )


###
# skeletons
base_m = Punk::Sheet.find_by( name: 'skeleton' )
base_m.save( "./tmp2/skeleton-male.png" )
base_m.zoom(4).save( "./tmp2/skeleton-male@4x.png" )

base_f = Punk::Sheet.find_by( name: 'skeleton female' )
base_f.save( "./tmp2/skeleton-female.png" )
base_f.zoom(4).save( "./tmp2/skeleton-female@4x.png" )



###
# apes
base_m = Punk::Sheet.find_by( name: 'Ape' )
base_m.save( "./tmp2/ape-male.png" )
base_m.zoom(4).save( "./tmp2/ape-male@4x.png" )

base_f = Punk::Sheet.find_by( name: 'Ape Female' )
base_f.save( "./tmp2/ape-female.png" )
base_f.zoom(4).save( "./tmp2/ape-female@4x.png" )


__END__


###
# aliens
base_m = Punk::Sheet.find_by( name: 'Alien' )
base_m.save( "./tmp2/alien-male.png" )
base_m.zoom(4).save( "./tmp2/alien-male@4x.png" )

base_f = Punk::Sheet.find_by( name: 'Alien Female' )
base_f.save( "./tmp2/alien-female.png" )
base_f.zoom(4).save( "./tmp2/alien-female@4x.png" )




###
# humans
base_m = Punk::Sheet.find_by( name: 'Male 4' )
base_m.save( "./tmp2/human-male4.png" )
base_m.zoom(4).save( "./tmp2/human-male4@4x.png" )

base_f = Punk::Sheet.find_by( name: 'Female 4' )
base_f.save( "./tmp2/human-female4.png" )
base_f.zoom(4).save( "./tmp2/human-female4@4x.png" )

###
# mummies
base_m = Punk::Sheet.find_by( name: 'Mummy' )
base_m.save( "./tmp2/mummy-male.png" )
base_m.zoom(4).save( "./tmp2/mummy-male@4x.png" )

base_f = Punk::Sheet.find_by( name: 'Mummy Female' )
base_f.save( "./tmp2/mummy-female.png" )
base_f.zoom(4).save( "./tmp2/mummy-female@4x.png" )


puts "bye"