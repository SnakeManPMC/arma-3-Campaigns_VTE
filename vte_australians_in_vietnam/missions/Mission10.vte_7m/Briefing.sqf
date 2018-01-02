player createDiaryRecord ["Diary", ["What to do", "27.2.1966: We had to order you back to the base, because of an alarming development: A boat with portable surface to air missiles stranded in a river amid the island. Taking it out has highest priority. You will climb down the mountain, swim through the river and find the weapons we already prepared there for you, since you cannot swim over with your equipment without malfunctioning. Take out the boat and escape into any direction given."]]; 
player createDiaryRecord ["Diary", ["Diary", "Hello. <br> Want to go home. Have to take out a boat with AA launchers today. I think it will be well protected so it wont be easy."]]; 
player createDiaryRecord ["Diary", ["Enemy presence", "Enemy presence: medium presence, which means intel has no clue this time about the strenght of the enemy."]]; 

tskExample1 = player createSimpleTask ["Destroy the boat"];
tskExample1 setSimpleTaskDescription ["Find and destroy the boat", "Find and destroy the boat", "Find and destroy the boat"];
tskExample1 setSimpleTaskDestination (getMarkerPos "Au");

a setCurrentTask tskExample1;
 
tskExample1 setTaskState "CREATED";
