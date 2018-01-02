player createDiaryRecord ["Diary", ["What to do", "3.2.1966: You and and the australians are working together again. Hinder an enemy convoy from attacking our SF base, which is nearly left unguarded due too little amount of soldiers. You've got mines and AT weapons, make use of it. After you're done, escape to the nearby village."]]; 
player createDiaryRecord ["Diary", ["Diary", "Hello. <br> M67 launcher shooting is not easy, but one hit can knock a T55 out, so I have to make use of it."]]; 
player createDiaryRecord ["Diary", ["Enemy presence", "We expect everything from 5-30 fighters and 2-5 tanks."]]; 

tskExample1 = player createSimpleTask ["Destroy enemy targets"];
tskExample1 setSimpleTaskDescription ["Destroy the enemy.", "Destroy the enemy", "Destroy the enemy"];
tskExample1 setSimpleTaskDestination (getMarkerPos "Au");

a setCurrentTask tskExample1;
 
tskExample1 setTaskState "CREATED";
