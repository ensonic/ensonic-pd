# ensonic-pd

A couple of free [plugdata](https://plugdata.org/) patches. All patches come with DAW parameters.

I am just learning puredata. If there are betters ways to do things, pull requests are welcome.

## WiCo (Width-Control)

A phase-scope with stereo width control. Available as single and triple band version.

![main ui](/wico/wico.png)

In the single band versions the UI starts with the scope at the top. This scope
shows how the audio signal occupies the stereo space. There are 5 extremes:
1. A vertical line in the center is a pure mono signal.
1. A horizontal line in the center is a complete out of phase signal. This will
   sounds super wide on headphones, but will disappear if mixed down to mono
1. A diagonal line starting from the top left is a signal panned fully to the
   left
1. A diagonal line starting from the top right is a signal panned fully to the
   right

In practice the scope will show a swirl of lines around the center. 🌀

Below the scope is a correlation meter. If the meter is fully left the signal is
completely out of phase. And if the meter is fully right the signal is mono. 
This meter is averaged over the last 100 ms of sound.

Below the meter is the stereo width control. By default it is set to 100%, which
does not alter the signal. Lower settings will decrease the width down to a mono
signal. Settings larger than 100% will increase the stereo width.

The 3 band version has 3 copies of the single band version plus 2 controls to
set the split frequencies. This setup allows you to analyze and control the
stereo width for each of the 3 ranges. Typically you want to avoid wide stereo
signals in your lower frequencies.

Both patches have a `reset` button on the top right to set parameters to
defaults and a `dry-wet` control to A/B compare the processed and the original
signal.

TODO:
* add normalization for phase-scopes?
* add a help button linking to this README?
* wico3: Mute/Solo for each band?
* initialize num-lines in scope from sample-rate (e.g. 50 ms)
* add pan-meter (avg of width over e.g. the 50 ms)
  * if this is consistently off center, one might want to adjust via pan control
  * maybe add a button to apply correction (e.g. if 5% to left, move pan 5% to
    right) 
* add pan controls (like width)
* maybe group correlation-meter + width-control and pan-meter + pan-control into
  some labeled boxes
