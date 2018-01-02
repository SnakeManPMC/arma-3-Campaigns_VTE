player createDiaryRecord ["Diary", ["What to do", "21.12.1965: The Australian unit 'Gractue' went missing in the jungle, after being ambushed. As they don't have any RTO, your task is it to find them. You'll land with a helicopter at the infiltration zone and our vietnamese guide Phiel will be waiting there and lead you through the jungle. If you lose him, you'll have to find them on your own."]]; 
player createDiaryRecord ["Diary", ["Phiel", "Our jungle guide's name is Phiel. You can order him to stop or move through your radio."]]; 
player createDiaryRecord ["Diary", ["Enemy presence", "We expect everything from 5-30 fighters. The jungle is big, so there are odds, that you might never encounter an enemy at all."]]; 

tskExample1 = player createSimpleTask ["Find the team"];
tskExample1 setSimpleTaskDescription ["Find the australians.", "Find the team", "Find the team"];
tskExample1 setSimpleTaskDestination (getMarkerPos "Au");

a setCurrentTask tskExample1;
 
tskExample1 setTaskState "CREATED";
