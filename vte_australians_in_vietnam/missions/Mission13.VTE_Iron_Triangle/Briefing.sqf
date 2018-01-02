player createDiaryRecord ["Diary", ["What to do", "2.6.1966: Your helicopter has been shot down, but you have found a place to sleep for now. The island does have a radio transmitter to contact friendly forces, but there is not enough ammo for a full-scale attack. You need weapons and ammunition and thats why you have to attack the AA outpost, which brought your bird down."]]; 
player createDiaryRecord ["Diary", ["Diary", "Hello. <br> I've settled in a house which is cold, old and noisy. But its keeping me relatively save for now. While we were shot down, I saw the dust stripes of the Strela and thats why I know where their outpost is. I need the ammo for a kind-of suicide attack on my last remaining hope: The radio transmitter."]]; 
player createDiaryRecord ["Diary", ["Weapons", "The K50M: Is a submachine gun, out of north-vietnamese production. Cheap but relatively effective in close quarter combat. Tokarev T33: Pistol, suited for very close quarter combat."]]; 

tskExample1 = player createSimpleTask ["Destroy the enemy AA"];
tskExample1 setSimpleTaskDescription ["Seize the AA outpost.", "Seize the AA outpost", "Seize the AA outpost"];
tskExample1 setSimpleTaskDestination (getMarkerPos "Au");

a setCurrentTask tskExample1;
 
tskExample1 setTaskState "CREATED";
