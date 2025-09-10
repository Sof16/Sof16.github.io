---
title: Additional steps
layout: default
nav_order: 4
---

# Additional steps 

## Create a Specification Net from your LTL global mission.

### Option 1

The $SpecOPN$ model can be represented directly by the user in the Renew tool. However, for complex missions, manual design is difficult to build.  

Thus, Renew provides a feature to express any LTL mission as a Petri net model in a file with extension `.rnw`, which can then be used for experiments in the *High-Level robotic team Petri net* framework.  

A list of steps to generate a `SpecOPN` model from an LTL mission is provided below:

1. Translate the given LTL mission into a Büchi automaton using any model-checking tool ([Spot](https://spot.lre.epita.fr/), Gastin et al., 2001).  
2. Copy the detailed representation of the automaton into a file and save it with the extension `.never`.  
3. Convert the `.never` file to a `.hoa` file using the `autfilt` tool from SPOT.  
   - The `autfilt` tool can be accessed here: [https://spot.lre.epita.fr/autfilt.html](https://spot.lre.epita.fr/autfilt.html).  
   - Run in the command line:  
     ```bash
     autfilt NameOfTheFile.never > NameOfTheFile.hoa
     ```
4. Open a terminal in the `hoa2pnml` folder (from relevant references) and run:  
   ```bash
   java -jar hoa2pnml.jar NameOfTheHoaFile

### Option 2


