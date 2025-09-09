---
title: Home
layout: home
nav_order: 1
---

# Nets-within-Nets for Motion Planning with Renew

The website contains all the information required for the simulation work introduced in the article **Multi-robot Motion Planning based on Nets-within-Nets Modeling and Simulation**.


# Presentation of the Project 

This paper focus on designing motion plans for a heterogeneous team of robots that has to cooperate to fulfill a global mission. Robots move in an environment that contains some regions of interest, and a given specification in the Linear Temporal Logic (LTL) formalism for the entire team, which includes avoidances, visits, or sequencing of these regions of interest. The specification is expressed in terms of a Petri net corresponding to an automaton for the LTL mission, while each robot is also modeled by a state machine Petri net. The current work brings the following contributions with respect to existing solutions for related problems. First, we propose a novel model, denoted High-Level robot team Petri Net HLrtPN system, incorporating the specification and the robot models into the Nets-within-Nets paradigm. A guard function, named Global Enabling Function (gef), is designed to synchronize the firing of transitions so that robot motions do not violate the specification. Then, the solution is found by simulating the HPrtLN system in a specific software tool that accommodates Nets-within-Nets. Illustrative examples support the computational feasibility of the proposed framework.

# Github project links

Our work can be accessed on GitHub through a [simple example](https://github.com/eva-robillard/NWN_Simple) and a [complex example](https://github.com/eva-robillard/NWN_Complex) that will be further described in the corresponding windows. 

# Navigation on the website 

You can navigate on the website with the panel on the left of the screen. 

We recommand simulating the [simple example](../simple_ex.html) first to discover what our work is about. 

Then, the [complex example]() as presented in the paper is explained simulation-wise. 


This work was done by a [team of researchers](../team.html) from a joint work between multiple universities. 


