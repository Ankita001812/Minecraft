[![Open in Visual Studio Code](https://classroom.github.com/assets/open-in-vscode-718a45dd9cf7e7f842a935f5ebbe5719a5e09af4491e668f4dbf3b35d5cca122.svg)](https://classroom.github.com/online_ide?assignment_repo_id=11864156&assignment_repo_type=AssignmentRepo)
# Programming Studio 2 (COSC2804) - Assignment 1
**Student number:s3980223**

This is the README file for Assignment 1 in Programming Studio 2 (COSC2804).

The LC-3 virtual machine contained herein is a fork of [this publically available repo](https://github.com/mhashim6/LC3-Virtual-Machine). The original VM has been modified to enable communication with Minecraft, via the mcpp library.

The only files that you need to edit for this assignment are the VM source code (src/lc3.cpp) and this README.md file (by adding your student number above).

## Building and testing the VM

To build the VM, run `make`.

To verify that the VM can execute an object file, try running `./lc3 examples/hello_world.obj`. You should see "Hello, World!HALT" output to the console.

To verify that the pre-existing Minecraft TRAPs are functioning correctly:
* Launch a Spigot server and join it, per the [instructions on Canvas](https://rmit.instructure.com/courses/123553/pages/getting-started-with-minecraft++-and-elci?module_item_id=5509058).
* Run `./lc3 examples/hello_minecraft.obj`.
* You should see "Hello, Minecraft!" output in the game chat.

## Editing the VM

We recommend reading through src/lc3.cpp and paying particular attention to where the existing TRAPs are implemented.

After you've made an attempt at adding the new TRAP 0x37, you can test if it's functioning correctly by running the programs in the tests folder.
* For example, to run the first test, use `./lc3 tests/a1_test1.obj`.
* The expected output for each test is explained in the comments at the top of the corresponding .asm file.
  
