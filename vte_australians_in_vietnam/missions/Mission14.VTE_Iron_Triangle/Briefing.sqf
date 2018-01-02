player createDiaryRecord ["Diary", ["What to do", "3.6.1966: Your helicopter has been shot down, but you have found a place to sleep for now. The island does have a radio transmitter to contact friendly forces and its time to use it. Chances are low but better than dying of starvation."]]; 
player createDiaryRecord ["Diary", ["Diary", "Hello. <br>  I've heard weird noises all around my house and I want to know what it is. Hopefully no Vietcongs with pistols aiming at me."]]; 
player createDiaryRecord ["Diary", ["Villages", "I should check out the villages, there might be some bloody good fighters."]]; 

tskExample1 = player createSimpleTask ["Get the radio transmitter"];
tskExample1 setSimpleTaskDescription ["Get to the radio transmitter.", "Get the radio transmitter", "Get the radio transmitter"];
tskExample1 setSimpleTaskDestination (getMarkerPos "Au");

a setCurrentTask tskExample1;
 
tskExample1 setTaskState "CREATED";
