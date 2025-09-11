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


# Process to run a simulation

### Step 1 : Download the simulation software Renew

Please refer to the [Renew Installation window](../renew.html).

### Step 2 : Download the example files

[Please click here to access the files on Github](https://github.com/Sof16/Sof16.github.io).

### Step 3 : Open the example in Renew

The procedure for the launching on the example in Renew is:

1. Open the Powershell in the directory with the example files, containing the Java script Eval.java.
2. Execute "javac Eval.java" in the Powershell
3. Open Renew from the Powershell ( type in the path of the directory containing the Renew software adding \renew ) 
4. In Renew, open all the files with the extension .rnw --> path to renew/loader *.rnw

### Step 4 : Simulate

Open the file execute_experiment.rnw
Simulate Step by Step (Ctrl+I) or completely (Ctrl+R)
