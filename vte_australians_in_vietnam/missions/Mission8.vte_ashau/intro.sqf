//Introsequenz
titleCut [" ", "BLACK IN"]; titleFadeOut 4;

//Position 1 Flugzeug
//=== 15:49:04
private _camera = "camera" camCreate [6728.58,105823.33,7.97];
_camera camPrepareTarget [6728.58,105823.33,7.97];
_camera camPreparePos [6729.73,5823.00,7.25];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;
waitUntil { (camCommitted _camera); };

_camera cameraEffect ["Internal","back"];
showcinemaborder true;

//=== 18:33:20
_camera camPrepareTarget [6728.58,105823.33,7.96];
_camera camPreparePos [6748.84,5880.80,1.82];
_camera camCommitPrepared 10;
waitUntil { (camCommitted _camera); };
