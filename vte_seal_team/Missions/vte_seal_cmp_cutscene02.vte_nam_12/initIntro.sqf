// camera basic initialization
private _camera = "camera" camCreate [0,0,0];
_camera camSetTarget [0,0,0];
_camera cameraEffect ["internal","back"];
_camera camSetFOV 0.700;

seal1 saveStatus "seal1_01";
seal2 saveStatus "seal2_01";
seal3 saveStatus "seal3_01";
seal4 saveStatus "seal4_01";
seal5 saveStatus "seal5_01";
seal6 saveStatus "seal6_01";

private _VTEMusic = ["VTE_whitershade","VTE_paintitblack","VTE_satisfaction","VTE_whiterabbit","VTE_heyjoe","VTE_theseboots","VTE_wooly","VTE_bornwild","VTE_bird","VTE_purplehaze","VTE_crosstown","VTE_foxeylady","VTE_wildthing","VTE_houserisingsun","VTE_gottagetout","VTE_caligirls","VTE_greenriver","VTE_caldreaming","VTE_sitdockbay","VTE_evedestruction","VTE_theend","VTE_ontheroad","VTE_trackmytears","VTE_wipeout","VTE_wagner","VTE_whatsound","VTE_goodlovin","VTE_toldnation","VTE_whodoyoulove"];

playmusic [(selectRandom _VTEMusic), 0];

// assault1 leader
_camera camSetTarget leader seals1;
_camera camSetRelPos [0,30,10];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };

titlecut ["","BLACK IN",2];
sleep 3;

_camera camSetRelPos [0,10,5];
_camera camCommit 3;
waitUntil { (camCommitted _camera); };

titletext["VTE SEAL TEAM Campaign the end","plain down",2];
sleep 5;

_camera camSetRelPos [5,7,3];
_camera camCommit 4;
waitUntil { (camCommitted _camera); };

titletext["yet another placeholder cutscene :)","plain down",2];
sleep 3;

_camera camSetRelPos [0,2,1.7];
_camera camCommit 4;
waitUntil { (camCommitted _camera); };
sleep 3;

titlecut ["","BLACK OUT",3];
3 fademusic 0;
sleep 3;

// Destroy the camera
camDestroy _camera;

// end the intro
endcut = true
