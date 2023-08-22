
Hair Colors


note: use blue for base 
- base               -> #0000ff (0 0 255)   - hsv(240° 100% 100%)
- lighter (+16%)     -> #2a2aff (42 42 255) - hsv(240°  83% 100%)
- darker  (+4%/-14%) -> #0000dd (0 0 211)   - hsv(240° 100%  86%)
compare to black for base
- base           -> #000000 (0 0 0)      hsv(0°  0% 0%)
- lighter (+16%) -> #2a2a2a( 42  42  42) hsv(0°  0% 16%)  - 8-BIT GRAYSCALE #42


mohawk darker
base  #a66e2c / rgb(166 110  44) - hsv( 32°  73%  65%)
darker #85561e / rgb(133  86  30)  - hsv( 33°  77%  52%)  
 - saturation +4%
 - value/brightness -13%
 

Darker variations:

Brightness decreases
Saturation increases
Hue (often) shifts towards a luminosity minimum (red, green, or blue)
Red is 0° - Red is also 360°, which is the exact same as 0°
Green is 120°
Blue is 240°

Lighter variations:

Brightness increases
Saturation decreases
Hue (often) shifts towards a luminosity maximum


hsv == hsb (v==b value==brightness)
check tiny color (js lib) source
->
lighten    / darken   -  +/-  v(alue or brightness) - hsv[2] - ???
desaturate / saturate  - +/-  s(aturation)          hsv[1] - ???  

this graph has three maximum points and three minimum points. The low-points are red, green, and blue. The high-points are cyan, magenta, and yellow.

Does these particular colors ring a bell? Yes. RGB and CMY are popular color systems, but ignore that for now, because it’s leading you astray.

The important bit is this: if you don’t count saturation and brightness, shifting hue towards red (0°), green (120°), or blue (240°) will decrease the luminosity, or perceived lightness of the color. And shifting the hue towards yellow (60°), cyan (180°), or magenta (300°) will increase the perceived lightness of the color.

The trick is to just make the movement of the hue match up with the movement of the saturation and brightness. If you want a darker variation, move the hue towards red (0°), green (120°), or blue (240°), whichever is closest — and vice versa (with cyan, magenta, and yellow) for lighter variations. (Of course, this assumes you’re also lowering brightness and increasing saturation)

intensity of the light (brightness)
intensity of color (saturation)

- Darker color variation = higher saturation + lower brightness
- Lighter Color Variation = lower saturation + higher brightness

Saturation = "Richness"
Saturation is a number between 0 and 100. So, no matter what hue you've picked, a saturation of 100% will be the richest possible version of that color and a saturation of 0% will be the gray version of that color (i.e. if the color is light, it'll be a light gray; if the color is dark, it'll be a dark gray).

Brightness
Brightness is a number between 0 and 100. Like saturation, it's sometimes written as a percentage. This one is fairly obvious as to what it means, but there’s a quick catch.

0% brightness is black, no matter the hue, no matter the saturation.
100% brightness is white only if saturation is also 0%. Otherwise, 100% brightness is just a... very bright color.

In HSB, here’s how we make black and white:

Black: set the brightness to 0%. Hue and saturation can be anything.
White: set the brightness to 100% and the saturation to 0%. Hue can still be anything.

To add white, you must move your color towards white on your color picker. White is in the upper-left corner, and sure enough, 
adding white involves decreasing saturation (moving left) and increasing brightness (moving up).

But adding black? Well, since black is the whole bottom side of the color picker rectangle, adding black is just decreasing brightness. Saturation doesn’t matter.

big kicker. Instead of adding black, I want you to remove white. In other words, simulataneously:

Increase saturation
Decrease brightness

this will give you much richer dark shades
Removing white – that is, making your darker shades richer – is the "correct" way to generate darker variations of a color 95%+ of the time.

Since color variations in the real world involve removing white (not simply adding black), HSB is a slightly more intuitive system to work with for UI design.

---
Are HSB and HSL the same thing? Short answer: no. But they’re very similar.

HSL is exactly like HSB, except black and white are actually opposites.
So, in HSL:

To get black, set lightness to 0% (doesn’t matter what hue or saturation are)
To get white, set lightness to 100% (doesn’t matter what hue or saturation are)
Now that’s well and good, but as soon as you try and describe intuitively how to translate between the two systems, things get messy.

Adding HSL lightness above 50% is the same as adding white (meaning the equivalent HSB saturation goes down and HSB brightness goes up)
Subtracting HSL lightness below 50% is the same as adding black (no effect on HSB saturation, but HSB brightness goes down).
Or another way to think of it:

In HSB, the opposite of adding white is removing white
In HSL, the opposite of adding white is adding black


---

source: https://www.learnui.design/blog/the-hsb-color-system-practicioners-primer.html





```
==> f/clownhairgreen - 24x24
[0]  #28b143 / rgb( 40 177  67) - hsl(132°  63%  43%) - hsv(132°  77%  69%)
[1]  #000000 / rgb(  0   0   0) - hsl(  0°   0%   0%) - hsv(  0°   0%   0%)           - BLACK
  - check if black pixel(s) are needed??
  - same in male!!

==> f/darkhair2 - 24x24
[0]  #000000 / rgb(  0   0   0) - hsl(  0°   0%   0%) - hsv(  0°   0%   0%)           - BLACK
[1]  #2a2a2a / rgb( 42  42  42) - hsl(  0°   0%  16%) - hsv(  0°   0%  16%)           - 8-BIT GRAYSCALE #42
==> f/frumpyhair - 24x24
[0]  #000000 / rgb(  0   0   0) - hsl(  0°   0%   0%) - hsv(  0°   0%   0%)           - BLACK
[1]  #2a2a2a / rgb( 42  42  42) - hsl(  0°   0%  16%) - hsv(  0°   0%  16%)           - 8-BIT GRAYSCALE #42
==> f/mohawk - 24x24
[0]  #000000 / rgb(  0   0   0) - hsl(  0°   0%   0%) - hsv(  0°   0%   0%)           - BLACK
[1]  #a66e2c / rgb(166 110  44) - hsl( 32°  58%  41%) - hsv( 32°  73%  65%)
[2]  #85561e / rgb(133  86  30) - hsl( 33°  63%  32%) - hsv( 33°  77%  52%)
==> f/mohawkthin - 24x24
[0]  #000000 / rgb(  0   0   0) - hsl(  0°   0%   0%) - hsv(  0°   0%   0%)           - BLACK
[1]  #555555 / rgb( 85  85  85) - hsl(  0°   0%  33%) - hsv(  0°   0%  33%)           - 8-BIT GRAYSCALE #85
==> f/pigtails - 24x24
[0]  #000000 / rgb(  0   0   0) - hsl(  0°   0%   0%) - hsv(  0°   0%   0%)           - BLACK
[1]  #ffd926 / rgb(255 217  38) - hsl( 49° 100%  57%) - hsv( 49°  85% 100%)
==> f/straighthairblonde2 - 24x24
[0]  #fff68e / rgb(255 246 142) - hsl( 55° 100%  78%) - hsv( 55°  44% 100%)
[1]  #fef7b9 / rgb(254 247 185) - hsl( 54°  97%  86%) - hsv( 54°  27% 100%)
==> f/wildblonde2 - 24x24
[0]  #fff68e / rgb(255 246 142) - hsl( 55° 100%  78%) - hsv( 55°  44% 100%)
[1]  #fef7b9 / rgb(254 247 185) - hsl( 54°  97%  86%) - hsv( 54°  27% 100%)
==> f/wildwhitehair2 - 24x24
[0]  #ffffff / rgb(255 255 255) - hsl(  0°   0% 100%) - hsv(  0°   0% 100%)           - WHITE
[1]  #e4e4e4 / rgb(228 228 228) - hsl(  0°   0%  89%) - hsv(  0°   0%  89%)           - 8-BIT GRAYSCALE #228


==> m/clownhairgreen - 24x24
[0]  #28b143 / rgb( 40 177  67) - hsl(132°  63%  43%) - hsv(132°  77%  69%)
[1]  #000000 / rgb(  0   0   0) - hsl(  0°   0%   0%) - hsv(  0°   0%   0%)           - BLACK
==> m/frumpyhair - 24x24
[0]  #000000 / rgb(  0   0   0) - hsl(  0°   0%   0%) - hsv(  0°   0%   0%)           - BLACK
[1]  #2a2a2a / rgb( 42  42  42) - hsl(  0°   0%  16%) - hsv(  0°   0%  16%)           - 8-BIT GRAYSCALE #42
==> m/mohawk - 24x24
[0]  #000000 / rgb(  0   0   0) - hsl(  0°   0%   0%) - hsv(  0°   0%   0%)           - BLACK
[1]  #a66e2c / rgb(166 110  44) - hsl( 32°  58%  41%) - hsv( 32°  73%  65%)
[2]  #85561e / rgb(133  86  30) - hsl( 33°  63%  32%) - hsv( 33°  77%  52%)
==> m/mohawkthin - 24x24
[0]  #000000 / rgb(  0   0   0) - hsl(  0°   0%   0%) - hsv(  0°   0%   0%)           - BLACK
[1]  #555555 / rgb( 85  85  85) - hsl(  0°   0%  33%) - hsv(  0°   0%  33%)           - 8-BIT GRAYSCALE #85
==> m/pigtails - 24x24
[0]  #000000 / rgb(  0   0   0) - hsl(  0°   0%   0%) - hsv(  0°   0%   0%)           - BLACK
[1]  #ffdb26 / rgb(255 219  38) - hsl( 50° 100%  57%) - hsv( 50°  85% 100%)



------------------------
-- one color blocks

==> f/blondebob - 24x24
[0]  #fff68e / rgb(255 246 142) - hsl( 55° 100%  78%) - hsv( 55°  44% 100%)
==> f/blondeshort - 24x24
[0]  #fff68e / rgb(255 246 142) - hsl( 55° 100%  78%) - hsv( 55°  44% 100%)
==> f/blondeshort2 - 24x24
[0]  #fff68e / rgb(255 246 142) - hsl( 55° 100%  78%) - hsv( 55°  44% 100%)
==> f/clownhairgreen2 - 24x24
[0]  #28b143 / rgb( 40 177  67) - hsl(132°  63%  43%) - hsv(132°  77%  69%)
==> f/crazyhair - 24x24
[0]  #e22626 / rgb(226  38  38) - hsl(  0°  76%  52%) - hsv(  0°  83%  89%)
==> f/darkhair - 24x24
[0]  #000000 / rgb(  0   0   0) - hsl(  0°   0%   0%) - hsv(  0°   0%   0%)           - BLACK
==> f/halfshaved - 24x24
[0]  #000000 / rgb(  0   0   0) - hsl(  0°   0%   0%) - hsv(  0°   0%   0%)           - BLACK
==> f/halfshaved2 - 24x24
[0]  #000000 / rgb(  0   0   0) - hsl(  0°   0%   0%) - hsv(  0°   0%   0%)           - BLACK
==> f/messyhair - 24x24
[0]  #000000 / rgb(  0   0   0) - hsl(  0°   0%   0%) - hsv(  0°   0%   0%)           - BLACK
==> f/mohawkdark - 24x24
[0]  #000000 / rgb(  0   0   0) - hsl(  0°   0%   0%) - hsv(  0°   0%   0%)           - BLACK
==> f/orangeside - 24x24
[0]  #e65700 / rgb(230  87   0) - hsl( 23° 100%  45%) - hsv( 23° 100%  90%)
==> f/orangeside2 - 24x24
[0]  #e65700 / rgb(230  87   0) - hsl( 23° 100%  45%) - hsv( 23° 100%  90%)
==> f/peakspike - 24x24
[0]  #000000 / rgb(  0   0   0) - hsl(  0°   0%   0%) - hsv(  0°   0%   0%)           - BLACK
==> f/peakspike2 - 24x24
[0]  #000000 / rgb(  0   0   0) - hsl(  0°   0%   0%) - hsv(  0°   0%   0%)           - BLACK
==> f/purplehair - 24x24
[0]  #710cc7 / rgb(113  12 199) - hsl(272°  89%  41%) - hsv(272°  94%  78%)
==> f/purplehair2 - 24x24
[0]  #710cc7 / rgb(113  12 199) - hsl(272°  89%  41%) - hsv(272°  94%  78%)
==> f/redmohawk - 24x24
[0]  #e22626 / rgb(226  38  38) - hsl(  0°  76%  52%) - hsv(  0°  83%  89%)
==> f/shavedhead - 24x24
[0]  #000000 / rgb(  0   0   0) - hsl(  0°   0%   0%) - hsv(  0°   0%   0%) - α( 56%)
==> f/straighthair - 24x24
[0]  #51360c / rgb( 81  54  12) - hsl( 37°  74%  18%) - hsv( 37°  85%  32%)
==> f/straighthairblonde - 24x24
[0]  #fff68e / rgb(255 246 142) - hsl( 55° 100%  78%) - hsv( 55°  44% 100%)
==> f/straighthairdark - 24x24
[0]  #000000 / rgb(  0   0   0) - hsl(  0°   0%   0%) - hsv(  0°   0%   0%)           - BLACK
==> f/stringyhair - 24x24
[0]  #000000 / rgb(  0   0   0) - hsl(  0°   0%   0%) - hsv(  0°   0%   0%)           - BLACK
==> f/vampirehair - 24x24
[0]  #000000 / rgb(  0   0   0) - hsl(  0°   0%   0%) - hsv(  0°   0%   0%)           - BLACK
==> f/vampirehair2 - 24x24
[0]  #000000 / rgb(  0   0   0) - hsl(  0°   0%   0%) - hsv(  0°   0%   0%)           - BLACK
==> f/wildblonde - 24x24
[0]  #fff68e / rgb(255 246 142) - hsl( 55° 100%  78%) - hsv( 55°  44% 100%)
==> f/wildhair - 24x24
[0]  #000000 / rgb(  0   0   0) - hsl(  0°   0%   0%) - hsv(  0°   0%   0%)           - BLACK
==> f/wildwhitehair - 24x24
[0]  #ffffff / rgb(255 255 255) - hsl(  0°   0% 100%) - hsv(  0°   0% 100%)           - WHITE



==> m/blondebob - 24x24
[0]  #fff68e / rgb(255 246 142) - hsl( 55° 100%  78%) - hsv( 55°  44% 100%)
==> m/blondeshort - 24x24
[0]  #fff68e / rgb(255 246 142) - hsl( 55° 100%  78%) - hsv( 55°  44% 100%)
==> m/blondeshort2 - 24x24
[0]  #fff68e / rgb(255 246 142) - hsl( 55° 100%  78%) - hsv( 55°  44% 100%)
==> m/crazyhair - 24x24
[0]  #e22626 / rgb(226  38  38) - hsl(  0°  76%  52%) - hsv(  0°  83%  89%)
==> m/darkhair - 24x24
[0]  #000000 / rgb(  0   0   0) - hsl(  0°   0%   0%) - hsv(  0°   0%   0%)           - BLACK
==> m/halfshaved - 24x24
[0]  #000000 / rgb(  0   0   0) - hsl(  0°   0%   0%) - hsv(  0°   0%   0%)           - BLACK
==> m/halfshaved2 - 24x24
[0]  #000000 / rgb(  0   0   0) - hsl(  0°   0%   0%) - hsv(  0°   0%   0%)           - BLACK
==> m/messyhair - 24x24
[0]  #000000 / rgb(  0   0   0) - hsl(  0°   0%   0%) - hsv(  0°   0%   0%)           - BLACK
==> m/mohawkdark - 24x24
[0]  #000000 / rgb(  0   0   0) - hsl(  0°   0%   0%) - hsv(  0°   0%   0%)           - BLACK
==> m/orangeside - 24x24
[0]  #e65700 / rgb(230  87   0) - hsl( 23° 100%  45%) - hsv( 23° 100%  90%)
==> m/orangeside2 - 24x24
[0]  #e65700 / rgb(230  87   0) - hsl( 23° 100%  45%) - hsv( 23° 100%  90%)
==> m/peakspike - 24x24
[0]  #000000 / rgb(  0   0   0) - hsl(  0°   0%   0%) - hsv(  0°   0%   0%)           - BLACK
==> m/purplehair - 24x24
[0]  #710cc7 / rgb(113  12 199) - hsl(272°  89%  41%) - hsv(272°  94%  78%)
==> m/redmohawk - 24x24
[0]  #e22626 / rgb(226  38  38) - hsl(  0°  76%  52%) - hsv(  0°  83%  89%)
==> m/shavedhead - 24x24
[0]  #000000 / rgb(  0   0   0) - hsl(  0°   0%   0%) - hsv(  0°   0%   0%) - α( 56%)
==> m/straighthair - 24x24
[0]  #51360c / rgb( 81  54  12) - hsl( 37°  74%  18%) - hsv( 37°  85%  32%)
==> m/straighthairblonde - 24x24
[0]  #fff78e / rgb(255 247 142) - hsl( 56° 100%  78%) - hsv( 56°  44% 100%)
==> m/straighthairdark - 24x24
[0]  #000000 / rgb(  0   0   0) - hsl(  0°   0%   0%) - hsv(  0°   0%   0%)           - BLACK
==> m/stringyhair - 24x24
[0]  #000000 / rgb(  0   0   0) - hsl(  0°   0%   0%) - hsv(  0°   0%   0%)           - BLACK
==> m/vampirehair - 24x24
[0]  #000000 / rgb(  0   0   0) - hsl(  0°   0%   0%) - hsv(  0°   0%   0%)           - BLACK
==> m/wildblonde - 24x24
[0]  #fff68e / rgb(255 246 142) - hsl( 55° 100%  78%) - hsv( 55°  44% 100%)
==> m/wildblonde2 - 24x24
[0]  #fff78e / rgb(255 247 142) - hsl( 56° 100%  78%) - hsv( 56°  44% 100%)
==> m/wildhair - 24x24
[0]  #000000 / rgb(  0   0   0) - hsl(  0°   0%   0%) - hsv(  0°   0%   0%)           - BLACK
==> m/wildwhitehair - 24x24
[0]  #ffffff / rgb(255 255 255) - hsl(  0°   0% 100%) - hsv(  0°   0% 100%)           - WHITE
==> m/wildwhitehair2 - 24x24
[0]  #ffffff / rgb(255 255 255) - hsl(  0°   0% 100%) - hsv(  0°   0% 100%)           - WHITE
```