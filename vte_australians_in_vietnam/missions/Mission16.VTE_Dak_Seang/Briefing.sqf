player createDiaryRecord ["Diary", ["What to do", "10.10.1966: You had 3 peaceful months on the MDSZ island without any inconvience but now we have a situation again. Your old FOB, the Dak Seang SF base came under attack the day before yesterday and lies now in NVA hands. The NVA just stole everything they could and then moved out and handed it over to the Vietcong of the outlying villages. You have to regain control over the FOB, or in other words: Seize it! You and the Bravo team are there for the task. Bravo seized a D-30 near the french platoon yesterday with a few rounds in it, you should make use of it but you don't have to. Whatever and however you do, seize the Dak Seang SF base and eliminate any enemy presence you encounter. "]]; 
player createDiaryRecord ["Diary", ["Diary", "Hello. <br>  MDSZ island felt a little like home. I was even on the beach, just relaxing in the non-existing sun. Now I'm back on Dak Seang, my first island, and have to deal with the unfortunate message that my 'home' has been seized. Its my job to take it back. There can't be too many enemies when they send 2 4 men teams to seize an entire FOB."]]; 
player createDiaryRecord ["Diary", ["Enemy presence", "We expect more enemies in the jungle than in the base itself. Since the NVA left, there are like 20-30 soldiers left. But expect more in the jungle."]]; 

tskExample1 = player createSimpleTask ["Seize the base."];
tskExample1 setSimpleTaskDescription ["Seize the base and eliminate enemy presence.", "Seize the base", "Seize the base"];
tskExample1 setSimpleTaskDestination (getMarkerPos "Au");

a setCurrentTask tskExample1;
 
tskExample1 setTaskState "CREATED";
