// camera basic initialization
private _camera = "camera" camCreate [0,0,0];
_camera camSetTarget [0,0,0];
_camera cameraEffect ["internal","back"];
_camera camSetFOV 0.700;

playmusic ["track1",0];

titlecut ["","BLACK IN",2];
sleep 5;

// assault1 leader
_camera camSetTarget leader assault1;
_camera camSetRelPos [1,1,1];
_camera camCommit 0;
waitUntil { (camCommitted _camera); };

titlecut ["","BLACK OUT",3];
3 fademusic 0;
sleep 3;

// destroy camera - if we use mission cutscene the end
_camera cameraEffect ["terminate","back"];

// Destroy the camera
camDestroy _camera;

// end the intro
endcut = true
