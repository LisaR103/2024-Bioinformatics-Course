# Module 3.4 Exercise 4

#setting the session
reinitialize

#fetching the structure
fetch 7Y5I

# showing the cartoon in red
hide everything
show cartoon
color red

#center the structure
center 7Y5I
clip slab, 500

#create an image
bg white
ray
png Exercise4_Image1.png

#hide everything
hide everything

# create selection, show as stick, center and zoom
select TLA, resn TLA
show_as stick, TLA
center TLA
zoom TLA
clip slab, 500

#create an image
ray
png Exercise4_Image2_TLA.png


#hide everything
hide everything

# create selection, show as stick, center and zoom
select ARG, resi 402 & chain A
show_as stick, ARG
center ARG
zoom ARG
clip slab, 500

#create an image
bg white
ray
png Exercise4_Image3_ARG.png
