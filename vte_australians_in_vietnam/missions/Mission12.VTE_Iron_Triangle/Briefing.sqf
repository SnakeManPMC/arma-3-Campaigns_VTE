player createDiaryRecord ["Diary", ["What to do", "1.6.1966: Your helicopter has been shot down. You have to find a way out of this island but the first priority, is to even find any sign of life."]]; 
player createDiaryRecord ["Diary", ["Diary", "Hello. <br> No entry for today"]]; 
player createDiaryRecord ["Diary", ["Enemy Presence", "Enemies could be everywhere. Find a village, then a boat, then find a house. But first you'll need a map. Try to avoid hitting civilian combatants."]]; 

tskExample1 = player createSimpleTask ["Check the nearby village"];
tskExample1 setSimpleTaskDescription ["Find a village and a map.", "Find a village and map", "Find a village and map"];
tskExample1 setSimpleTaskDestination (getMarkerPos "Au");

a setCurrentTask tskExample1;
 
tskExample1 setTaskState "CREATED";
