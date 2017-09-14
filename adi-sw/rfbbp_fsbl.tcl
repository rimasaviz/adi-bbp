## xsct tcl file

sdk set_workspace sdk
sdk create_hw_project -name hw -hwspec system_top.hdf
sdk create_app_project -name fsbl -hwproject hw -proc ps7_cortexa9_0 -app {Zynq FSBL}
sdk build_project -type all

exit

