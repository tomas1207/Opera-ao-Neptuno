_downloadDate = 0;
playerInside = true;

while {_downloadDate <= 100 && playerInside} do {
	sleep 5;
	_downloadDate = _downloadDate + 1;

	hint format ["Download: %1", _downloadDate];
};

if (!playerInside) then {
	hint "Stop Donwload";
	_downloadDate = 0;

}else{
	hint format ["Possicão para o proximo objectivo: \n 121176"];
};

