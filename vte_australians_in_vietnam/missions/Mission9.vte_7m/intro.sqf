//Introsequenz
titleCut [" ", "BLACK IN"]; titleFadeOut 4;

//Position 1 Flugzeug
//=== 15:49:04
private _camera = "camera" camCreate [5204.68,103575.05,17.12];
_camera camPrepareTarget [5204.68,103575.05,17.12];
_camera camPreparePos [5250.11,3543.48,3.69];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;
waitUntil { (camCommitted _camera); };

_camera cameraEffect ["Internal","back"];
showcinemaborder true;

//=== 19:54:00
_camera camPrepareTarget [99896.63,34364.90,9236.68];
_camera camPreparePos [5203.26,3571.51,5.22];
_camera camCommitPrepared 10;
waitUntil { (camCommitted _camera); };
