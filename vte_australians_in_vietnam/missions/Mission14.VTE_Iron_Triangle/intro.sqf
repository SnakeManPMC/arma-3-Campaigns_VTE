//Introsequenz
titleCut [" ", "BLACK IN"]; titleFadeOut 4;

//Position 1 Flugzeug
//=== 15:49:04
_camera = "camera" camCreate [89178.59,45947.19,11345.783];
_camera camPrepareTarget [89178.59,45947.19,11345.78];
_camera camPreparePos [613.53,907.85,1.71];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;
waitUntil { (camCommitted _camera); };

_camera cameraEffect ["Internal","back"];
showcinemaborder false;

//=== 22:39:27
_camera camPrepareTarget [88261.72,46870.75,14346.46];
_camera camPreparePos [611.92,903.87,1.11];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 20;
waitUntil { (camCommitted _camera); };
