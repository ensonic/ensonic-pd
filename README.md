# ensonic-pd

A couple of free [plugdata](https://plugdata.org/) patches. All patches come with DAW parameters.

I am just learning puredata. If there are betters ways to do things, pull requests are welcome.

## WiCo (Width-Control)

A phase-scope with stereo width control. Available as single and tripple band version.

![main ui](/wico/wico.png)

TODO:
* add normalisation for phasescopes
* add avg pan overlay
  * need to figure how to overlay dynamic gfx
* add pan controls (like width)
  * maybe switch width + pan to knobs
* wico3: Mute/Solo for each band?
* initialize num-lines in scope from sample-rate (e.g. 50 ms)
* add pan-meter (avg of width over e.g. the 50 ms)
  * if this is consitently off center, one might want to adjust via pan control
  * maybe add a button to apply correction (e.g. if 5% to left, move pan 5% to right)
  
