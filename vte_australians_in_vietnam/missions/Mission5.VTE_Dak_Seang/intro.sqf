//Introsequenz
titleCut [" ", "BLACK IN"]; titleFadeOut 4;
1 fadesound 0;
//Position 1 Flugzeug
//=== 15:49:04
private _camera = "camera" camCreate [-48187.43,87640.12,236.58];
_camera camPrepareTarget [-48187.43,87640.12,236.58];
_camera camPreparePos [11496.10,7403.74,2.00];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;
waitUntil { (camCommitted _camera); };

_camera cameraEffect ["Internal","back"];
showcinemaborder false;

//=== 17:12:04
_camera camPrepareTarget [56285.28,-81994.88,236.50];
_camera camPreparePos [11487.68,7409.67,1.66];
_camera camCommitPrepared 3;
waitUntil { (camCommitted _camera); };

//=== 17:12:24
_camera camPrepareTarget [93898.81,-49230.97,236.89];
_camera camPreparePos [11484.26,7406.81,1.63];
_camera camCommitPrepared 2;
waitUntil { (camCommitted _camera); };
