//Интро с беспилотника
uavIntro = 1;
//радиус зоны за которую нельзя выходить во время брифинга ингейм
defZoneSize = 50;
//толщина зоны в которой будет выскакивать хинт о покидании зоны брифинга
hintzonesize = 30; // НЕ ИСПОЛЬЗУЕТСЯ
//стартовая зона REDFOR будет равна defZoneSize*zoneMultREDFOR
zoneMultREDFOR = 1;
//стартовая зона BLUEFOR будет равна defZoneSize*zoneMultBLUEFOR
zoneMultBLUEFOR = 1;
//Воюющие стороны:
//"west" - USMC, US Army, CDF, Rangers and etc.
//"east" - MSV, TA, CDKZ and etc.
//"resistance" - NAPA, People of Takistan, PMC, UN and etc
//"civilian"
sideREDFOR = "east";
sideBLUEFOR = "west";
//здесь можно описать условие при котором техника в стартовой зоне не будет зафиксирована. Доступны 2 переменные - _side - какая сторона стартует в зоне, и _object - объект, который будет/не будет зафисирован. Пример: "_side == west" - на старте синих можно свободно кататься, "_object isKindOf 'tank'" - можно кататься на танках
vehHolderExludeCondition = "false";
//Текст который будет использован в сообщении о победе/проигрыше
//Допустимые значения: STR_ru_call, STR_ruspn_call, STR_usmc_call, STR_usarmy_call, STR_75th_call, STR_napa_call, STR_ta_call, STR_cdkz_call, STR_pot_call, STR_CDF_call
//Можно дописать свое в stringtable.xml
titleREDFOR = $STR_ru_call;
titleBLUEFOR = $STR_usarmy_call;

//если у одной из сторон окажется численное преимущество в _domiMult и противоположная сторона достигнет коэффициента допутимых потерь миссия завершится
domiMult = 2;
//коэффициент допустимых потерь красных. Если выживут меньше n*(начальные силы) красные отступят
RFRetreat = 0.2;
//коэффициент допустимых потерь синих. Если выживут меньше n*(начальные силы) синие отступят
BFRetreat = 0.2;

//дальность обзора
viewDistance = 3500;

//0 - при рандомном респе стартовые позиции не зависят друг от друга
//1 - при рандомном респе стартовые позиции зависят друг от друга
synchronizedRespawn = 0;