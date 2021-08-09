# making an average face from a stack of images
#
# run this from VSCODE, or line by line about
# julia command prompt...
#
# ds 2021-08-09

# general idea:
# - load in data in mat format 
# - figure out how data are represented
# - sample a few faces and take their average
# - display them using `imshow()` command

using MAT, FileIO
using Images, ImageView

data = matread("data/allFaces.mat")

# data is a dict that contains VECTORISED Images in a field called
# "faces" stored in a matrix rows (pixels) by columns (exemplars)

# for details see
# see http://faculty.washington.edu/sbrunton/me565/pdf/L29secure.pdf
# reading through their, you can find out about the width height and width of images
n, m  = 192, 168

ex = 101; # say the 101 st exemplar

anExample = data["faces"][:,ex]

anExampleImage = reshape(anExample, (n,m))

imshow(anExampleImage)


## but because the indexing is very neat, we can also use a range of examplars 
# without much change in the code:

nExemplars = size(data["faces"], 2)
allExemplars = 1:nExemplars
allExampleImages = reshape(data["faces"], (n,m, nExemplars))

# allExampleImages is the whole stack of images
imshow(allExampleImages)

# and now we can do some statistics on them (across the stack)
# which means across the 3rd dimension
using Statistics

# we can for example take the MEAN across all those images
meanFace = mean(allExampleImages, dims=(3))
imshow(meanFace)

# or the variance...
varianceFace = var(allExampleImages, dims=(3))
imshow(varianceFace)

# and from this point on, we can consider: what are the
# principal COMPONENTS ...
