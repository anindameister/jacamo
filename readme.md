# mas

- mas1stYear https://www.emse.fr/~boissier/enseignement/maop20-winter/

- https://ci.mines-stetienne.fr/cps2/mac/helloworld.html

- https://ci.mines-stetienne.fr/cps2/mac/usecase-agent-centric.html

- https://ci.mines-stetienne.fr/cps2/mac/

1. Single Agent

- sample

![sample](https://github.com/anindameister/jacamo/blob/main/snaps/1.PNG)

![sample](https://github.com/anindameister/jacamo/blob/main/snaps/2.PNG)

![sample](https://github.com/anindameister/jacamo/blob/main/snaps/3.PNG)

![sample](https://github.com/anindameister/jacamo/blob/main/snaps/4.PNG)

![sample](https://github.com/anindameister/jacamo/blob/main/snaps/5.PNG)

- really single

![really single](https://github.com/anindameister/jacamo/blob/main/snaps/6.PNG)

![really single](https://github.com/anindameister/jacamo/blob/main/snaps/7.PNG)

![really single](https://github.com/anindameister/jacamo/blob/main/snaps/8.PNG)

2. Multiple agents coordinating by communication

#### 2.1. Tentative 1

- multi(2 agents) but no coordination

![multi(2 agents) but no coordination](https://github.com/anindameister/jacamo/blob/main/snaps/9.PNG)

2.2. Tentative 2

- multi(2 agents) but co-ordination has been established

![multi(2 agents) but co-ordination has been established](https://github.com/anindameister/jacamo/blob/main/snaps/10.PNG)

![multi(2 agents) but co-ordination has been established](https://github.com/anindameister/jacamo/blob/main/snaps/11.PNG)

2.3. Tentative 3
The previous solution has a weakness: bob is strongly directing the execution of alice since this agent achieves any goal say sent from another agent.

In order to coordinate the two agents, instead of commanding alice, bob can only warns it that it has finished its task.

- multi(2 agents) but co-ordination has been established with an additional of the removal of commands and just letting self statis know

![multi(2 agents) but co-ordination has been established with an additional of the removal of commands and just letting self statis know](https://github.com/anindameister/jacamo/blob/main/snaps/12.PNG)

![multi(2 agents) but co-ordination has been established with an additional of the removal of commands and just letting self statis know](https://github.com/anindameister/jacamo/blob/main/snaps/13.PNG)

![multi(2 agents) but co-ordination has been established with an additional of the removal of commands and just letting self statis know](https://github.com/anindameister/jacamo/blob/main/snaps/14.PNG)

3. Multiple agents coordinating via the environment

- The example now considers an environment with a board artifact, as a blackboard that agents can use to write messages and to perceive message written on it. 
- In this version of the hello world example, bob writes a message "Hello" on the board blackboard and alice, who is observing the blackboard, 
- writes the message "World" as soon as it acquires the belief that the message "Hello" has been written.

- Environments are structured into workspaces; 
- all agent within a workspace have shared access to all artifact instances in that workspace. 
- In the application file, we can specify the initial set of artifacts and workspaces to be created when the MAS is spawned. উত্সাহিত
- In this case, the file is as follows:

```
mas starting9oct2020 {
	agent aninda {
    join: workshop      // aninda joins workspace workshop
    goals: say("ki re choto jaat")
  }

  agent poulomi {
    join:  workshop     // poulomi joins workspace workshop
    focus: workshop.board   // and focus on artifact board
  }

  workspace workshop {  // creates the workspace workshop
    artifact board: tools.Blackboard  // with artifact board from Blackboard artifact class
  }
}
```

- Artifacts are implemented in Java. The source code (in file Blackboard.java) of the simple blackboard artifact follows:

- extends: inheritance
- package name according to Professor is tools, so got to make sure that while putting the java file into the env folder, we got to create a package named tools in that env folder and then put the java file
- again the javaFileName extends Artifact, this Artifact is existent somewhere and comes along as default.

- extends: inheritance, intro to environment like the black board

- Java classes are used as templates for defining artifacts, 
- using annotated methods to define artifact operations and predefined methods inherited by Artifact API to work with observable properties 
- and the other artifact mechanisms.
![extends: inheritance, intro to environment like the black board](https://github.com/anindameister/jacamo/blob/main/snaps/15.PNG)

![extends: inheritance, intro to environment like the black board](https://github.com/anindameister/jacamo/blob/main/snaps/16.PNG)

![extends: inheritance, intro to environment like the black board](https://github.com/anindameister/jacamo/blob/main/snaps/17.PNG)

![extends: inheritance, intro to environment like the black board](https://github.com/anindameister/jacamo/blob/main/snaps/18.PNG)

4. Multiple agents participating to an organisation

- We now "organise" the set of agents to produce the "Hello World" message. 
- An agent organisation can be used to regulate and coordinate the agents. 
- Although the example is simple, the use of an organisation makes explicit(fully and clearly expressed or demonstrated; leaving nothing merely implied;)
- and facilitates the changing of the specified coordination and regulation patterns. 
- We assume here that agents are compliant and use the organisation as a coordination tool. 
- Coordination will be used to achieve the goal show_message, 
- a goal that should be achieved by the two agents working together. 
- This goal is thus called an organisational goal to distinguish it from an agent goal.

- We use a social scheme to program how the organisational goal is decomposed into sub-goals that are assigned to the agents. 
- For the decomposition, the goal has one sub-goal for each word of the message. 
- For their assignment to agents, we define a mission for each sub-goal. 
- In order to participate in the scheme execution, agents should commit to a mission and achieve the corresponding goal(s). 
- Committing to a mission is a form of promise to the group of agents collectively working on a scheme: 
- "I promise that, when required, I will do my part of the task". 
- When agents have committed to all missions, the scheme can be performed with the guarantee that we have enough agents to work on all required sub-goals.

- This organisation example also defines a single role that all agents will play: 
- the role greeter played in a group type identified by gg (standing for "greeting group"). 
- Agents playing this role (and only them) are permitted to commit to the missions of the scheme as defined by the norm. 
- The program of this organisation is written in XML as follows:

![extends: inheritance, intro to environment like the black board](https://github.com/anindameister/jacamo/blob/main/snaps/19.PNG)

![extends: inheritance, intro to environment like the black board](https://github.com/anindameister/jacamo/blob/main/snaps/20.PNG)

![extends: inheritance, intro to environment like the black board](https://github.com/anindameister/jacamo/blob/main/snaps/21.PNG)

![extends: inheritance, intro to environment like the black board](https://github.com/anindameister/jacamo/blob/main/snaps/22.PNG)

- As before, this file has entries for agents and workspaces, but now an organisation field is added.

- In line 19, an organisation entity is created based on the XML file that describes the type of groups and schemes available in the organisation.

```
// The file .jcm for this implementation of the Hello World is as follows:

// line 19
organisation greeting : org1.xml {
//20
    group ghw : gg {
	//21
      responsible-for: shw
	  /22
    }
	//23
    scheme shw : hw_choreography
  }
```

- One group entity is created in line 20 (identified by ghw) 
- and one scheme entity is created in line 23 (identified by shw). 
- Line 21 states that group ghw provides the agents for the execution of scheme shw.

- Lines 5 for bob
```
roles: greeter in ghw
```
- and 11 assign role greeter to our agents(alice) in group ghw.
```
    roles: greeter in ghw
```

- Lines 6 (for bob)
```
beliefs: my_mission(mission1)
```
and 12 add beliefs in the agents regarding the missions to which they should commit. (for alice)
```
    beliefs: my_mission(mission2)
```

- The execution of the file happens as follows:

- The workspace greeting and its artifact are created.

- The group and scheme entities are created and linked (responsible_for).

- Agents bob and alice are created, they join the workspace workshop.

- The agents are assigned the role greeter.

- By playing this role, they start believing
```
// hwa.asl
+permission(A,_,committed(A,M,S),_)
```

permission(bob,,committed(bob,mission1,shw),)

permission(bob,,committed(bob,mission2,shw),)

permission(alice,,committed(alice,mission1,shw),)

permission(alice,,committed(alice,mission2,shw),)

- The addition of these beliefs trigger their first plan and they commit to their missions.

- When the agents have committed to their missions, the scheme shw has enough agents for it to be carried out and the goal show_w1 can be finally pursued.

- Agent bob, being committed to mission1, is informed that goal shwo_w1 can be adopted and it does so; the message "Hello" is written on the blackboard.

- Agent alice is then told to achieve show_w2 and it does so; the message "World" is written on the blackboard.

- The scheme is finished.

- Execute this new .jcm file

- We can notice a coordinated behaviour: the words are always shown in the correct order. 
- Moreover, the coordination is implemented in the organisation, 
- not in the agents (there is no code in the agents to coordinate their individual actions so that the overall system behaviour is as expected).

# difference between organisation and environment

![difference between organisation and environment](https://github.com/anindameister/jacamo/blob/main/snaps/23.PNG)

# multi-agent planning

![multi-agent planning](https://github.com/anindameister/jacamo/blob/main/snaps/26.jpeg)

# mono-agent planning

![mono-agent planning](https://github.com/anindameister/jacamo/blob/main/snaps/27.jpeg)

# ways to reach the goal, forward and backward chaining

![mono-agent planning](https://github.com/anindameister/jacamo/blob/main/snaps/28.jpeg)

# centralised planning

![centralised planning](https://github.com/anindameister/jacamo/blob/main/snaps/29.jpeg)

# multi-agent planning of a multi-agent plan

![multi-agent planning of a multi-agent plan](https://github.com/anindameister/jacamo/blob/main/snaps/30.jpeg)

# answering the audience

![answering the audience](https://github.com/anindameister/jacamo/blob/main/snaps/31.jpeg)

![answering the audience](https://github.com/anindameister/jacamo/blob/main/snaps/32.jpeg)

# artifacts and some more answering

- agents co-ordinate with the use of artifacts

![answering the audience](https://github.com/anindameister/jacamo/blob/main/snaps/33.jpeg)

# closed and open-systems

![closed and open-systems](https://github.com/anindameister/jacamo/blob/main/snaps/34.jpeg)


# project on day 2

![project on day 2](https://github.com/anindameister/jacamo/blob/main/snaps/24.PNG)

# day3 different guy

![day3 different guy](https://github.com/anindameister/jacamo/blob/main/snaps/35.jpeg)

![day3 different guy](https://github.com/anindameister/jacamo/blob/main/snaps/36.jpeg)

![day3 different guy](https://github.com/anindameister/jacamo/blob/main/snaps/37.jpeg)

![day3 different guy](https://github.com/anindameister/jacamo/blob/main/snaps/38.jpeg)

- abc
```
.send(giacomo,achieve,go)
```

1. run the project
2. something is stuck
3. put whatever
4. put the code
```
.send(giacomo,achieve,go)
```

