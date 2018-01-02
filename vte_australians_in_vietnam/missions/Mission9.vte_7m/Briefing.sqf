player createDiaryRecord ["Diary", ["What to do", "26.2.1966: There is an alarming development in the island of 7 mountains and thats why we ordered you there. We need you to check out the village to see if everything is going out well. If you encounter any VC unit, remove the enemy from the village and look for further targets. All of the villages have some kind of own militia which are loyal to us, so do not shoot them. Your mission is over after you checked the villages out."]]; 
player createDiaryRecord ["Diary", ["Diary", "Hello. <br> Now I'm in the island of 7 mountains. I'm switching locations so quickly, I cannot even get to know the place where I am deployed. But the base where I'm at now looks quite nice, there is a short runway and a C-130. I don't know how the C-130 got there, only heard that they had to do an emergency landing and this was the only runway available back then. But I don't really know. PS: There is some weird SEAL team guy in the base, I should not talk to him, since he is just looking for trouble."]]; 
player createDiaryRecord ["Diary", ["Enemy presence", "Enemy presence is lower than on your previous missions on this island but be careful, several soldiers got ambushed in the past by 2-3 men teams."]]; 

tskExample1 = player createSimpleTask ["Check out the population"];
tskExample1 setSimpleTaskDescription ["Check out the villages", "Check out the villages", "Check out the villages"];
tskExample1 setSimpleTaskDestination (getMarkerPos "Au");

a setCurrentTask tskExample1;
 
tskExample1 setTaskState "CREATED";
