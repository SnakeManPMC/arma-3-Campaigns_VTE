//Introsequenz
titleCut [" ", "BLACK IN"]; titleFadeOut 4;

//Position 1 Flugzeug
//=== 15:49:04
private _camera = "camera" camCreate [104477.19,37553.20,-12529.97];
_camera camPrepareTarget [104477.19,37553.20,-12529.97];
_camera camPreparePos [9276.93,9632.95,1.61];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;
waitUntil { (camCommitted _camera); };

_camera cameraEffect ["Internal","back"];
showcinemaborder true;

//=== 20:23:45
_camera camPrepareTarget [74199.55,-59232.61,-32274.46];
_camera camPreparePos [9292.23,9651.66,8.07];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 10;
waitUntil { (camCommitted _camera); };
