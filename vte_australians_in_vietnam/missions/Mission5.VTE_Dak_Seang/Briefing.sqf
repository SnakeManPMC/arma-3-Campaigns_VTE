player createDiaryRecord ["Diary", ["What to do", "11.1.1966: Holidays in your FOB are over, you're back in the game. Your objective is to take out the enemy gunsmith Dubai Phieiil in his village in Dak Din Lop, where he is manufacturing NVA K50m submachineguns. Enemy Anti-Air presence is high and spread throughout the area, and land vehicles are impossible, so you have to go the long way on foot."]]; 
player createDiaryRecord ["Diary", ["Diary", "Hello. <br> I was enjoying my christmas in the FOB and slept for the last 2 days in the jungle with a fellow team. Today we have to walk like 4 kilometres through the jungle, full of VC, NVA and traps. So a normal day for a soldier. Its gonna be hell today."]]; 
player createDiaryRecord ["Diary", ["Enemy presence", "We expect a lot of enemies, but chances are high, that you do not encounter most of them, since the jungle is big. The village with the gunsmith is lightly armed."]]; 

tskExample1 = player createSimpleTask ["Eliminate enemy presence in the village"];
tskExample1 setSimpleTaskDescription ["Kill the gunsmith.", "Kill the gunsmith", "Kill the gunsmith"];
tskExample1 setSimpleTaskDestination (getMarkerPos "Au");

a setCurrentTask tskExample1;
 
tskExample1 setTaskState "CREATED";
