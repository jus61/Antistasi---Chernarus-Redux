SDKMortar = "rhsgref_ins_g_2b14";
SDKMortarHEMag = "rhs_mag_3vo18_10";
SDKMortarSmokeMag = "rhs_mag_d832du_10";
SDKMGStatic = "rhsgref_ins_g_DSHKM";
staticATBuenos = "rhsgref_ins_g_d30_at";
staticAABuenos = "rhsgref_nat_Igla_AA_pod";

staticCrewBuenos = "rhsgref_nat_crew";
SDKUnarmed = "I_G_Survivor_F";
SDKSniper = ["rhsgref_nat_pmil_hunter","rhsgref_nat_hunter"];
SDKATman = ["rhsgref_nat_pmil_grenadier_rpg","rhsgref_nat_grenadier_rpg"];
SDKMedic = ["rhsgref_nat_pmil_medic","rhsgref_nat_medic"];
SDKMG = ["rhsgref_nat_machinegunner","rhsgref_nat_pmil_machinegunner"];
SDKExp = ["rhsgref_nat_pmil_saboteur","rhsgref_nat_saboteur"];
SDKGL = ["rhsgref_nat_grenadier","rhsgref_nat_pmil_grenadier"];
SDKMil = ["rhsgref_nat_rifleman_akms","rhsgref_nat_pmil_rifleman_aksu"];
SDKSL = ["rhsgref_nat_commander","rhsgref_nat_pmil_commander"];
SDKEng = ["rhsgref_cdf_ngd_engineer","rhsgref_cdf_para_engineer"];
sdkTier1 = SDKMil + [staticCrewBuenos];
sdkTier2 = SDKMedic + SDKMG + SDKExp + SDKGL + SDKEng;
sdkTier3 = SDKATman + SDKSL + SDKSniper;
soldadosSDK = sdkTier1 + sdkTier2 + sdkTier3;

vehSDKBike = "I_G_Quadbike_01_F";
vehSDKLightArmed = "rhsgref_nat_uaz_dshkm";
vehSDKLightUnarmed = "rhsgref_nat_uaz";
vehSDKTruck = "rhsgref_nat_ural_open";
//vehSDKHeli = "rhsgref_ins_g_Mi8amt";
vehSDKPlane = "RHS_AN2";
vehSDKBoat = "I_C_Boat_Transport_01_F";
vehSDKRepair = "rhsgref_ins_g_gaz66_repair";
vehFIA = [vehSDKBike,vehSDKLightArmed,SDKMGStatic,vehSDKLightUnarmed,vehSDKTruck,vehSDKBoat,SDKMortar,staticATBuenos,staticAABuenos,vehSDKRepair];
SDKFlag = "rhs_Flag_Che_F";

gruposSDKmid = [SDKSL,SDKGL,SDKMG,SDKMil];
gruposSDKAT = [SDKSL,SDKMG,SDKATman,SDKATman,SDKATman];
//["BanditShockTeam","ParaShockTeam"];
gruposSDKSquad = [SDKSL,SDKGL,SDKMil,SDKMG,SDKMil,SDKATman,SDKMil,SDKMedic];
gruposSDKSniper = [SDKSniper,SDKSniper];
gruposSDKSentry = [SDKGL,SDKMil];

tipoPetros = "I_C_Soldier_Camo_F";

soporteStaticSDKB = "RHS_DShkM_TripodHigh_Bag";
ATStaticSDKB = "I_AT_01_weapon_F";
MGStaticSDKB = "RHS_DShkM_Gun_Bag";
soporteStaticSDKB2 = "I_HMG_01_support_high_F";
AAStaticSDKB = "I_AA_01_weapon_F";
MortStaticSDKB = "RHS_Podnos_Gun_Bag";
soporteStaticSDKB3 = "RHS_Podnos_Bipod_Bag";

civCar = "C_Offroad_02_unarmed_F";
civTruck = "RHS_Ural_Open_Civ_03";
civHeli = "RHS_Mi8amt_civilian";

arrayCivVeh = arrayCivVeh + ["RHS_Ural_Open_Civ_03","RHS_Ural_Open_Civ_01","RHS_Ural_Open_Civ_02"];

sniperRifle = "rhs_weap_m76_pso";
lamparasSDK = ["rhs_acc_2dpZenit","acc_flashlight"];

ATMineMag = "rhs_mine_tm62m_mag";
APERSMineMag = "rhs_mine_pmn2_mag";


FIARifleman = "rhsgref_nat_pmil_rifleman_aksu";
FIAMarksman = "rhsgref_nat_pmil_hunter";
vehFIAArmedCar = "rhsgref_nat_uaz_dshkm";
vehFIATruck = "rhsgref_nat_ural_open";
vehFIACar = "rhsgref_nat_uaz";

gruposFIASmall = [["rhsgref_nat_grenadier","rhsgref_nat_rifleman_akms"],["rhsgref_nat_hunter","rhsgref_nat_grenadier"]];//["IRG_InfSentry","IRG_ReconSentry","IRG_SniperTeam_M"];///
gruposFIAMid = [["rhsgref_nat_commander","rhsgref_nat_machinegunner","rhsgref_nat_grenadier_rpg","rhsgref_nat_grenadier_rpg","rhsgref_nat_medic"],["rhsgref_nat_pmil_commander","rhsgref_nat_pmil_machinegunner","rhsgref_nat_grenadier","rhsgref_nat_pmil_rifleman_aksu","rhsgref_nat_pmil_medic"]];//["IRG_InfAssault","IRG_InfTeam","IRG_InfTeam_AT"];///
FIASquad = ["rhsgref_nat_commander","rhsgref_nat_machinegunner","rhsgref_nat_grenadier","rhsgref_nat_grenadier","rhsgref_nat_grenadier_rpg","rhsgref_nat_grenadier_rpg","rhsgref_nat_pmil_machinegunner","rhsgref_nat_medic"];//"IRG_InfSquad";///


vehPoliceCar = "rhsgref_un_uaz";
policeOfficer = "rhsgref_cdf_b_ngd_officer";
policeGrunt = "rhsgref_cdf_b_ngd_rifleman_lite";
gruposNATOGen = [policeOfficer,policeGrunt];