player createDiaryRecord ["Diary", ["What to do", "24.12.1965: There is really another mission before christmas. You have to pack your stuff and go to the australian outpost 1 immediately, signs are clear like stars, that they are expecting a large vietnamese attack. You have to hold them off for 10 minutes, then reinforcement forces arrive. Go soldier!"]]; 
player createDiaryRecord ["Diary", ["Diary", "Hello. <br> The weather is worse than in australia here. Just raining. Have to go now. Bye."]]; 
player createDiaryRecord ["Diary", ["Enemy presence", "We expect 20-40 enemies. You can take the australians under your command by ordering them to do so via the radio in your map."]]; 

tskExample1 = player createSimpleTask ["Hold the place"];
tskExample1 setSimpleTaskDescription ["Hold the place.", "Hold the place", "Hold the place"];
tskExample1 setSimpleTaskDestination (getMarkerPos "Au");

a setCurrentTask tskExample1;
 
tskExample1 setTaskState "CREATED";
