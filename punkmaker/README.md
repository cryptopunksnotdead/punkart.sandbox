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

###
# humans
punk_m = Punk::Human.make( GOLD,  gender: 'm' )
punk_m.save( 'human-male_gold.png' )
punk_m.zoom(4).save( 'human-male_gold@4x.png' )

punk_f = Punk::Human.make( GOLD, gender: 'f' )
punk_f.save( 'human-female_gold.png' )
punk_f.zoom(4).save( 'human-female_gold@4x.png' )
```


Voila!

![](i/human-male_gold.png)
![](i/human-female_gold.png)

![](i/mummy-male_gold.png)
![](i/mummy-female_gold.png)

4x

![](i/human-male_gold@4x.png)
![](i/human-female_gold@4x.png)

![](i/mummy-male_gold@4x.png)
![](i/mummy-female_gold@4x.png)



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
].each do |type|
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

![](i/mummy-male_gold.png) 
![](i/alien-male_gold.png) 
![](i/ape-male_gold.png) 
![](i/skeleton-male_gold.png) 
![](i/zombie-male_gold.png) 
![](i/demon-male_gold.png) 
![](i/orc-male_gold.png) 
![](i/robot-male_gold.png) 
![](i/vampire-male_gold.png)  <br>
![](i/mummy-female_gold.png)
![](i/alien-female_gold.png) 
![](i/ape-female_gold.png) 
![](i/skeleton-female_gold.png) 
![](i/zombie-female_gold.png) 
![](i/demon-female_gold.png) 
![](i/orc-female_gold.png) 
![](i/robot-female_gold.png) 
![](i/vampire-female_gold.png)

4x

![](i/mummy-male_gold@4x.png) 
![](i/alien-male_gold@4x.png) 
![](i/ape-male_gold@4x.png) 
![](i/skeleton-male_gold@4x.png) 
![](i/zombie-male_gold@4x.png) 
![](i/demon-male_gold@4x.png) 
![](i/orc-male_gold@4x.png) 
![](i/robot-male_gold@4x.png) 
![](i/vampire-male_gold@4x.png)  <br>
![](i/mummy-female_gold@4x.png)
![](i/alien-female_gold@4x.png) 
![](i/ape-female_gold@4x.png) 
![](i/skeleton-female_gold@4x.png) 
![](i/zombie-female_gold@4x.png) 
![](i/demon-female_gold@4x.png) 
![](i/orc-female_gold@4x.png) 
![](i/robot-female_gold@4x.png) 
![](i/vampire-female_gold@4x.png)




## License

The scripts are dedicated to the public domain.
Use it as you please with no restrictions whatsoever.


## Questions? Comments?

Join us in the [Punk Art discord (chat server)](https://discord.gg/FE3HeXNKRa). Yes you can.
Your questions and commentary welcome.

Or post them over at the [Help & Support](https://github.com/geraldb/help) page. Thanks.


