//Introsequenz
titleCut [" ", "BLACK IN"]; titleFadeOut 4;

0 fadeSound 0;

//Position 1 Flugzeug
//=== 15:49:04
private _camera = "camera" camCreate [1253.54,102060.75,67.60];
_camera camPrepareTarget [1253.54,102060.75,67.60];
_camera camPreparePos [1252.88,2055.60,2.02];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;
waitUntil { (camCommitted _camera); };

_camera cameraEffect ["Internal","back"];
showcinemaborder false;

//=== 23:25:35
_camera camPrepareTarget [-3332.19,101036.02,14098.48];
_camera camPreparePos [1253.47,2056.65,542.93];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 10;
waitUntil { (camCommitted _camera); };

10 fadeSound 1;

waitUntil { (camCommitted _camera); };
