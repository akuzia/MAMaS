#define DEBUG FALSE
#define LOGC(VAR1) if (DEBUG) then { player sideChat format["DEBUG: %1", VAR1]; diag_log format["DEBUG: %1", VAR1] }
#define PROJECT_PREFIX MAMaS
#define COMPONENT_NAME blnd

// COMMON
#define CGVAR(VAR1,VAR2) (missionNameSpace getVariable ['PROJECT_PREFIX##_var_##VAR1',VAR2])
#define CSVAR(VAR1,VAR2) (missionNameSpace setVariable ['PROJECT_PREFIX##_var_##VAR1',VAR2])
#define COGVAR(VAR1,VAR2,VAR3) VAR1 getVariable ['PROJECT_PREFIX##_var_##VAR2',VAR3]
#define COSVAR(VAR1,VAR2,VAR3,VAR4) VAR1 setVariable ['PROJECT_PREFIX##_var_##VAR2',VAR3,VAR4]
#define CPGVAR(VAR1,VAR2) player getVariable ['PROJECT_PREFIX##_var_##VAR1',VAR2]
#define CPSVAR(VAR1,VAR2,VAR3) player setVariable ['PROJECT_PREFIX##_var_##VAR1',VAR2,VAR3]
#define CVAR(VAR1) PROJECT_PREFIX##_var_##VAR1

#define QUOTE(VAR1) #VAR1
#define FNC(VAR1) PROJECT_PREFIX##_##COMPONENT_NAME##_fnc_##VAR1
#define VAR(VAR1) PROJECT_PREFIX##_##COMPONENT_NAME##_var_##VAR1
#define QVAR(VAR1) 'VAR(VAR1)'
#define GVAR(VAR1,VAR2) (missionNameSpace getVariable ['PROJECT_PREFIX##_##COMPONENT_NAME##_var_##VAR1',VAR2])
#define SVAR(VAR1,VAR2) (missionNameSpace setVariable ['PROJECT_PREFIX##_##COMPONENT_NAME##_var_##VAR1',VAR2])
#define PGVAR(VAR1,VAR2) (player getVariable ['PROJECT_PREFIX##_##COMPONENT_NAME##_var_##VAR1',VAR2])
#define PSVAR(VAR1,VAR2) (player setVariable ['PROJECT_PREFIX##_##COMPONENT_NAME##_var_##VAR1',VAR2,false])
#define PSGVAR(VAR1,VAR2) (player setVariable ['PROJECT_PREFIX##_##COMPONENT_NAME##_var_##VAR1',VAR2,true])
#define OGVAR(VAR1,VAR2,VAR3) (VAR1 getVariable ['PROJECT_PREFIX##_##COMPONENT_NAME##_var_##VAR2',VAR3])
#define OSVAR(VAR1,VAR2,VAR3) (VAR1 setVariable ['PROJECT_PREFIX##_##COMPONENT_NAME##_var_##VAR2',VAR3,false])
#define OSGVAR(VAR1,VAR2,VAR3) (VAR1 setVariable ['PROJECT_PREFIX##_##COMPONENT_NAME##_var_##VAR2',VAR3,true])
#define PUSH(VAR1,VAR2) VAR1 SET [count VAR1, VAR2]