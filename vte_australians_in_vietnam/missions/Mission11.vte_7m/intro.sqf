//Introsequenz
titleCut [" ", "BLACK IN"]; titleFadeOut 4;

//Position 1 Flugzeug
//=== 15:49:04
private _camera = "camera" camCreate [-54196.51,82306.30,-25603.04];
_camera camPrepareTarget [-54196.51,82306.30,-25603.04];
_camera camPreparePos [12325.52,12174.09,5.80];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;
waitUntil { (camCommitted _camera); };

_camera cameraEffect ["Internal","back"];
showcinemaborder false;

//=== 21:23:29
_camera camPrepareTarget [89482.06,57654.55,-44432.45];
_camera camPreparePos [12303.44,12178.21,7.02];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 10;
waitUntil { (camCommitted _camera); };
