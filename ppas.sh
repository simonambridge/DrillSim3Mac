#!/bin/sh
DoExitAsm ()
{ echo "An error occurred while assembling $1"; exit 1; }
DoExitLink ()
{ echo "An error occurred while linking $1"; exit 1; }
echo Assembling drillsim3
/Library/Developer/CommandLineTools/usr/bin/clang -c -o /Users/simonambridge/Documents/MyProjects/DrillSim3/lib/x86_64-darwin/DrillSim3.o  -arch x86_64 -mmacosx-version-min=10.8 -x assembler /Users/simonambridge/Documents/MyProjects/DrillSim3/lib/x86_64-darwin/DrillSim3.s
if [ $? != 0 ]; then DoExitAsm drillsim3; fi
rm /Users/simonambridge/Documents/MyProjects/DrillSim3/lib/x86_64-darwin/DrillSim3.s
echo Linking /Users/simonambridge/Documents/MyProjects/DrillSim3/DrillSim3
OFS=$IFS
IFS="
"
/Library/Developer/CommandLineTools/usr/bin/ld     -framework Cocoa      -multiply_defined suppress -L. -o /Users/simonambridge/Documents/MyProjects/DrillSim3/DrillSim3 `cat /Users/simonambridge/Documents/MyProjects/DrillSim3/link.res` -filelist /Users/simonambridge/Documents/MyProjects/DrillSim3/linkfiles.res
if [ $? != 0 ]; then DoExitLink /Users/simonambridge/Documents/MyProjects/DrillSim3/DrillSim3; fi
IFS=$OFS
