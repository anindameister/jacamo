# mas

- mas1stYear https://www.emse.fr/~boissier/enseignement/maop20-winter/

- https://ci.mines-stetienne.fr/cps2/mac/helloworld.html

- https://ci.mines-stetienne.fr/cps2/mac/usecase-agent-centric.html

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

![extends: inheritance, intro to environment like the black board](https://github.com/anindameister/jacamo/blob/main/snaps/15.PNG)

![extends: inheritance, intro to environment like the black board](https://github.com/anindameister/jacamo/blob/main/snaps/16.PNG)

![extends: inheritance, intro to environment like the black board](https://github.com/anindameister/jacamo/blob/main/snaps/17.PNG)

![extends: inheritance, intro to environment like the black board](https://github.com/anindameister/jacamo/blob/main/snaps/18.PNG)


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

