player createDiaryRecord ["Diary", ["What to do", "10.10.1965: Welcome back Joe Nei'l. After your extraordinary role in the Korean war, we have decided to pick you up again, this time in Vietnam. Our weapons and tactics have changed, and you have to adopt to this, so we send you on the training range in Polei Kleng island. After you've finished, we'll send you to the vietnamese island of Dak Seang. Good luck soldier. "]]; 
player createDiaryRecord ["Diary", ["Diary", "I'm back in the game but today I have to learn the weapons. Seems a lot changed from our Enfields back in the day."]]; 
player createDiaryRecord ["Diary", ["Targets", "1 T34 tank, various infantry, 1 jeep target, several barrels"]]; 

tskExample1 = player createSimpleTask ["Complete the training"];
tskExample1 setSimpleTaskDescription ["Complete the training by shooting the targets.", "Complete the training", "Complete the training"];
tskExample1 setSimpleTaskDestination (getMarkerPos "Au");

a setCurrentTask tskExample1;
 
tskExample1 setTaskState "CREATED";
