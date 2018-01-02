player createDiaryRecord ["Diary", ["What to do", "1.2.1966: Already got rid of the jungle? We have good news for you. You'll fly to the island of Ashau and take over a small town with no name. There's a harbour in the near with D-30 cannon. You have to destroy them. Enemy tanks are expected. You and a fellow ARVN squad will do the job. Good luck soldier, we're running out of time. "]]; 
player createDiaryRecord ["Diary", ["Diary", "Hello. <br> After that long mission yesterday finally something urban."]]; 
player createDiaryRecord ["Diary", ["Enemy presence", "We expect 20-40 enemies, everything from Vietcong to NVA. NVA presence is less tho. At least one tank expected."]]; 

tskExample1 = player createSimpleTask ["Destroy the cannon"];
tskExample1 setSimpleTaskDescription ["Destroy the enemy D30 cannon.", "Destroy the cannon", "Destroy the cannon"];
tskExample1 setSimpleTaskDestination (getMarkerPos "Au");

a setCurrentTask tskExample1;
 
tskExample1 setTaskState "CREATED";
