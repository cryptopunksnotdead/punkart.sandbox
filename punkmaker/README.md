# punk maker

punkmaker gem - make your own (pixel) punk base (archetype) heads incl. humans, zombies, apes, aliens, mummies, robots, and much more



* home  :: [github.com/cryptopunksnotdead/punkart.sandbox](https://github.com/cryptopunksnotdead/punkart.sandbox)
* bugs  :: [github.com/cryptopunksnotdead/punkart.sandbox/issues](https://github.com/cryptopunksnotdead/punkart.sandbox/issues)
* gem   :: [rubygems.org/gems/punkmaker](https://rubygems.org/gems/punkmaker)
* rdoc  :: [rubydoc.info/gems/punkmaker](http://rubydoc.info/gems/punkmaker)




## Usage

Let's make golden punks...

``` ruby
require 'punkmaker'

GOLD  =  '#ffd700'

punk_m = Punk::Human.make( GOLD,  gender: 'm' )
punk_m.save( 'human-male_gold.png' )
punk_m.zoom(4).save( 'human-male_gold@4x.png' )

punk_f = Punk::Human.make( GOLD, gender: 'f' )
punk_f.save( 'human-female_gold.png' )
punk_f.zoom(4).save( 'human-female_gold@4x.png' )
```


Voila!

![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/human-male_gold.png)
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/human-female_gold.png)

4x

![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/human-male_gold@4x.png)
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/human-female_gold@4x.png)



Let's try predefined skintone color names 
(from 
[ye olde punks](config/skintone/ye_olde_punks.csv), 
[dr ellis monk](config/skintone/dr_ellis_monk.csv), 
[punks not dead](config/skintone/punks_not_dead.csv), or 
[color me human](config/skintone/color_me_human.csv)):


``` ruby
[
 'albino',    # ye olde punks
 'dark',
 'monk10',    #  dr ellis monk
 'monk01',
 'orange',    # punk's not dead  
 'almond',
 'sienna',
 'a1',        # color me human
].each do |skintone|
  punk_m = Punk::Human.make( skintone,  gender: 'm' )
  punk_m.save( "human-male_#{skintone}.png" )
  punk_m.zoom(4).save( "human-male_#{skintone}@4x.png" )

  punk_f = Punk::Human.make( skintone, gender: 'f' )
  punk_f.save( "human-female_#{skintone}.png" )
  punk_f.zoom(4).save( "human-female_#{skintone}@4x.png" )
end
```


Voila!

![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/human-male_albino.png)
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/human-male_dark.png)
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/human-male_monk10.png)
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/human-male_monk01.png)
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/human-male_orange.png)
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/human-male_almond.png)
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/human-male_sienna.png)
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/human-male_a1.png) <br>
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/human-female_albino.png)
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/human-female_dark.png)
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/human-female_monk10.png)
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/human-female_monk01.png)
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/human-female_orange.png)
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/human-female_almond.png)
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/human-female_sienna.png)
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/human-female_a1.png)

4x

![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/human-male_albino@4x.png)
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/human-male_dark@4x.png)
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/human-male_monk10@4x.png)
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/human-male_monk01@4x.png)
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/human-male_orange@4x.png)
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/human-male_almond@4x.png)
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/human-male_sienna@4x.png)
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/human-male_a1@4x.png) <br>
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/human-female_albino@4x.png)
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/human-female_dark@4x.png)
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/human-female_monk10@4x.png)
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/human-female_monk01@4x.png)
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/human-female_orange@4x.png)
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/human-female_almond@4x.png)
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/human-female_sienna@4x.png)
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/human-female_a1@4x.png)



Let's try some more base (arche)types:

``` ruby
types = [
  Punk::Mummy,
  Punk::Alien, 
  Punk::Ape,
  Punk::Skeleton,
  Punk::Zombie,
  Punk::Demon,
  Punk::Orc,
  Punk::Robot,
  Punk::Vampire,   
]

types.each do |type|
    ## get last name e.g. Orc from Punk::Orc
    name = type.name.split('::')[-1].downcase
  
    punk_m = type.make( GOLD, gender: 'm' )
    punk_m.save( "#{name}-male_gold.png" )
    punk_m.zoom(4).save( "#{name}-male_gold@4x.png" )

    punk_f = type.make( GOLD, gender: 'f' )
    punk_f.save( "#{name}-female_gold.png" )
    punk_f.zoom(4).save( "#{name}-female_gold@4x.png" )
end
```

Voila!

![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/mummy-male_gold.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/alien-male_gold.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/ape-male_gold.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/skeleton-male_gold.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/zombie-male_gold.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/demon-male_gold.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/orc-male_gold.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/robot-male_gold.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/vampire-male_gold.png)  <br>
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/mummy-female_gold.png)
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/alien-female_gold.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/ape-female_gold.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/skeleton-female_gold.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/zombie-female_gold.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/demon-female_gold.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/orc-female_gold.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/robot-female_gold.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/vampire-female_gold.png)

4x

![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/mummy-male_gold@4x.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/alien-male_gold@4x.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/ape-male_gold@4x.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/skeleton-male_gold@4x.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/zombie-male_gold@4x.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/demon-male_gold@4x.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/orc-male_gold@4x.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/robot-male_gold@4x.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/vampire-male_gold@4x.png)  <br>
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/mummy-female_gold@4x.png)
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/alien-female_gold@4x.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/ape-female_gold@4x.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/skeleton-female_gold@4x.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/zombie-female_gold@4x.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/demon-female_gold@4x.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/orc-female_gold@4x.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/robot-female_gold@4x.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/vampire-female_gold@4x.png)


Let's try some more colors:

```ruby
NEONGREEN     =  '#c3ff00'
DEEPPINK      =  '#ff1493'
DEEPPURPLE    =  '#aa4399'


colors = {
  'green'  =>  NEONGREEN,
  'pink'   =>  DEEPPINK,
  'purple' =>  DEEPPURPLE,
}

types = [Punk::Human]+types  ## add human first

types.each do |type|
    ## get last name e.g. Orc from Punk::Orc
    name = type.name.split('::')[-1].downcase
    colors.each do |color_name, color|  
      punk_m = type.make( color, gender: 'm' )
      punk_m.save( "#{name}-male_#{color_name}.png" )
      punk_m.zoom(4).save( "#{name}-male_#{color_name}@4x.png" )

      punk_f = type.make( color, gender: 'f' )
      punk_f.save( "#{name}-female_#{color_name}.png" )
      punk_f.zoom(4).save( "#{name}-female_#{color_name}@4x.png" )
    end
end
```

Voila!

![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/human-male_green.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/mummy-male_green.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/alien-male_green.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/ape-male_green.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/skeleton-male_green.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/zombie-male_green.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/demon-male_green.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/orc-male_green.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/robot-male_green.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/vampire-male_green.png)  <br>
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/human-female_green.png)
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/mummy-female_green.png)
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/alien-female_green.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/ape-female_green.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/skeleton-female_green.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/zombie-female_green.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/demon-female_green.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/orc-female_green.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/robot-female_green.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/vampire-female_green.png) <br>
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/human-male_pink.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/mummy-male_pink.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/alien-male_pink.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/ape-male_pink.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/skeleton-male_pink.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/zombie-male_pink.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/demon-male_pink.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/orc-male_pink.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/robot-male_pink.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/vampire-male_pink.png)  <br>
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/human-female_pink.png)
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/mummy-female_pink.png)
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/alien-female_pink.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/ape-female_pink.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/skeleton-female_pink.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/zombie-female_pink.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/demon-female_pink.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/orc-female_pink.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/robot-female_pink.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/vampire-female_pink.png) <br>
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/human-male_purple.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/mummy-male_purple.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/alien-male_purple.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/ape-male_purple.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/skeleton-male_purple.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/zombie-male_purple.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/demon-male_purple.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/orc-male_purple.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/robot-male_purple.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/vampire-male_purple.png)  <br>
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/human-female_purple.png)
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/mummy-female_purple.png)
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/alien-female_purple.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/ape-female_purple.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/skeleton-female_purple.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/zombie-female_purple.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/demon-female_purple.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/orc-female_purple.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/robot-female_purple.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/vampire-female_purple.png) 



4x

![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/human-male_green@4x.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/mummy-male_green@4x.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/alien-male_green@4x.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/ape-male_green@4x.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/skeleton-male_green@4x.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/zombie-male_green@4x.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/demon-male_green@4x.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/orc-male_green@4x.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/robot-male_green@4x.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/vampire-male_green@4x.png)  <br>
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/human-female_green@4x.png)
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/mummy-female_green@4x.png)
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/alien-female_green@4x.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/ape-female_green@4x.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/skeleton-female_green@4x.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/zombie-female_green@4x.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/demon-female_green@4x.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/orc-female_green@4x.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/robot-female_green@4x.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/vampire-female_green@4x.png) <br>
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/human-male_pink@4x.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/mummy-male_pink@4x.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/alien-male_pink@4x.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/ape-male_pink@4x.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/skeleton-male_pink@4x.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/zombie-male_pink@4x.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/demon-male_pink@4x.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/orc-male_pink@4x.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/robot-male_pink@4x.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/vampire-male_pink@4x.png)  <br>
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/human-female_pink@4x.png)
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/mummy-female_pink@4x.png)
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/alien-female_pink@4x.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/ape-female_pink@4x.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/skeleton-female_pink@4x.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/zombie-female_pink@4x.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/demon-female_pink@4x.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/orc-female_pink@4x.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/robot-female_pink@4x.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/vampire-female_pink@4x.png) <br>
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/human-male_purple@4x.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/mummy-male_purple@4x.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/alien-male_purple@4x.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/ape-male_purple@4x.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/skeleton-male_purple@4x.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/zombie-male_purple@4x.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/demon-male_purple@4x.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/orc-male_purple@4x.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/robot-male_purple@4x.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/vampire-male_purple@4x.png)  <br>
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/human-female_purple@4x.png)
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/mummy-female_purple@4x.png)
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/alien-female_purple@4x.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/ape-female_purple@4x.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/skeleton-female_purple@4x.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/zombie-female_purple@4x.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/demon-female_purple@4x.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/orc-female_purple@4x.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/robot-female_purple@4x.png) 
![](https://github.com/cryptopunksnotdead/punkart.sandbox/raw/master/punkmaker/i/vampire-female_purple@4x.png) 



That's it.



## License

The scripts are dedicated to the public domain.
Use it as you please with no restrictions whatsoever.


## Questions? Comments?

Join us in the [Punk Art discord (chat server)](https://discord.gg/FE3HeXNKRa). Yes you can.
Your questions and commentary welcome.

Or post them over at the [Help & Support](https://github.com/geraldb/help) page. Thanks.


