//Introsequenz
titleCut [" ", "BLACK IN"]; titleFadeOut 4;
1 fadesound 0;
//Position 1 Flugzeug
//=== 15:49:04
private _camera = "camera" camCreate [781.84,104616.56,99.55];
_camera camPrepareTarget [781.84,104616.56,99.55];
_camera camPreparePos [781.84,4616.56,3.34];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;
waitUntil { (camCommitted _camera); };

_camera cameraEffect ["Internal","back"];
showcinemaborder false;

//=== 16:59:18
_camera camPrepareTarget [781.84,104616.56,100.02];
_camera camPreparePos [781.93,4616.56,23.83];
_camera camCommitPrepared 10;
waitUntil { (camCommitted _camera); };

//=== 17:07:05
_camera camPrepareTarget [34127.91,96934.74,19251.95];
_camera camPreparePos [781.83,4616.55,39.21];
_camera camPrepareFOV 0.010;
_camera camCommitPrepared 4;
waitUntil { (camCommitted _camera); };
