#define __quoted(str) #str
#define __concat2(var1,var2) ##var1####var2
#define getParamNumber(a) getNumber(missionConfigFile >> "MAMaS_const" >> __quoted(a))
#define getParamText(a) getText(missionConfigFile >> "MAMaS_const" >> __quoted(a))
#define getParamTextCompile(a) (call compile getText(missionConfigFile >> "MAMaS_const" >> __quoted(a)))

#define __defZoneSize getParamNumber(defZoneSize)
#define __hintzonesize getParamNumber(hintzonesize)
#define __zoneMultREDFOR getParamNumber(zoneMultREDFOR)
#define __zoneMultBLUEFOR getParamNumber(zoneMultBLUEFOR)
#define __sideREDFOR getParamTextCompile(sideREDFOR)
#define __sideBLUEFOR getParamTextCompile(sideBLUEFOR)
#define __titleREDFOR getParamText(titleREDFOR)
#define __titleBLUEFOR getParamText(titleBLUEFOR)
#define __domiMult getParamNumber(domiMult)
#define __RFRetreat getParamNumber(RFRetreat)
#define __BFRetreat getParamNumber(BFRetreat)
#define __synchronizedRespawn getParamNumber(synchronizedRespawn)
//#define __debug(text) diag_log (__FILE__+" "+__quoted(text));
#define __debug(text) ;