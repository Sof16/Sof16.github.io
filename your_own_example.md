---
title: Your Own Example
layout: default
nav_order: 5
---

# What are the steps for testing out your own example with our model ? 

## Create a Specification Net from your LTL global mission.

This can be done by abiding by the following steps:

1. Translate your LTL formula into a Büchi automaton using the [SPOT software](https://spot.lre.epita.fr). 
2. Save the automaton with an .never type extension.
3. Change the extension to .hoa by using the ["autfilt" tool of the SPOT software](https://spot.lre.epita.fr/autfilt.html):
```
autfilt NameOfTheFile.never > NameOfTheFile.hoa
```
5. Go into the folder that holds the folder hoa2pnml. This folder can also be found in [this repository](https://github.com/eva-robillard/NWN_Complex).
6. Open the Powershell there.
7. Write this command line :

```
java -jar hoa2pnml.jar NameOfTheHoaFile (without adding the extension .hoa)
```
The .hoa file is now a .pnml model visible by Renew.

## Robot nets

The model of the robot nets is introduced in the paper through different examples. 



