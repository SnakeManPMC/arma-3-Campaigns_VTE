player createDiaryRecord ["Diary", ["What to do", "1.7.1966: After one month vacation on the Charlie FOB on 7 mountains, we need the only SAS presence in 40 km proximity again. This time on the MDSZ island. Its a quite peaceful island, controlled by americans, only a few VC squads in the west are remaining, other than that, this is an example of how the Vietnam war should be working out. You have to clear the last remaining VC unit and their Anti-Air gun and then we can use this island as evcuation point for civilians from other parts of the country with a large FOB. The complex you are searching is an old chineese temple, the grass is high. Thats why you have a EX-41 launcher. Good luck."]]; 
player createDiaryRecord ["Diary", ["Diary", "Hello. <br>  After my time on the Iron Triangle island, I feel topfit again. Still, I want to get rid of everything here and just want home. A few more months to go."]]; 
player createDiaryRecord ["Diary", ["Enemy presence", "We expect 20-40 dug in soldiers."]]; 

tskExample1 = player createSimpleTask ["Destroy the ZSU-23"];
tskExample1 setSimpleTaskDescription ["Destroy the enemy AA.", "Destroy the AA", "Destroy the AA"];
tskExample1 setSimpleTaskDestination (getMarkerPos "Au");

a setCurrentTask tskExample1;
 
tskExample1 setTaskState "CREATED";
