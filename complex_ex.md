---
title: Complex Example
layout: default
nav_order: 4
---


# Presentation of the complex example

Let us consider a layout of a hospital with three floors. The hospital includes a total number of rooms of 12, denoted by the set $\mathcal{Y} = \{ y_1, y_2, y_3, y_4, y_5, y_6, y_7, y_8, y_9, y_{10}, y_{11}, y_{12}\}$, with examination rooms $y_7, y_{11}$, surgery rooms $y_8, y_{12}$, therapy rooms $y_9, y_{10}$, and MRI rooms $y_1, y_3, y_4$ which can be monitored only from rooms $y_2, y_5, y_6$.

The robotic system includes different types of robots, based on their spatial capabilities: $r_p$ are robots carrying patients, $r_m$ have scanning abilities only for the MRI procedure, $r_{sc}$ are supplier and cleaning robots (supply with medicament and sterilize the rooms in which the patient should enter for medical operations) and $r_a$ are assistant robots having a wide range of actions, realizing the tasks of $r_m$ and $r_{sc}$. The following table illustrates the agents' capabilities w.r.t. the spatial constraints. For example, agents $r_p$ can only enter rooms $y_1, y_3, y_4, y_7, y_{11}$ for MRI or leading the patients for examination, while agents $r_m$ have access only in rooms $y_2, y_5, y_6$ to scan the patient during the MRI procedure. 

|Floor|Rooms   |$r_p$|$r_m$|$r_{sc}$|$r_a$|
|-----|--------|-----|-----|--------|-----|
|I    |$y_1$   |   x |     |        |     |
|II   |$y_2$   |     |  x  |        | x   |
|I    |$y_3$   |   x |     |        |     |
|I    |$y_4$   |   x |     |        |     |
|II   |$y_5$   |     |  x  |        |  x  |
|II   |$y_6$   |     |  x  |        |  x  |
|II   |$y_7$   |   x |     |        |     |
|III  |$y_8$   |     |     |   x    |   x |
|III  |$y_9$   |     |     |   x    |   x |
|III  |$y_{10}$|     |     |   x    |   x |
|I    |$y_{11}$|   x |     |        |     |
|II   |$y_{12}$|     |     |   x    |   x |



# Presentation of the files

## The System Net : for example system_net_4r for 4 heterogeneous robots

<img src="../pictures/sn_4.png" alt="SN" width="700"/>

This is the main pilot file that links all parts of the model together. In order to understand the different elements of this file, there is a **Color code** :
* Blue: System Net
* Green: Elements used to launch a simulation
* Red: Elements used to end a simulation
* Magenta: Processing of the information, display of the best solution

## The Specification Net (SpecOPN) : complexmission

The LTL mission is complex, and reflects a futuristic realistic scenario where a team of heterogeneous robots assist in hospital procedures.

```math
Mission \varphi = \diamondsuit (b_1 \wedge b_2) \wedge \diamondsuit (b_3 \wedge b_6)  \wedge \diamondsuit (b_4 \wedge b_5) \wedge \neg (b_1 \vee b_3 \vee b_4) \mathcal{U} (b_7 \vee b_{11}) \wedge \diamondsuit (b_8 \vee b_9 \vee b_{10} \vee b_{12})
```

The representation of the complex mission as a Petri net is heavy, it is presented in compact form and is thus not the most lisible. The representation under Petri net formalism was done automatically as described in Renew page.

<img src="../pictures/complexmission.png" alt="mission" width="400"/>

## The Robot Petri Nets 

In this simulation, we use multiple types of RobotPN. Respectively, we present robot_assistant, robot_full, robot_monitoring, robot_patient and robot_supply_and_clean as presented in the paper. The representation of the nets was made with random layouts : the representation that opens on your computer may differ. The spatial capabilities of the robots are captured in their Petri net models, reflecting the rooms from the hospital, as presented in the paper.

<img src="../pictures/robot_assistant.png" alt="qpn" width="300"/> 

<img src="../pictures/robot_full.png" alt="qpn2" width="500"/>

<img src="../pictures/robot_monitoring.png" alt="qpn2" width="300"/> 

<img src="../pictures/robot_patient.png" alt="qpn2" width="500"/>

<img src="../pictures/robot_supply_clean.png" alt="qpn2" width="500"/>



# Information on the file

 * **System nets**: the file names contain the number of robots in the team, specifying if the robots are different or the same, consdiering their spatial capabilities. For example, the file *system_net_4r_2110.rnw* express a team of heterogeneous robots, with 2 robots carrying patients, 1 monitoring robot, 1 robot for supply and clean operations and 0 assistant robots. On the other hand, the file *system_net_4r_samerob.rnw* express a homogeneous robotic team;
 * **Mission net**: SimpleMission.rnw refers to the mission exemplified throughout the paper, and ComplexMission.rnw refers to the scenario with the hospital. In addition,  the files MissionE.rnw and MissionF.rnw contain missions with multiple final states. Their LTL Formulas are presented below:
```math
MissionE: \varphi = \diamondsuit \square b_1 \wedge b_2 \vee \diamondsuit \square b_3 \wedge b_6 \vee  \diamondsuit \square b_4 \wedge b_5 \vee \wedge \diamondsuit ((b_1 \vee b_3 \vee b_4) \wedge \bigcirc \diamondsuit b_9) \vee (\diamondsuit \square ((b_{11} \vee b_7) \wedge \diamondsuit \bigcirc (b_{10} \vee b_{12})))
```
```math
MissionF: \varphi = \diamondsuit \square b_1 \wedge b_2 \vee \diamondsuit \square b_3 \wedge b_6 \vee  \diamondsuit \square b_4 \wedge b_5 \vee \wedge \diamondsuit ((b_1 \vee b_3 \vee b_4) \wedge \bigcirc \diamondsuit b_9) \vee  (\diamondsuit \square ((b_{11} \vee b_7)
```
 * **Robot nets**:  qpn_robot and qpn_robot_2 are used for the SimpleMission. The rest of the robot nets (robot_assistant, robot_full, robot_monitoring, robot_supply_and_clean, robot_patient) are used for the ComplexMission.
   
 > [!NOTE]
 > One experiment include multiple simulations, as follows: 1000 simulations for the first three cases (2-5 robots), 250 simulations for 6 robots, 85 simulation for 7 robots and 300 simulations for 8 robots. 
