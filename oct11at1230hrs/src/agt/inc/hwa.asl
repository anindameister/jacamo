// hwa.asl
// when the organisation gives me permission to commit to a mission M in scheme S,
// do that if it matches the belief my_mission
+permission(A,_,committed(A,M,S),_)
    : .my_name(A) & // the permission is for me
      my_mission(M) // my mission is M
<- commitMission(M).

// when I have goal show_w1, create sub-goal say(...)
+!show_w1 <- !say("ei choto jaat").
+!show_w2 <- !say("ei bhikari jaat").

+!say(M) <- writeMsg(M).

// basic behaviors to handle artifacts
{ include("$jacamoJar/templates/common-cartago.asl") }
// basic behaviors to handle organisations
{ include("$jacamoJar/templates/common-moise.asl") }
// basic behaviors to obey norms
{ include("$moiseJar/asl/org-obedient.asl") }