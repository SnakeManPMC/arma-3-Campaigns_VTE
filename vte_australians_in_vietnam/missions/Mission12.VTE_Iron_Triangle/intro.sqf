//Introsequenz
titleCut [" ", "BLACK IN"]; titleFadeOut 4;

//Position 1 Flugzeug
//=== 15:49:04
_camera = "camera" camCreate [-99294.55,7129.37,38.43];
_camera camPrepareTarget [-99294.55,7129.37,38.43];
_camera camPreparePos [478.86,401.48,20.40];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;
waitUntil { (camCommitted _camera); };

_camera cameraEffect ["Internal","back"];
showcinemaborder false;

//=== 21:55:14
_camera camPrepareTarget [795.77,100785.04,13.24];
_camera camPreparePos [814.59,819.21,1.75];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 8;
waitUntil { (camCommitted _camera); };

//=== 21:57:12
_camera camPrepareTarget [-43944.54,-87658.80,14845.12];
_camera camPreparePos [610.01,629.12,2.74];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 2;
waitUntil { (camCommitted _camera); };

//=== 21:57:40
_camera camPrepareTarget [-66283.02,-73709.05,18.43];
_camera camPreparePos [562.42,591.62,89.46];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 3;
waitUntil { (camCommitted _camera); };
