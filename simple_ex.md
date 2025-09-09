---
title: Simple Example
layout: default
nav_order: 3
---


# Presentation of the simple example

For an easier visualization in the Renew simulator, we have defined notations without subscripts,
e.g., the formal notation of atomic propositions *B* for set *Y = {y1, y2, y3, y4}* (Fig. 1) is replaced
here by set *{a, b, c,w}*, in exactly this order, with *w* assigned to the free space *y4*. Moreover,
the symbols *¬* or *∧* are replaced in Renew with the syntax “*!*“, respectively “,“. The *True* value
returned by the associated Büchi automaton of the co-safe LTL formula, is expressed in the tool
with “1“.

Let us consider for example the transition *t3* from the first RobotOPN model. The transition
label is modeled in Renew (*c, 1′p5, 1′p4, . . .*) and corresponds to the information required for the
synchronization, used by the GEF: the robot occupies one unit in the region labeled with *c*
(modeled by *p5*) while freeing its position from the free space *w* (modeled by *p4*). Thus, the
atomic proposition for *c* is evaluated as *True*. The last parameter from the transition label
represents additional information about the robot. In our example, the last data contains a
number expressing the robot’s time to move from *p4* towards *p5*.

<img src="../pictures/qpn.png" alt="qpn" width="300"/> <img src="../pictures/qpn_2.png" alt="qpn2" width="300"/>

Figure 1: RobotOPN models: *r1* and *r2* (denoted as *qpn* in Renew) (left) can move freely in the
workspace. Robot *r3* (denoted as *qpn2* in Renew) (right) is not allowed to enter the overlapped
region between *y2* and *y3*


# Presentation of the files

## The System Net : system_net_2r_simple

<img src="../pictures/sn_simple.png" alt="SN" width="700"/>

This is the main pilot file that links all parts of the model together. In order to understand the different elements of this file, there is a **Color code** :
* Blue: System Net
* Green: Elements used to launch a simulation
* Red: Elements used to end a simulation
* Magenta: Processing of the information, display of the best solution

## The Specification Net (SpecOPN) : simplemission

<img src="../pictures/simplemission.png" alt="mission" width="400"/>

## The Robot Petri Nets : qpn and qpn_2

In this simulation, we use two types of RobotPN : 

<img src="../pictures/qpn.png" alt="qpn" width="300"/> <img src="../pictures/qpn_2.png" alt="qpn2" width="300"/>



# Information on the files

**Simulation information** : 
* At all times, you can observe the state of the robots nets by right-clicking the number contained by the Master Net place and double-clicking on one robot. 
* You can simulate by choosing the fired place. After having fired "init", you can double click on a transition si and choose what transition to fire. 
* This simulation is done for an LTL formula which implies the visit of three regions of interest ("a", "b", "c"), but requiring the visit of region "c" before visintg "a". The team of 3 robots evolves in an environment with 3 regions of interest from which two of them overlap.


**Addional remarks**:
* The system will be executed as many times as the initial marking of place "numSim".
* All the traces will be accumulated to the file named "log.txt".
* Besides storing in "log.txt" the solutions found, the "best" one will be in place named "bestSol". Being initially "", each time a new solution is obtained, it is compared with the current best, by means of the function "select_best" in the class "Eval". In its current version, "best" means "shorter" in terms of number of chars, but this is so just to check the feasability. The function could/should be much more sophisticated
* This example contains two different types of robots: two as the initial example, and a second one which is not allowed to visit the intersection area
* It has also been added a way of giving names to robots for an easier understanding of the solutions

 

