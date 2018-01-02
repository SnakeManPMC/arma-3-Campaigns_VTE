player createDiaryRecord ["Diary", ["What to do", "4.2.1966: You and the ARVN are working together in this operation. Capture the nearby village where VC units are assumed and wait for further instructions."]]; 
player createDiaryRecord ["Diary", ["Diary", "Hello. <br> Attacking the convoy yesterday was easier than expected which does not mean that it was easy, but instead of 5 tanks, we 'only' encountered 2. Today we have to seize a small village full of VC. I think there's more in the air than they are admitting now."]]; 
player createDiaryRecord ["Diary", ["Enemy presence", "We expect 3-10 units in the village itself."]]; 

tskExample1 = player createSimpleTask ["Seize the village"];
tskExample1 setSimpleTaskDescription ["Clear the village.", "Clear the village", "Clear the village"];
tskExample1 setSimpleTaskDestination (getMarkerPos "Au");

a setCurrentTask tskExample1;
 
tskExample1 setTaskState "CREATED";
