# MotionPlanningNwN
Motion planning with Nets-within-Nets paradigm

This work focuses on designing motion plans for a heterogeneous team of robots that must cooperate to fulfill a global mission. Robots move in an environment that contains some regions of interest, while the specification for the entire team can include avoidance, visits, or sequencing of these regions of interest.

The mission is expressed in terms of a Petri net corresponding to an automaton, while each robot is also modeled by a state machine Petri net.

The current work brings about the following contributions with respect to existing solutions for related problems:

First, we propose a novel model, denoted High-Level robot team Petri Net (HLrtPN) system, to incorporate the specification and robot models into the Nets-within-Nets paradigm.
A guard function, named Global Enabling Function, is designed to synchronize the firing of transitions so that robot motions do not violate the specification.
Then, the solution is found by simulating the HLrtPN system in a specific software tool that accommodates Nets-within-Nets.
Illustrative examples based on Linear Temporal Logic missions support the computational feasibility of the proposed framework.

More examples can be found on: https://sof16.github.io/
