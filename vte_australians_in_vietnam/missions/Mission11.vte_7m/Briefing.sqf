player createDiaryRecord ["Diary", ["What to do", "16.3.1966: There is a BM-21 missile launcher and high ranking officer in the town of Chau Doc. Unfortunately we cannot get any personell to the area other than our recon, thats why we have to rely on our only captured D-30 artillery in the area. We do not have any crew for it and thats why we decided to use you. We know that your are not used to this as well, but you have to try out. American dependance on 7 Mountains depends on it and we don't want to lose our partner there. The red target must be destroyed, the black ones are optional."]]; 
player createDiaryRecord ["Diary", ["Diary", "Hello. <br> Always have to protect australians, americans and local forces. Who is there to protect us, the british?"]]; 
player createDiaryRecord ["Diary", ["How to use the artillery", "Use the 'Target Artillery' option via the action menu and a small map appears. Now use your mouse and aim your cannon until you located the town and try to get the middle of the red stripes on it. You'll probably need a few shells, but one good placed should take out the BM-21 and officer. Try to avoid hitting civilian combatants."]]; 

tskExample1 = player createSimpleTask ["Destroy the BM-21 and kill the officer"];
tskExample1 setSimpleTaskDescription ["Destroy the BM-21 and kill the officer.", "Destroy the BM-21 and kill the officer", "Destroy the BM-21 and kill the officer"];
tskExample1 setSimpleTaskDestination (getMarkerPos "Au");

a setCurrentTask tskExample1;
 
tskExample1 setTaskState "CREATED";
