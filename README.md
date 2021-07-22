# Some neuroscience notes

denis schluppeck

2021-05-24

this repo contains some tips, tricks and a couple of projects related to finding out what neuroscience at university is like. It was prompted by discussions with a couple of budding scientists (still at high school), who wanted to find out a bit more about doing research.

## plan

- some julia notebooks and youtube clips to go along with them, explaining 
  - how to look at brain images
  - make visual stimuli
  - plot data
  - think about designing experiments.
  - whatever comes up during discussions

## julia note book stuff

I will try to post some notes and details to help with julia stuff here as we go through things and if we manage to find time for some follow-up sessions.

To get started with the julia notebook in this folder:

- start `julia`
- at the prompt, type ]   the open square bracket
- and activate the evironment by typing `activate .`
- make sure you have the packages installed with `instantiate` 
- the start the Pluto notebook with `Pluto.run()` and opening the `brain-notebook.jl`

I have made a little youtube clip walking through the steps...: 

1. first steps with the julia notebooks: https://www.youtube.com/watch?v=OTVC4D3SC6U
2. try to find out a bit about julia *environments* - this will help you with some of the package dependencies
3. There is a brilliant online course (at MIT), where you can get some tips - https://computationalthinking.mit.edu/Spring21/
4. maybe especially useful about how to set up the software etc. - https://computationalthinking.mit.edu/Spring21/installation/


## text editor + other things

- it's a really good idea to have a good / powerful **text editor** (not word, because that can mess things up :). I now use Visual Studio Code (free) from Microscort -- which is very good:   https://code.visualstudio.com/

## specific ideas / problem sets

1. Images are tables / grids of numbers
2. In `julia`, write a function that takes a list of numbers like [1.2, 4.5, 3.6, 1.4] and turns it into a table. In the case of n^2 elements into a table with n rows and n columns
  - is there more than one way to make this table?
  - what would you have to know if the table / image was not square? 
  - can you think of a way to make this function more generic, so it can handle rectangular tables / images, too? What's needed for this?
3. Can you think of a way to do the reverse (table -> list or vector)? What are some of the issues here?
4. Using the `julia` packages `Images`, `MAT`, and `NIfTI`, can you figure out a way to load in a PNG image, a MAT file and a NIFTI file respectively?
  - Can you find out what each of those formats is routinely used for?


## make use of the slack

It might be a really good idea to talk to each other on the `slack` channel to discuss ideas, where you are getting stuck, what some of the possible solutions might be... it's much easier to learn this stuff in a group

While I am away from e-mail, I will ask if a couple of my PhD students are able to pop onto the slack every now and then to help with generic answers.... (they are most likely to be **matlab** and **python** users, so may not be able to help with **julia** questions, though 😀)