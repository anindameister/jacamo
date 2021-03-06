package starting9oct2020;
import cartago.*;


public class Blackboard extends Artifact {
	  // names of observable property as well as actions must start with downcase letter
	  void init() {
	    defineObsProperty("lastMsg","");
	  }

	  @OPERATION void writeMsg(String msg) {
	    System.out.println("[BLACKBOARD] " + msg);
	    getObsProperty("lastMsg").updateValue(msg);
	  }
	}