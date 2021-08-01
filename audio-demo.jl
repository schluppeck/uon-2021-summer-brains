# julia example using PortAudio.jl
#
# adapted from the PortAudio.jl webpage
# ds 2021-06

# assuming that FileIO, PortAudio, SampledSignals, LibSndFile
# are installed

using FileIO
using PortAudio
using SampledSignals 
using LibSndFile
dev = PortAudio.devices()

# find the devices with input channels
# the following uses a LIST COMPREHENSION
# to go over all entries in dev and looks for ones where the maxinchans
# is > 1 (ie they can record)
input_devs = [d for d in dev if d.maxinchans > 0]

# take the first one of those
indev = first(input_devs)

# create a stream
stream = PortAudioStream(indev.name, indev.maxinchans, 0)

# record 10s of audio...
buf = read(stream, 10s)
# close out
close(stream)

# something 
# the following works on the Mac
save(joinpath(homedir(), "Desktop", "myvoice.ogg"), buf)

# but you could try this on macos / windows
# just saving in the current folder instead
# pwd() is "print working directory"
save(joinpath(pwd(), "myvoice.ogg"), buf)