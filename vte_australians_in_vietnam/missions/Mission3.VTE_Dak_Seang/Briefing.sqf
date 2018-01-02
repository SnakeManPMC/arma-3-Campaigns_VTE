player createDiaryRecord ["Diary", ["What to do", "23.12.1965: Just before christmas we want you to do one last thing. Ambush the enemy vessels in the nighttime. You and a fellow team are located near the river, your team is the one who opens fire first. The small boats are not as important as the bigger weapon cargo one, so be cautious and let it not escape. You'll have a 90mm launcher for the case of cases."]]; 
player createDiaryRecord ["Diary", ["Diary", "Hello. <br> I'm writing this letter to myself. Christmas time is coming and I wish that I'll be home in exactly 1 year, during that time, to celebrate it with my fellow kids. Fighting is no fun but it seem but thats what I have to do as a soldier."]]; 
player createDiaryRecord ["Diary", ["Enemy presence", "We expect 3-6 boats."]]; 

tskExample1 = player createSimpleTask ["Destroy the boats"];
tskExample1 setSimpleTaskDescription ["Destroy the boats.", "Destroy the boats", "Destroy the boats"];
tskExample1 setSimpleTaskDestination (getMarkerPos "Au");

a setCurrentTask tskExample1;
 
tskExample1 setTaskState "CREATED";
