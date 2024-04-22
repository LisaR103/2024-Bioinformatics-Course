fetch 8I35, async=0
_ set_view (\
_     1.000000000,    0.000000000,    0.000000000,\
_     0.000000000,    1.000000000,    0.000000000,\
_     0.000000000,    0.000000000,    1.000000000,\
_     0.000000000,    0.000000000,  -50.000000000,\
_   162.240539551,  162.241287231,  162.240539551,\
_    40.000000000,  100.000000000,  -20.000000000 )
_ set_view (\
_     1.000000000,    0.000000000,    0.000000000,\
_     0.000000000,    1.000000000,    0.000000000,\
_     0.000000000,    0.000000000,    1.000000000,\
_     0.000000000,    0.000000000, -447.863739014,\
_   162.240539551,  162.241287231,  162.240539551,\
_   353.099182129,  542.628295898,  -20.000000000 )
cmd.hide("everything","all")
cmd.show("cartoon"   ,"8I35")
_ viewport 840, 631
ray 840, 631, async=1
png /Users/Lisa/Documents/Lisa/Arbeit/FortbildungBioinformatik/ABI-2024-1_Course-Materials/Teaching_materials/GitHub/Module3_Summaries/Module3.4/Exercise5/Exercise5_Image1_2.png, 0, 0, -1, ray=0
util.color_chains("(8I35)",_self=cmd)
ray 840, 631, async=1
png /Users/Lisa/Documents/Lisa/Arbeit/FortbildungBioinformatik/ABI-2024-1_Course-Materials/Teaching_materials/GitHub/Module3_Summaries/Module3.4/Exercise5/Exercise5_Image1_2.png, 0, 0, -1, ray=0
select chainA, chain A
cmd.hide("everything","all")
cmd.hide("sticks"    ,"chainA")
cmd.show("sticks"    ,"chainA")
cmd.hide("everything","all")
cmd.show_as("sticks"    ,"chainA")
cmd.disable('chainA')
zoom chainA
_ set_view (\
_     1.000000000,    0.000000000,    0.000000000,\
_     0.000000000,    1.000000000,    0.000000000,\
_     0.000000000,    0.000000000,    1.000000000,\
_     0.000000000,    0.000000000, -447.863739014,\
_   183.082244873,  122.373146057,  160.362487793,\
_  -133479.406250000, 134375.125000000,  -20.000000000 )
_ set_view (\
_     1.000000000,    0.000000000,    0.000000000,\
_     0.000000000,    1.000000000,    0.000000000,\
_     0.000000000,    0.000000000,    1.000000000,\
_     0.000000000,    0.000000000, -220.655319214,\
_   183.082244873,  122.373146057,  160.362487793,\
_   173.966339111,  267.344299316,  -20.000000000 )
clip slab 500
clip slab, 500
ray 840, 631, async=1
png /Users/Lisa/Documents/Lisa/Arbeit/FortbildungBioinformatik/ABI-2024-1_Course-Materials/Teaching_materials/GitHub/Module3_Summaries/Module3.4/Exercise5/Exercise5_Image2_2.png, 0, 0, -1, ray=0
zoom
_ set_view (\
_     1.000000000,    0.000000000,    0.000000000,\
_     0.000000000,    1.000000000,    0.000000000,\
_     0.000000000,    0.000000000,    1.000000000,\
_     0.000000000,    0.000000000, -220.655319214,\
_   162.240539551,  162.241287231,  162.240539551,\
_   -29.344680786,  470.655334473,  -20.000000000 )
_ set_view (\
_     1.000000000,    0.000000000,    0.000000000,\
_     0.000000000,    1.000000000,    0.000000000,\
_     0.000000000,    0.000000000,    1.000000000,\
_     0.000000000,    0.000000000, -447.863739014,\
_   162.240539551,  162.241287231,  162.240539551,\
_   353.099182129,  542.628295898,  -20.000000000 )
cmd.hide("everything","all")
cmd.show("spheres"   ,"8I35")
cmd.hide("everything","8I35")
cmd.show("surface"   ,"8I35")
ray 840, 631, async=1
png /Users/Lisa/Documents/Lisa/Arbeit/FortbildungBioinformatik/ABI-2024-1_Course-Materials/Teaching_materials/GitHub/Module3_Summaries/Module3.4/Exercise5/Exercise5_Image3_2.png, 0, 0, -1, ray=0
