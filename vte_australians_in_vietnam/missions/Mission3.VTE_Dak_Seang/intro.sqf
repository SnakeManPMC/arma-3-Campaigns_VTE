//Introsequenz
titleCut [" ", "BLACK IN"]; titleFadeOut 4;
1 fadesound 0;
//Position 1 Flugzeug
//=== 15:49:04
private _camera = "camera" camCreate [76867.16,-65134.46,6.71];
_camera camPrepareTarget [76867.16,-65134.46,6.71];
_camera camPreparePos [4938.06,4336.44,1.39];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;
waitUntil { (camCommitted _camera); };

_camera cameraEffect ["Internal","back"];
showcinemaborder false;

_camera camPrepareTarget [76867.16,-65134.46,6.49];
_camera camPreparePos [4938.97,4337.08,0.98];
_camera camCommitPrepared 5;
waitUntil { (camCommitted _camera); };

//=== 16:52:31
_camera camPrepareTarget [76867.16,-65134.46,6.47];
_camera camPreparePos [4957.88,4316.43,1.18];
_camera camCommitPrepared 6;
waitUntil { (camCommitted _camera); };

//=== 16:53:41
_camera camPrepareTarget [-25479.71,97279.94,-20803.64];
_camera camPreparePos [4951.98,4322.54,7.21];
_camera camCommitPrepared 7;
waitUntil { (camCommitted _camera); };
