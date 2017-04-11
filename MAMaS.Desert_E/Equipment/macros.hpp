#define addWeapons {_unit addWeapon _x} forEach 
#define addMagazines(a,b) for "_i" from 1 to b do {_unit addMagazine a}
#define addItems {switch (_x) do \
		{ \
			case "R": {/*_unit addWeapon "ItemRadio"*/}; \
			case "G": {_unit addWeapon "ItemGPS"}; \
			case "M": {_unit addWeapon "ACE_Map"}; \
			case "MT":{_unit addWeapon "ACE_Map_Tools"}; \
			case "D": {_unit addWeapon "ACE_DAGR"}; \
			case "N": {_unit addWeapon "NVGoggles"}; \
			case "F": {_unit addWeapon "ACE_MugLite"}; \
			case "E": {_unit addWeapon "ACE_Earplugs"}; \
			case "B": {_unit addWeapon "Binocular"}; \
			case "NB": {_unit addWeapon "NVB"}; \
			case "K": {_unit addWeapon "ACE_Kestrel4500"}; \
			case "SG": {_unit addWeapon "ACE_GlassesSunglasses"}; \
			case "H": {_unit addWeapon "ACE_HuntIR_monitor"}; \
			case "L": {_unit addWeapon "ACE_GlassesLHD_glasses"}; \
			case "SS": {_unit addWeapon "ACE_SpottingScope"}; \
			case "GM": {_unit addWeapon "ACE_GlassesGasMask_US"}; \
		} \
	} forEach