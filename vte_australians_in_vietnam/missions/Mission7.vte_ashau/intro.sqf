//Introsequenz
titleCut [" ", "BLACK IN"]; titleFadeOut 4;

//Position 1 Flugzeug
//=== 15:49:04
private _camera = "camera" camCreate [8368.89,104600.17,5.09];
_camera camPrepareTarget [8368.89,104600.17,5.09];
_camera camPreparePos [8368.89,4600.16,2.00];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;
waitUntil { (camCommitted _camera); };

_camera cameraEffect ["Internal","back"];
showcinemaborder true;

//=== 17:42:20
_camera camPrepareTarget [-88340.84,17850.14,-21731.75];
_camera camPreparePos [8298.85,4608.17,8.63];
_camera camCommitPrepared 5;
waitUntil { (camCommitted _camera); };

//=== 17:42:38
_camera camPrepareTarget [1909.24,101982.76,-21752.66];
_camera camPreparePos [8257.93,4587.49,8.63];
_camera camCommitPrepared 5;
waitUntil { (camCommitted _camera); };
