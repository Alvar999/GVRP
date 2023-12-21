#include "./Module/Feature/Jobs/LumberJack.pwn"
forward LoadStreamerStaticVehicles();
public LoadStreamerStaticVehicles()
{
    ContainerVehicles[0] = AddStaticVehicleEx(514,2803.0117,-2415.6658,14.2365,90.5900,11,11,1200); //
	ContainerVehicles[1] = AddStaticVehicleEx(514,2803.1934,-2421.8740,14.3196,90.8462,11,11,1200); //
	ContainerVehicles[2] = AddStaticVehicleEx(514,2803.2913,-2427.7847,14.2362,90.2736,11,11,1200); //
	ContainerVehicles[3] = AddStaticVehicleEx(514,2803.3357,-2434.2776,14.2363,90.8033,11,11,1200); //
	ContainerVehicles[4] = AddStaticVehicleEx(514,2803.3018,-2440.3291,14.2362,88.1921,11,11,1200); //
	ContainerVehicles[5] = AddStaticVehicleEx(514,2803.4619,-2446.5762,14.2361,89.7786,0,0,1200); //
	ContainerVehicles[6] = AddStaticVehicleEx(514,2803.3442,-2452.9060,14.2360,88.5634,0,0,1200); //
	ContainerVehicles[7] = AddStaticVehicleEx(514,2803.3516,-2459.4409,14.2358,88.5887,0,0,1200); //
	ContainerVehicles[8] = AddStaticVehicleEx(514,2803.2039,-2465.6780,14.2356,89.7371,0,0,1200); //
	ContainerVehicles[9] = AddStaticVehicleEx(514,2803.0952,-2471.6934,14.2380,89.4929,0,0,1200); //

	CreateDynamic3DTextLabel("/ruatiennganhang",COLOR_YELLOW, 342.5758,62.7510,3.8622, 10.0);//Rua tien ngan hang

	ActorLumber = CreateActor(164, -1093.3726,-1288.9056,129.4963,271.2885);
    CreateDynamic3DTextLabel("{FF0000}[ Lumber Jack ]{ffffff}\nDung lenh /xinviec",0xa5bbd0FF,-1093.3726,-1288.9056,129.4963,10.0);

    ActorLumber2 = CreateActor(128, -1077.5818,-1293.8608,129.2188,275.6518);

    CreateDynamic3DTextLabel("Tu khoa Lumber Jack\nBam phim 'N' de mo tu khoa",COLOR_YELLOW,-1103.4574, -1276.7955, 129.2508+0.6,12.0); // May uong nuoc



	// VIP garage
	VIPVehicles[0] = AddStaticVehicleEx(411,-4365.93212891,839.28680420,986.18029785,0.00000000,-1,-1,180); //Infernus
	VIPVehicles[1] = AddStaticVehicleEx(429,-4370.52832031,840.57843018,986.13031006,0.00000000,-1,-1,180); //Banshee
	VIPVehicles[2] = AddStaticVehicleEx(451,-4374.41894531,840.36810303,986.14465332,0.00000000,-1,-1,180); //Turismo
	VIPVehicles[3] = AddStaticVehicleEx(541,-4378.48046875,840.84783936,986.08032227,0.00000000,-1,-1,180); //Bullet
	VIPVehicles[4] = AddStaticVehicleEx(559,-4382.43701172,840.60235596,986.13439941,0.00000000,-1,-1,180); //Jester
	VIPVehicles[5] = AddStaticVehicleEx(560,-4386.68066406,841.29382324,986.18530273,0.00000000,-1,-1,180); //Sultan
	VIPVehicles[6] = AddStaticVehicleEx(603,-4390.54345703,841.60748291,986.38299561,0.00000000,-1,-1,180); //Phoenix
	VIPVehicles[7] = AddStaticVehicleEx(480,-4394.61035156,841.88873291,986.23028564,0.00000000,-1,-1,180); //Comet
	VIPVehicles[8] = AddStaticVehicleEx(506,-4399.16455078,842.31146240,986.17242432,0.00000000,-1,-1,180); //Super GT
	VIPVehicles[9] = AddStaticVehicleEx(587,-4402.89990234,842.34979248,986.19030762,0.00000000,-1,-1,180); //Euros
	VIPVehicles[10] = AddStaticVehicleEx(411,-4407.21337891,842.98492432,986.18029785,0.00000000,-1,-1,180); //Infernus
	VIPVehicles[11] = AddStaticVehicleEx(429,-4410.96923828,843.07391357,986.13031006,0.00000000,-1,-1,180); //Banshee
	VIPVehicles[12] = AddStaticVehicleEx(451,-4415.64257812,843.46972656,986.14465332,0.00000000,-1,-1,180); //Turismo
	VIPVehicles[13] = AddStaticVehicleEx(541,-4419.40478516,843.48645020,986.08032227,0.00000000,-1,-1,180); //Bullet
	VIPVehicles[14] = AddStaticVehicleEx(559,-4423.40332031,843.19854736,986.13439941,0.00000000,-1,-1,180); //Jester
	VIPVehicles[15] = AddStaticVehicleEx(560,-4427.88232422,843.82849121,986.18530273,0.00000000,-1,-1,180); //Sultan
	VIPVehicles[16] = AddStaticVehicleEx(603,-4431.95849609,844.09509277,986.38299561,0.00000000,-1,-1,180); //Phoenix
	VIPVehicles[17] = AddStaticVehicleEx(480,-4436.15429688,844.76721191,986.23028564,0.00000000,-1,-1,180); //Comet
	VIPVehicles[18] = AddStaticVehicleEx(506,-4441.21337891,850.94598389,986.17242432,270.00000000,-1,-1,180); //Super GT
	VIPVehicles[19] = AddStaticVehicleEx(587,-4441.05224609,854.70550537,986.19030762,270.00000000,-1,-1,180); //Euros
	VIPVehicles[20] = AddStaticVehicleEx(522,-4418.77490234,858.65576172,986.04071045,180.00000000,-1,-1,180); //NRG-500
	VIPVehicles[21] = AddStaticVehicleEx(522,-4414.77441406,858.50390625,986.04071045,180.00000000,-1,-1,180); //NRG-500
	VIPVehicles[22] = AddStaticVehicleEx(522,-4410.77441406,858.35253906,986.04071045,180.00000000,-1,-1,180); //NRG-500
	VIPVehicles[23] = AddStaticVehicleEx(522,-4406.30957031,857.78234863,986.04071045,180.00000000,-1,-1,180); //NRG-500
	VIPVehicles[24] = AddStaticVehicleEx(522,-4394.11425781,856.77416992,986.04071045,180.00000000,-1,-1,180); //NRG-500
	VIPVehicles[25] = AddStaticVehicleEx(522,-4390.35644531,856.70147705,986.04071045,180.00000000,-1,-1,180); //NRG-500
	VIPVehicles[26] = AddStaticVehicleEx(522,-4386.21923828,856.22369385,986.04071045,180.00000000,-1,-1,180); //NRG-500
	VIPVehicles[27] = AddStaticVehicleEx(522,-4382.18164062,855.81323242,986.04071045,180.00000000,-1,-1,180); //NRG-500
	VIPVehicles[28] = AddStaticVehicleEx(522,-4417.77832031,876.99304199,986.04071045,0.00000000,-1,-1,180); //NRG-500
	VIPVehicles[29] = AddStaticVehicleEx(522,-4414.06494141,876.46301270,986.04071045,0.00000000,-1,-1,180); //NRG-500
	VIPVehicles[30] = AddStaticVehicleEx(522,-4409.78320312,876.41296387,986.04071045,0.00000000,-1,-1,180); //NRG-500
	VIPVehicles[31] = AddStaticVehicleEx(522,-4405.26074219,876.33081055,986.04071045,0.00000000,-1,-1,180); //NRG-500
	VIPVehicles[32] = AddStaticVehicleEx(522,-4393.28417969,875.69360352,986.04071045,0.00000000,-1,-1,180); //NRG-500
	VIPVehicles[33] = AddStaticVehicleEx(522,-4389.04248047,875.41735840,986.04071045,0.00000000,-1,-1,180); //NRG-500
	VIPVehicles[34] = AddStaticVehicleEx(522,-4385.04980469,875.21435547,986.04071045,0.00000000,-1,-1,180); //NRG-500
	VIPVehicles[35] = AddStaticVehicleEx(522,-4381.05761719,875.00488281,986.04071045,0.00000000,-1,-1,180); //NRG-500
	VIPVehicles[36] = AddStaticVehicleEx(411,-4407.94287109,891.34375000,986.18029785,180.00000000,-1,-1,180); //Infernus
	VIPVehicles[37] = AddStaticVehicleEx(411,-4403.66748047,891.17761230,986.18029785,180.00000000,-1,-1,180); //Infernus
	VIPVehicles[38] = AddStaticVehicleEx(411,-4399.91601562,891.28747559,986.18029785,180.00000000,-1,-1,180); //Infernus
	VIPVehicles[39] = AddStaticVehicleEx(411,-4395.91601562,891.31347656,986.18029785,180.00000000,-1,-1,180); //Infernus
	VIPVehicles[40] = AddStaticVehicleEx(451,-4391.23242188,891.03985596,986.14465332,180.00000000,-1,-1,180); //Turismo
	VIPVehicles[41] = AddStaticVehicleEx(451,-4387.48339844,891.00421143,986.14465332,180.00000000,-1,-1,180); //Turismo
	VIPVehicles[42] = AddStaticVehicleEx(451,-4383.49218750,890.44665527,986.14465332,180.00000000,-1,-1,180); //Turismo
	VIPVehicles[43] = AddStaticVehicleEx(429,-4374.92187500,890.17211914,986.13031006,180.00000000,-1,-1,180); //Banshee
	VIPVehicles[44] = AddStaticVehicleEx(429,-4370.80273438,889.91503906,986.13031006,180.00000000,-1,-1,180); //Banshee
	VIPVehicles[45] = AddStaticVehicleEx(429,-4379.33349609,890.09112549,986.13031006,180.00000000,-1,-1,180); //Banshee
	VIPVehicles[46] = AddStaticVehicleEx(560,-4366.63867188,889.44537354,986.18530273,180.00000000,-1,-1,180); //Sultan
	VIPVehicles[47] = AddStaticVehicleEx(560,-4358.66015625,888.96386719,986.18530273,180.00000000,-1,-1,180); //Sultan
	VIPVehicles[48] = AddStaticVehicleEx(560,-4354.67675781,888.44500732,986.18530273,180.00000000,-1,-1,180); //Sultan
	VIPVehicles[49] = AddStaticVehicleEx(560,-4362.83789062,889.30908203,986.18530273,180.00000000,-1,-1,180); //Sultan

	print("[Streamer] Dynamic Static Vehicles has been loaded.");
	
	return 1;
}

forward LoadStreamerDynamicPickups();
public LoadStreamerDynamicPickups()
{
	// Points
	new string[128];
    for(new h = 0; h < sizeof(Points); h++)
	{
		if(Points[h][Type] == 3)
		{
			format(string, sizeof(string), " POT/THUOC PHIEN CO SAN: %d/1000.", Points[h][Stock]);
			Points[h][TextLabel] = CreateDynamic3DTextLabel(string, COLOR_YELLOW, Points[h][Pointx], Points[h][Pointy], Points[h][Pointz], 4.0);
			Points[h][CratePoint] = 1;
		}
		else if(Points[h][Type] == 4)
		{
			format(string, sizeof(string), " CRACK CO SAN: %d/500.", Points[h][Stock]);
			Points[h][TextLabel] = CreateDynamic3DTextLabel(string, COLOR_YELLOW, Points[h][Pointx], Points[h][Pointy], Points[h][Pointz], 4.0);
			Points[h][CratePoint] = 2;
		}
		CreateDynamicPickup(1239, 23, Points[h][Pointx], Points[h][Pointy], Points[h][Pointz]);
	}

    // Pickups
	CreateDynamicPickup(1239, 23, 301.042633, 178.700408, 1007.171875, -1); // Detective job (SF)
	CreateDynamicPickup(1239, 23, -2089.344970, 87.800231, 35.320312, -1); // Drug Dealer job (SF)
	CreateDynamicPickup(1239, 23, 2088.9224,-1806.8473,13.5469, -1); // Pizza Boy job (SF)
	CreateDynamicPickup(1239, 23, -2240.9011, 2313.1653, 4.9918, -1); // Taxi Driver job (TR)
	CreateDynamicPickup(1239, 23, 833.60, 3.23, 1004.17, -1); // /paymytickets point
	CreateDynamicPickup(1239, 23, -4429.944824, 905.032470, 987.078186, -1); // VIP Garage Travel
	CreateDynamicPickup(1239, 23, 2102.71,-103.97,2.28, -1); // Matrun 3
	CreateDynamicPickup(1239, 23, -1816.528686, -179.502624, 9.398437, -1); // Matrun 4 (pickup)
	CreateDynamicPickup(1239, 23, -1872.879760, 1416.312500, 7.180089, -1); // Matrun 4 (dropoff)
	CreateDynamicPickup(1239, 23, -1522.7351, 2587.2612, 55.8359, -1); //Matrun TR (Pickup)
	CreateDynamicPickup(1239, 23, -688.7897,966.1434,12.1627, -1); //Matrun TR (DropOff)
  	//CreateDynamicPickup(1239, 23, 2565.346191, 1403.409790, 7699.584472, -1);// VIP ph changing station.
  	CreateDynamicPickup(1239, 23, 701.7953,-519.8322,16.3348, -1); //Rental Icon
	CreateDynamicPickup(1239, 23, -1475.4224,1877.3550,32.6328, -1); // Mechanic Job (TR)
	CreateDynamicPickup(1239, 23, -1385.6786,2625.6636,55.5572, -1); // Detective Job (TR)
	CreateDynamicPickup(1239, 23, -1513.4904,2614.3591,55.8078, -1); // Arms Dealer Job (TR)
	CreateDynamicPickup(1239, 23, -1356.7195,2065.3450,52.4677, -1); // Craftsman Job (TR)
	CreateDynamicPickup(1239, 23, -1528.0924,2688.7837,55.8359, -1); // Drug Dealer Job (TR)
	CreateDynamicPickup(1239, 23, -821.3508,1574.9393,27.1172, -1); // Bodyguard Job (TR)
	CreateDynamicPickup(1239, 23, -2630.7375,2349.3994,8.4892, -1); // Drug Smuggler Job (TR)
	CreateDynamicPickup(1239, 23, -864.3550,1536.9703,22.5870, -1); // Bartender Job (TR)
	CreateDynamicPickup(1239, 23, 757.3734,5.7227,1000.7012, -1); // Train Pos
	CreateDynamicPickup(1239, 23, 758.43,-78.0,1000.65, -1); // Train Pos (MALL GYM)
	CreateDynamicPickup(1239, 23, 293.6505,188.3670,1007.1719, -1); //FBI
	CreateDynamicPickup(1239, 23, 2354.2808,-1169.2959,28.0066, -1); //Drug Smuggler
	CreateDynamicPickup(1240, 23, 1179.4012451172,-1331.5632324219,2423.0461425781, -1);// /healme//Old Healme: 2103.4998,2824.2568,-16.1672
	CreateDynamicPickup(1239, 23, 1169.7209472656,-1348.3218994141,2423.0461425781, -1);// /Old Insurance: 2086.4915,2826.7122,-16.1744
    CreateDynamicPickup(1210, 23, -71.419654846191,1360.4097900391,1080.2185058594, -1); //Hitman Pickup
	CreateDynamicPickup(1240, 23, -1528.814331, 2540.706054, 55.835937, -1);// Deliverpt (TR - El Quebrados)
	CreateDynamicPickup(1240, 23, 1142.4733,-1326.3633,13.6259, -1);// Deliverpt (All Saints)
	CreateDynamicPickup(1240, 23, 2027.0599,-1410.6870,16.9922, -1);// Deliverpt (County General)
	CreateDynamicPickup(1240, 23, 1227.2339,306.4730,19.7028, -1);// Deliverpt (Montgomery)
	CreateDynamicPickup(1240, 23, -339.2989,1055.8138,19.7392, -1);// Deliverpt (Fort Carson)
	CreateDynamicPickup(1240, 23, -2695.5725,639.4147,14.4531, -1); // Deliverpt (SF)
	CreateDynamicPickup(1240, 23, 1165.1564,-1368.8240,26.6502, -1);// Deliverpt (All Saints Rooftop)
	CreateDynamicPickup(1240, 23, 2024.5742,-1382.7844,48.3359, -1);// Deliverpt (County General)
	CreateDynamicPickup(1240, 23, 1233.3384,316.4022,24.7578, -1);// Deliverpt (Montgomery Rooftop)
	CreateDynamicPickup(1240, 23, -334.1560,1051.4434,26.0125, -1);// Deliverpt (Fort Carson Rooftop)
	CreateDynamicPickup(1240, 23, -2656.0339,615.2567,66.0938, -1);// Deliverpt (SF Rooftop)
	CreateDynamicPickup(1240, 23, 1579.58,1768.88,10.82, -1);// Deliverpt (LV Hospital)
	CreateDynamicPickup(1240, 23, -2482.4338,2231.1106,4.8463, -1);// Deliverpt (TR - Bayside)
	CreateDynamicPickup(1240, 23, 225.3467,1981.8497,17.6406, -1); //Deliverpt (DeMorgan)
	CreateDynamicPickup(1239, 23, 366.54, 159.09, 1008.38, -1); // LICENSES @ CITY HALL
	CreateDynamicPickup(1239, 23, -1560.963867, 127.491157, 3.554687); //Trucker registration
    CreateDynamicPickup(1239, 23, -1720.962646, 1364.456176, 7.187500); //Pizza job registration
	CreateDynamicPickup(1239, 23, 251.99, 117.36, 1003.22); //Detective Registration
	CreateDynamicPickup(1239, 23, 1469.5247,-1755.7039,3285.2859); //Lawyer Registration
	CreateDynamicPickup(1239, 23, 1215.1304,-11.8431,1000.9219); //Whore Registration
	CreateDynamicPickup(1239, 23, 2166.3772,-1675.3829,15.0859); //DrugDealer Registration
	CreateDynamicPickup(1239, 23, 2226.1716,-1718.1792,13.5165); //BodyGuard Registration (LS)
	CreateDynamicPickup(1239, 23, -2269.256103, -158.054321, 35.320312); //BodyGuard Registration (SF)
	CreateDynamicPickup(1239, 23, 1224.13, 267.98, 19.55); //Bodyguard (Montgomery) Registration
	CreateDynamicPickup(1239, 23, 161.92, -25.70, 1.57); //CarMechanic (Blueberry) Registration
	CreateDynamicPickup(1239, 23, -2032.601928, 143.866592, 28.835937); //CarMechanic (SF) Registration
	CreateDynamicPickup(1239, 23, 1099.73,-1504.67,15.800); // BodyGuard Registration (MALL GYM)
	CreateDynamicPickup(1239, 23, 1366.4325,-1275.2096,13.5469); //ArmsDealer Registration (LS)
	CreateDynamicPickup(1239, 23, -2623.333984, 209.235931, 4.684767); //ArmsDealer Registration (SF)
	CreateDynamicPickup(1239, 23, 2195.8335,-1973.0638,13.5589); //Craftsman Registration
	CreateDynamicPickup(1239, 23, 502.6696,-11.6603,1000.6797); //Bartender Registration
	CreateDynamicPickup(1239, 23, 766.0804,14.5133,1000.7004); //Boxer Registration
	CreateDynamicPickup(1239, 23, 758.98,-60.32,1000.78); //Boxer Registration2
	CreateDynamicPickup(1239, 23, 1741.6218,-1863.6486,13.5748); //TaxiDriver Registration (LS)
	CreateDynamicPickup(1239, 23, -1981.144775, 133.063293, 27.687500); //TaxiDriver Registration (SF)
	CreateDynamicPickup(371, 23, 1544.2,-1353.4,329.4); //LS towertop
	CreateDynamicPickup(371, 23, 1536.0, -1360.0, 1150.0); //LS towertop
	CreateDynamicPickup(1242, 23, 1527.5,-12.1,1002.0); //binco armor
	//CreateDynamicPickup(1240, 23, 279.3000,1853.5619,8.7649); //area51 health
	CreateDynamicPickup(2485, 23, 2958.2200, -1339.2900, 5.2100);// NGGShop - Car Shop
	CreateDynamicPickup(1239, 23, 2950.4014, -1283.0776, 4.6875);// NGGShop - Plane Shop
	CreateDynamicPickup(1239, 23, 2974.7520, -1462.9265, 2.8184);// NGGShop - Boat Shop
	CreateDynamicPickup(1314, 23, 2939.0134, -1401.2946, 11.0000);// NGGShop - VIP Shop
	CreateDynamicPickup(1272, 23, 2938.2734, -1391.0596, 11.0000);// NGGShop - House Shop
	CreateDynamicPickup(1239, 23, 2939.8442, -1411.2906, 11.0000);// NGGShop - Misc Shop
	CreateDynamicPickup(1239, 23, 2927.5000, -1530.0601, 11.0000);// NGGShop - ATM
	CreateDynamicPickup(1239, 23, 2958.0425, -1393.6724, 5.5500);// NGGShop - Hotdog Stand
	CreateDynamicPickup(1241, 23, 2946.8672, -1484.9561, 11.0000);// NGGShop - Healthcare
	CreateDynamicPickup(1239, 23, 2937.2878, -1357.2294, 11.0000);// NGGShop - Gift Reset
	print("[Streamer] Dynamic Pickups has been loaded.");
	
	return 1;
}

forward LoadStreamerDynamic3DTextLabels();
public LoadStreamerDynamic3DTextLabels()
{
	new string[128];
    CreateDynamic3DTextLabel("{FF8000}/loadforklift\nDe dua cac thung len xe forklift", COLOR_YELLOW, -2114.1, -1723.5, 11984.5, 20.0, _, _, 1, 0, -1, _, 20.0);
	CreateDynamic3DTextLabel("{FF8000}LOCKDOWN\nCHI BAM TRONG TRUONG HOP KHAN CAP", COLOR_YELLOW, -1121.70, 4290.41, 5.88, 20.0, _, _, 1, 0, 0, _, 20.0);

	// General text labels
	CreateDynamic3DTextLabel("All Saints Plaza Parking Garage\nType /enter de dua xe cua ban vao bai",COLOR_YELLOW,1218.69,-1425.01,13.15+0.6,25.0);
	CreateDynamic3DTextLabel("Club VIP Parking\nSu dung /enter de dua xe cua ban vao bai",COLOR_YELLOW,1814.6857,-1559.2028,13.4834+0.4,15.0);
	CreateDynamic3DTextLabel("Gym Parking Garage\nSu dung /enter de dua xe cua ban vao bai",COLOR_YELLOW,2273.4026,-1724.3064,13.5469+0.6,25.0);
	CreateDynamic3DTextLabel("Courthouse Parking Garage\nSu dung /enter de dua xe cua ban vao bai",COLOR_YELLOW,1418.5190,-1663.8959,13.5395+0.6,25.0);
    CreateDynamic3DTextLabel("Tra ve phat cua ban hoac\nlay chiec xe cua ban, su dung /dmvmenu",COLOR_YELLOW,833.60, 3.23, 1004.17+0.6,4.0);//
    CreateDynamic3DTextLabel("Thay doi so dien thoai VIP, su dung /vipnum",COLOR_YELLOW,2549.548095, 1404.047729, 7699.584472+0.6,4.0);//
    CreateDynamic3DTextLabel("Thay doi so dien thoai VIP, su dung /vipnum",COLOR_YELLOW,1832.6000, 1375.1700, 1464.4600+0.6,4.0);//
    CreateDynamic3DTextLabel("Su dung /travel\nDe dua chiec xe cua ban ra khoi bai do xe VIP",COLOR_YELLOW,-4429.944824, 905.032470, 987.078186+0.5,13.0);// VIP garage travel
    CreateDynamic3DTextLabel("/viplocker\nDe mo tu do VIP.",COLOR_YELLOW,2555.747314, 1404.106079, 7699.584472+0.6,4.0);/// LS VIP locker room
	CreateDynamic3DTextLabel("/viplocker\nDe mo tu do VIP.",COLOR_YELLOW,1832.0533, 1380.7281, 1464.3822+0.6,4.0);/// LV Main VIP locker room
    CreateDynamic3DTextLabel("/viplocker\nDe mo tu do VIP.",COLOR_YELLOW,772.4844, 1715.7213, 1938.0391+0.6,4.0);/// LV Plat VIP locker room
	CreateDynamic3DTextLabel("/getgift\nDe nhan phan thuong ben trong tui qua.",COLOR_YELLOW,2546.611572, 1403.323608, 7700.768066,8.0);/// VIP Lounge
	CreateDynamic3DTextLabel("/nhanqua\nDe nhan phan thuong ben trong tui qua.",COLOR_YELLOW,1726.1000, 1370.1000, 1449.9000,8.0);/// LV VIP Lounge
	CreateDynamic3DTextLabel("/nhanqua\nDe nhan phan thuong ben trong tui qua.",COLOR_YELLOW,1763.5000, 1432.5000, 2015.7000,8.0);/// LV GVIP Lounge
	CreateDynamic3DTextLabel("/nhanqua\nDe nhan phan thuong ben trong tui qua.",COLOR_YELLOW,772.4000, 1743.2000, 1938.8800,8.0);/// LV PVIP Lounge
    CreateDynamic3DTextLabel("Thue mot chiec xe dap theo yeu cau",COLOR_YELLOW,701.7953,-519.8322,16.3348+0.6,4.0);
	CreateDynamic3DTextLabel("Factions Duty Point", COLOR_DBLUE, -2043.527832, -189.208435, 985.183105+0.6, 4.0); //
	CreateDynamic3DTextLabel("Factions Duty Point", COLOR_DBLUE, 1112.7, -2055.8, 1409.7+0.6, 4.0); //
	CreateDynamic3DTextLabel("Factions Duty Point", COLOR_DBLUE, 321.43, 303.96, 999.14+0.6, 4.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, 2112, 5, -1); //
	CreateDynamic3DTextLabel("Factions Duty Point", COLOR_DBLUE, 1533.6, -1760.9, 2264.4+0.6, 5.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, 2345, 18, -1); //
	CreateDynamic3DTextLabel("Tro lai Entrance", COLOR_DBLUE, -2033.7502,-154.8784,35.3203+0.6, 4.0); // Prison
	CreateDynamic3DTextLabel("/deliverpt",COLOR_LIGHTRED,225.3467,1981.8497,17.6406+0.6,4.0);//Deliverpt (DeMorgan)
   	CreateDynamic3DTextLabel("/deliverpt",COLOR_LIGHTRED,-1528.814331, 2540.706054, 55.835937+0.6,4.0);///Deliverpt (TR - El Quebrados)
   	CreateDynamic3DTextLabel("/deliverpt",COLOR_LIGHTRED,1142.4733,-1326.3633,13.6259+0.6,4.0);///Deliverpt (All Saints)
   	CreateDynamic3DTextLabel("/deliverpt",COLOR_LIGHTRED,2027.0599,-1410.6870,16.9922+0.6,4.0);///Deliverpt (County General)
   	CreateDynamic3DTextLabel("/deliverpt",COLOR_LIGHTRED,1227.2339,306.4730,19.7028+0.6,4.0);///Deliverpt (Montgomery)
   	CreateDynamic3DTextLabel("/deliverpt",COLOR_LIGHTRED,-339.2989,1055.8138,19.7392+0.6,4.0);///Deliverpt (Fort Carson)
   	CreateDynamic3DTextLabel("/deliverpt",COLOR_LIGHTRED,1165.1564,-1368.8240,26.6502+0.6,4.0);///Deliverpt (All Saints Rooftop)
   	CreateDynamic3DTextLabel("/deliverpt",COLOR_LIGHTRED,2024.5742,-1382.7844,48.3359+0.6,4.0);///Deliverpt (County General)
   	CreateDynamic3DTextLabel("/deliverpt",COLOR_LIGHTRED,1233.3384,316.4022,24.7578+0.6,4.0);///Deliverpt (Montgomery Rooftop)
   	CreateDynamic3DTextLabel("/deliverpt",COLOR_LIGHTRED,-334.1560,1051.4434,26.0125+0.6,4.0);///Deliverpt (Fort Carson Rooftop)
   	CreateDynamic3DTextLabel("/deliverpt",COLOR_LIGHTRED,-2656.0339,615.2567,66.0938+0.6,4.0);///Deliverpt (SF Rooftop)
	CreateDynamic3DTextLabel("/deliverpt",COLOR_LIGHTRED,1579.58,1768.88,10.82+0.6,4.0); // /deliverpt (LV Hospital)
   	CreateDynamic3DTextLabel("Emergency Room\n/deliverpt",COLOR_DBLUE,-2695.5725,639.4147,14.4531+0.6,4.0);///Deliverpt (SF)
	CreateDynamic3DTextLabel("/deliverpt",COLOR_LIGHTRED,-2482.4338,2231.1106,4.8463+0.6,4.0);///Deliverpt (TR - Bayside)
   	CreateDynamic3DTextLabel("/deliver",COLOR_DBLUE,1991.7953,-2321.2532,13.5469+0.6,4.0);// Deliver
   	CreateDynamic3DTextLabel("/healme \nDe chua benh cua ban",COLOR_DBLUE,1179.4012451172,-1331.5632324219,2423.0461425781+0.6,4.0);// /healme
   	CreateDynamic3DTextLabel("/muabaohiem \n Mua bao hiem y te",COLOR_DBLUE,1169.7209472656,-1348.3218994141,2423.0461425781+0.6,4.0);// Insurance
   	CreateDynamic3DTextLabel("/muabaohiem \n Mua bao hiem y te",COLOR_DBLUE,2785.586914, 2400.224853, 1240.531127+0.6,8.0);// GVIP Insurance
   	CreateDynamic3DTextLabel("/muabaohiem \n Mua bao hiem y te",COLOR_DBLUE,912.1003,1429.9298,-81.1762+0.6,4.0);// Famed Room Insurance
	CreateDynamic3DTextLabel("Su dung /layvatlieu tu mot chiec thuyen \nde co duoc vat lieu",COLOR_YELLOW,2102.71,-103.97,2.28+0.5,8.0);// Deliver
    CreateDynamic3DTextLabel("Su Dung /laybanh de nhan banh \nDe co Pizza giao hang!",COLOR_YELLOW,2088.9224,-1806.8473,13.5469, 4.0); //getpizza
	CreateDynamic3DTextLabel("Su dung /muagiayphep to \nDe chon mua giay phep.",COLOR_YELLOW,366.54,159.09,1008.38+0.5,8.0);// Licenses.
	//CreateDynamic3DTextLabel("Type /registerplate to\nchange your license plate.",COLOR_YELLOW,366.54,159.09,1008.38+1,8.0);// Licenses.
    CreateDynamic3DTextLabel("/muatrangphuc\n De thay trang phuc ca nhan.",COLOR_YELLOW,208.8970,-100.3289,1005.2578,8.0);
    CreateDynamic3DTextLabel("/muatrangphuc\n De thay trang phuc ca nhan.",COLOR_YELLOW,206.5429,-41.2313,1001.8047,8.0);
    CreateDynamic3DTextLabel("/muatrangphuc\n De thay trang phuc ca nhan.",COLOR_YELLOW,209.3064,-8.3033,1005.2109,8.0);
    CreateDynamic3DTextLabel("/muatrangphuc\n De thay trang phuc ca nhan.",COLOR_YELLOW,159.6771,-83.2866,1001.8120,8.0);
    CreateDynamic3DTextLabel("/muatrangphuc\n De thay trang phuc ca nhan.",COLOR_YELLOW,206.4552,-163.0903,1000.5234,8.0);
    CreateDynamic3DTextLabel("/muadochoi\n De mua phu kien trang tri.",COLOR_YELLOW,206.3253,-100.3268,1005.2578,8.0);
    CreateDynamic3DTextLabel("/muadochoi\n De mua phu kien trang tri.",COLOR_YELLOW,201.0413,-40.1616,1001.8047,8.0);
    CreateDynamic3DTextLabel("/muadochoi\n De mua phu kien trang tri.",COLOR_YELLOW,206.3963,-8.2122,1001.2109,8.0);
    CreateDynamic3DTextLabel("/muadochoi\n De mua phu kien trang tri.",COLOR_YELLOW,162.7706,-83.2726,1001.8047,8.0);
    CreateDynamic3DTextLabel("/muadochoi\n De mua phu kien trang tri.",COLOR_YELLOW,2787.095947, 2390.353027, 1240.531127+0.6,4.0); // Gold+ VIP Room
    CreateDynamic3DTextLabel("/muadochoi\n De mua phu kien trang tri.",COLOR_YELLOW,202.6777,-163.0623,1000.5306,8.0);
	CreateDynamic3DTextLabel("/muadochoi\n De mua phu kien trang tri.",COLOR_YELLOW,1774.7533, 1422.6665, 2013.4979,8.0);
	CreateDynamic3DTextLabel("/muadochoi\n De mua phu kien trang tri.",COLOR_YELLOW,775.0900, 1742.4900, 1938.3800,8.0);

    CreateDynamic3DTextLabel("Tank Spawn\nZone",COLOR_YELLOW,286.7334, 2024.3762, 17.6406,10.0);
    CreateDynamic3DTextLabel("Air Vehicle Spawn\nZone", COLOR_YELLOW, 326.2754,1887.7212,17.6566, 10.0);

	// Paintball Arena
 	CreateDynamic3DTextLabel("Phong tap ban arena\n\nSu dung /thamgiaarena de vao phong",COLOR_YELLOW,1294.5062,-1445.0599,0.4403+0.5,6.0);

	// SANews Broadcast
	SANews3DText = CreateDynamic3DTextLabel(string,COLOR_LIGHTBLUE,632.7400,-14.2350,1108.2181,8.0);
	
	// Buildings 3D labels
	//CreateDynamic3DTextLabel("Press F (enter) to go inside.",COLOR_YELLOW,1568.5718,-1691.0177,5.8906+0.6,4.0); //LSPD Garage enter
	//CreateDynamic3DTextLabel("Press F (enter) to go inside.",COLOR_YELLOW,1564.8464,-1666.1444,28.3956+0.6,4.0); //LSPD Roof enter

    CreateDynamic3DTextLabel("Su dung /layvatlieu de lay vat lieu",COLOR_YELLOW,-1816.528686, -179.502624, 9.398437+0.6,5.0);
    CreateDynamic3DTextLabel("Su dung /layvatlieu de lay vat lieu",COLOR_YELLOW,-1522.7351, 2587.2612, 55.8359+0.6, 5.0);
	CreateDynamic3DTextLabel("Diem thay doi ten \nSu dung /doiten de thay doi ten",COLOR_YELLOW,1154.7295,-1440.2323,15.7969+0.6,18.0); // Namechange at mall

    /* Sprunk 3D Text */
    CreateDynamic3DTextLabel("May uong nuoc \nBam phim 'F' de lay nuoc uong",COLOR_YELLOW,2140.4504,-1161.4298,23.9922+0.6,12.0); // May uong nuoc
    CreateDynamic3DTextLabel("May uong nuoc \nBam phim 'F' de lay nuoc uong",COLOR_YELLOW,2153.8826,-1015.5273,62.8895+0.6,12.0); // May uong nuoc
    CreateDynamic3DTextLabel("May uong nuoc \nBam phim 'F' de lay nuoc uong",COLOR_YELLOW,2325.9705,-1646.1234,14.8270+0.6,12.0); // May uong nuoc
    CreateDynamic3DTextLabel("May uong nuoc \nBam phim 'F' de lay nuoc uong",COLOR_YELLOW,2060.2163,-1898.6940,13.5538+0.6,12.0); // May uong nuoc
    CreateDynamic3DTextLabel("May uong nuoc \nBam phim 'F' de lay nuoc uong",COLOR_YELLOW,1929.8986,-1772.5122,13.5469+0.6,12.0); // May uong nuoc
    CreateDynamic3DTextLabel("May uong nuoc \nBam phim 'F' de lay nuoc uong",COLOR_YELLOW,1153.6688,-1460.8262,15.7969+0.6,12.0); // May uong nuoc

	/* Job's 3D Text */
	CreateDynamic3DTextLabel("Cong viec Tham tu \nSu dung /xinviec de lua chon cong viec",COLOR_RED,251.99, 117.36, 1003.22+0.5,4.0);// Cong viec Detective (LS)
    CreateDynamic3DTextLabel("Cong viec Tham tu \nSu dung /xinviec de lua chon cong viec",COLOR_RED,301.042633, 178.700408, 1007.171875+0.5,4.0);// Cong viec Detective (SF)
	CreateDynamic3DTextLabel("Cong viec Tham tu \nSu dung /xinviec de lua chon cong viec",COLOR_RED,-1385.6786, 2625.6636, 55.5572+0.5,4.0);// Cong viec Detective (TR)
	CreateDynamic3DTextLabel("Nguoi ban vu khi \nSu dung /xinviec de lua chon cong viec",COLOR_RED,1366.4325,-1275.2096,13.5469+0.5,4.0);// Gun Job
    CreateDynamic3DTextLabel("Nguoi ban vu khi \nSu dung /xinviec de lua chon cong viec",COLOR_RED,-2623.333984, 209.235931, 4.684767+0.5,4.0);// Gun Job
	CreateDynamic3DTextLabel("Nguoi ban vu khi \nSu dung /xinviec de lua chon cong viec",COLOR_RED,-1513.4904, 2614.3591, 55.8078+0.5,4.0);// Arms Dealer (TR)
 	CreateDynamic3DTextLabel("Nguoi ban thuoc phien \nSu dung /xinviec de lua chon cong viec",COLOR_RED,2166.3772,-1675.3829,15.0859+0.5,4.0);// Drug Dealer (LS)
    CreateDynamic3DTextLabel("Nguoi ban thuoc phien \nSu dung /xinviec de lua chon cong viec",COLOR_RED,-2089.344970, 87.800231, 35.320312+0.5,4.0);// Drug Dealer (SF)
	CreateDynamic3DTextLabel("Nguoi ban thuoc phien \nSu dung /xinviec de lua chon cong viec",COLOR_RED,-1528.0924,2688.7837,55.8359+0.5,4.0);// Drug Dealer (TR)
	CreateDynamic3DTextLabel("Cong viec Ve si \nSu dung /xinviec de lua chon cong viec",COLOR_RED,2226.1716,-1718.1792,13.5165+0.5,4.0);// Ve si (LS)
    CreateDynamic3DTextLabel("Cong viec Ve si \nSu dung /xinviec de lua chon cong viec",COLOR_RED,-2269.256103, -158.054321, 35.320312+0.5,4.0);// Ve si (SF)
	CreateDynamic3DTextLabel("Cong viec Ve si \nSu dung /xinviec de lua chon cong viec",COLOR_RED,-821.3508,1574.9393,27.1172+0.5,4.0);// Ve si (TR)
	CreateDynamic3DTextLabel("Luat su \nSu dung /xinviec de lua chon cong viec",COLOR_RED,1469.5247,-1755.7039,3285.2859+0.5,4.0);// Lawyer
    CreateDynamic3DTextLabel("Tai xe Taxi \nSu dung /xinviec de lua chon cong viec",COLOR_RED,1741.6218,-1863.6486,13.5748+0.5,4.0);// Taxi Driver (LS)
    CreateDynamic3DTextLabel("Tai xe Taxi \nSu dung /xinviec de lua chon cong viec",COLOR_RED,-1981.144775, 133.063293, 27.687500+0.5,4.0);// Taxi Driver (SF)
	CreateDynamic3DTextLabel("Tai xe Taxi \nSu dung /xinviec de lua chon cong viec",COLOR_RED,-2240.9011, 2313.1653, 4.9918+0.5,4.0);// Taxi Driver (TR)
    CreateDynamic3DTextLabel("Cong viec Ve si \nSu dung /xinviec de lua chon cong viec",COLOR_RED,1224.13, 267.98, 19.55+0.5,4.0);// Ve si (Montgomery)
    CreateDynamic3DTextLabel("Tho sua xe \nSu dung /xinviec de lua chon cong viec",COLOR_RED,161.92, -25.70, 1.57+0.5,4.0);// Mechanic (Blueberry)
    CreateDynamic3DTextLabel("Tho sua xe \nSu dung /xinviec de lua chon cong viec",COLOR_RED,-2032.601928, 143.866592, 28.835937+0.5,4.0);// Mechanic (SF)
	CreateDynamic3DTextLabel("Tho sua xe \nSu dung /xinviec de lua chon cong viec",COLOR_RED,-1475.4224, 1877.3550, 32.6328+0.5,4.0);// Mechanic (TR)
	CreateDynamic3DTextLabel("Gai diem \nSu dung /xinviec de lua chon cong viec",COLOR_RED,1215.1304,-11.8431,1000.9219+0.5,4.0);// Gai diem
    CreateDynamic3DTextLabel("Boxer Job \nSu dung /xinviec de lua chon cong viec",COLOR_RED,766.0804,14.5133,1000.7004+0.5,4.0);// Boxer
    CreateDynamic3DTextLabel("Boxer Job \nSu dung /xinviec de lua chon cong viec",COLOR_RED,758.98,-60.32,1000.78+0.5,4.0);// Boxer2
    CreateDynamic3DTextLabel("Buon lau ma tuy \nSu dung /xinviec de lua chon cong viec",COLOR_RED,2354.2808,-1169.2959,28.0066+0.5,4.0);// Drug Smuggler
	CreateDynamic3DTextLabel("Buon lau ma tuy \nSu dung /xinviec de lua chon cong viec",COLOR_RED,-2630.7375,2349.3994,8.4892+0.5,4.0);// Drug Smuggler (TR)
    CreateDynamic3DTextLabel("Cong viec Ve si \nSu dung /xinviec de lua chon cong viec",COLOR_RED,1099.73,-1504.67,15.800+0.5,4.0);// Bodyguard (MALL GYM)
    CreateDynamic3DTextLabel("Tho thu cong \nSu dung /xinviec de lua chon cong viec",COLOR_RED,2195.8335,-1973.0638,13.5589+0.5,4.0);// Craftsman (JUNKYARD LS)
	CreateDynamic3DTextLabel("Tho thu cong \nSu dung /xinviec de lua chon cong viec",COLOR_RED,-1356.7195,2065.3450,52.4677+0.5,4.0);// Craftsman (TR)
	CreateDynamic3DTextLabel("Nguoi pha che \nSu dung /xinviec de lua chon cong viec",COLOR_RED,502.6696,-11.6603,1000.6797+0.5,4.0);// Nguoi pha che (Alhambra)
	CreateDynamic3DTextLabel("Nguoi pha che \nSu dung /xinviec de lua chon cong viec",COLOR_RED,-864.3550,1536.9703,22.5870+0.5,4.0);// Nguoi pha che (TR)
    CreateDynamic3DTextLabel("Nguoi dua hang \nSu dung /xinviec de lua chon cong viec",COLOR_RED,-1560.963867, 127.491157, 3.554687+0.5,4.0);// Trucker Job (SF)
    CreateDynamic3DTextLabel("Nhan vien Pizza Boy \nSu dung /xinviec de lua chon cong viec",COLOR_RED,-1720.962646, 1364.456176, 7.187500+0.5,4.0);// Pizza Boy Job (SF)
    CreateDynamic3DTextLabel("Tierra Robada Gant Bridge Access.",0xFFFF00AA,-2678.2702636719,2148.0134277344,55.4296875+0.6,20.0);// Border Lable
	CreateDynamic3DTextLabel("Tierra Robada Airport",0xFFFF00AA,-1873.2819824219,2172.4621582031,6.2687501907349+0.6,20.0);// Airport Lable.
	CreateDynamic3DTextLabel("Famed Locker \nType /famedlocker to access the locker", COLOR_YELLOW,901.4825,1429.7404,-82.3235+0.6,4.0); //Famed Locker
	
	//NGGShop
	CreateDynamic3DTextLabel("Cua hang xe\n/carshop", COLOR_YELLOW, 2958.2200, -1339.2900, 5.2100+0.6, 10.0);
	CreateDynamic3DTextLabel("Cua hang may bay\n/planeshop", COLOR_YELLOW, 2950.4014, -1283.0776, 4.6875+0.6, 10.0);
	CreateDynamic3DTextLabel("Cua hang thuyen\n/boatshop", COLOR_YELLOW, 2974.7520, -1462.9265, 2.8184+0.6, 10.0);
	CreateDynamic3DTextLabel("VIP Shop\n/vipshop", COLOR_YELLOW, 2939.0134, -1401.2946, 11.0000+0.6, 10.0);
	CreateDynamic3DTextLabel("Toy Shop\n/toyshop", COLOR_YELLOW, 2927.5244, -1549.1826, 11.0000+0.6, 10.0);
	CreateDynamic3DTextLabel("Gift Reset\n/buygiftreset", COLOR_YELLOW, 2937.2878, -1357.2294, 11.0000+0.6, 10.0);
	CreateDynamic3DTextLabel("House Shop\n/houseshop", COLOR_YELLOW, 2938.2734, -1391.0596, 11.0000+0.6, 10.0);
	CreateDynamic3DTextLabel("Misc Shop\n/miscshop", COLOR_YELLOW, 2939.8442, -1411.2906, 11.0000+0.6, 10.0);
	CreateDynamic3DTextLabel("Hot Dogs\n/buyhotdog", COLOR_YELLOW, 2958.0425, -1393.6724, 5.5500+0.6, 10.0);
	CreateDynamic3DTextLabel("HealthCare Shop\n/buyhealthcare", COLOR_YELLOW, 2946.8672, -1484.9561, 11.0000+0.6, 10.0);
	print("[Streamer] Dynamic 3D Text Labels has been loaded.");
	return 1;
}

forward LoadStreamerDynamicButtons();
public LoadStreamerDynamicButtons()
{
    /* LSPD buttons */
 	eastin = CreateButton(253.44921875,110.59960938,1003.79998779,90.00000000); //object(fire_break) (1)
	westout = CreateButton(239.79492188,116.18457031,1003.87286377,90.00000000); //object(fire_break) (2)
	westin = CreateButton(239.32031250,116.27441406,1003.87286377,270.00000000); //object(fire_break) (3)
	eastout = CreateButton(253.00000000,110.59960938,1003.79998779,270.00000000); //
	elevator = CreateButton(275.83984375,120.94921875,1005.12280273,90.00000000); //object(kmb_keypad) (1)
	cctvin = CreateButton(264.55566406,115.97949219,1005.12280273,179.99450684); //object(kmb_keypad) (2)
	cctvout = CreateButton(264.55566406,115.69531250,1005.12280273,0.00000000); //object(kmb_keypad) (3)
	lockerin = CreateButton(267.21679688,112.40917969,1005.12280273,0.00000000); //object(kmb_keypad) (4)
	lockerout = CreateButton(267.21679688,112.66992188,1005.12280273,179.99450684); //object(kmb_keypad) (5)
	chiefout = CreateButton(232.50000000,119.38476562,1010.81384277,0.00000000); //object(sec_keypad) (2)
	chiefin = CreateButton(229.67089844,119.66992188,1010.81384277,179.99450684); //object(sec_keypad) (1)
	roofkey = CreateButton(1565.93652344,-1667.35058594,28.85165977,179.99450684); //object(sec_keypad) (3)
	garagekey = CreateButton(1567.14550781,-1689.62011719,6.69999981,0.00000000); //object(sec_keypad) (4)
 	sasdbtn1 = CreateButton(2514.59179688,-1697.05761719,563.19116211,0.00000000); //SASD West
	sasdbtn2 = CreateButton(2522.82299805,-1660.15917969,563.15893555,0.00000000); //SASD East
	sasdbtn3 = CreateButton(2525.09863281,-1697.05761719,563.16284180,0.00000000); //SASD R4
	sasdbtn4 = CreateButton(2519.84375000,-1697.00659180,563.20904541,0.00000000); //SASD R5
	sasdbtn5 = CreateButton(2514.77880859,-1660.15917969,563.16925049); //SASD R6
	
	/* Noose Int Buttons */
	nooseenter[0] = CreateButton(-765.87152100,2539.55102539,10021.18847847,90); //object(kmb_keypad) (5) yes entrance
    nooseenter[1] = CreateButton(-766.81298828,2539.55664062,10021.18847847,0); //object(kmb_keypad) (9) yes entrance
    radarroom[0] = CreateButton(-747.22851562,2533.17968750,10021.18847656,260);
    radarroom[1] = CreateButton(-745.98876953,2533.04150391,10021.18847656,90);
	intergate[0] = CreateButton(-765.34863281,2549.97070312,10021.18847656,90);
	intergate[1] = CreateButton(-765.13671875,2554.51660156,10020.90917969,260 );
	intergate[2] = CreateButton(-773.29394531,2546.13134766,10020.86816406,90); // Cage
	bottomroom[0] = CreateButton(-764.06152344,2566.59277344,10021.18847656, 90);
	bottomroom[1] = CreateButton(-764.51269531,2566.65332031,10021.18847656, 260);
	ncontrolroom[0] = CreateButton(-754.32763672,2538.71655273,10021.61132812, 178.50000000);
	ncontrolroom[1] = CreateButton(-752.47076416,2538.23266602,10021.00195312, 0);

	/* DoC Prison Buttons */
	PrisonButtons[0] = CreateButton(-2097, -191.100006, 996.299987, 90); // Control Room
	PrisonButtons[1] = CreateButton(-2092.550048, -204, 996.099975, 0); // Control Room Door 2
	PrisonButtons[2] = CreateButton(-2088.530029, -213, 996, 90); //Control Room Door 1
	PrisonButtons[3] = CreateButton(-2037, -191, 992.200012, 270); // Security Room
	PrisonButtons[4] = CreateButton(-2050.5, -205.880004, 985.599975, 0); // Staff Lounge
	PrisonButtons[5] = CreateButton(-2046.599975, -194, 985.700012, 270); // Duty Room
	PrisonButtons[6] = CreateButton(-2092.772949, -193.570007, 979.299987, 0); // Security Room 2
 	PrisonButtons[7] = CreateButton( -2054.699951, -84, 35.7, 270);
 	PrisonButtons[8] = CreateButton(-2058, -146.75, 988.7,270);

 	// Create the required buttons for the interior.
	SFPDButton[0] = CreateButton(-1635.12597656,708.45117188,19996.32812500, 180.0);
	SFPDButton[1] = CreateButton(-1635.18176270,687.56250000,19996.32812500, 180.0);
	SFPDButton[2] = CreateButton(-1636.74023438,687.56250000,19996.32812500, 180.0);
	SFPDButton[3] = CreateButton(-1636.29687500,708.36035156,19996.32812500, 270.0);
	SFPDButton[4] = CreateButton(-1627.03222656,712.46093750,19996.32812500, 0.0);
	SFPDButton[5] = CreateButton(-1627.03295898,712.63281250,19996.32812500, 180.0);
	SFPDButton[6] = CreateButton(-1614.06738281,683.54052734,19990.56250000, 270.0);
	SFPDButton[7] = CreateButton(-1612.91674805,683.60369873,19990.56250000, 0.0);
	SFPDButton[8] = CreateButton(-1632.86157227,712.62530518,19996.32812500, 180.0);
	SFPDButton[9] = CreateButton(-1632.861328125, 712.47210693359, 19996.328125, 0.0);
	
	FBILobbyLeftBTN[0] = CreateButton(297.66613770,-1498.67749023,-44.59006119,0.79565430); //Lobby Button Left
	FBILobbyLeftBTN[1] = CreateButton(297.24850464,-1498.23107910,-44.59006119,180); //Lobby Button Left
	FBILobbyRightBTN[0] = CreateButton(300.05300903,-1521.40747070,-44.59006119,180); //Lobby Button Right
	FBILobbyRightBTN[1] = CreateButton(300.16033936,-1521.84387207,-44.59006119,0); //Lobby Button Right
	FBIPrivateBTN[0] = CreateButton(298.87384033,-1495.87316895,-27.32773209,270); //Private Office Button
	FBIPrivateBTN[1] = CreateButton(300.49453735,-1495.33837891,-27.28091812,180.49487305); //Private Office Button
	
	SANewsPrivate = CreateButton(625.51953125,-3.59961796,1108.50000000,269.99450684); //object(sec_keypad) (2)
	SANewsOffice = CreateButton(614.58581543,17.78320312,1108.55004883,0); //object(sec_keypad) (3)
	SANewsStudio = CreateButton(625.50000000,-13.60000038,1108.50000000,270.00000000); //object(sec_keypad) (1)
	SANewsPrivateOPP = CreateButton(626.13519287,-0.08516422,1108.61315918,0); //object(sec_keypad) (4)
	
	lockdownbutton = CreateButton(-1121.70, 4290.41, 4.88, 180.00);
	print("[Streamer] Dynamic Buttons has been loaded.");
	
	return 1;
}

forward LoadStreamerDynamicObjects();
public LoadStreamerDynamicObjects()
{
    CrateLoad = CreateDynamicObject(964,-2114.1, -1723.5, 11984.5, 0, 0, 337.994, .worldid = 0, .interiorid = 1, .streamdistance = 200); //object(cj_metal_crate) (1)
	IslandGate = CreateDynamicObject(16773,-1083.90002441,4289.70019531,14.10000038,0.00000000,0.00000000,0.00000000, .streamdistance = 400); //object(door_savhangr1) (5)

	new VIPLogo = CreateDynamicObject(19353, 1803.89, -1593.99, 14.05,   0.00, 0.00, 312.26);
	SetDynamicObjectMaterialText(VIPLogo, 0, "{842787}VIP LOUNGE", 90, "Impact", 56, 1, 0xFFFFFFFF, 0, 1);

	new FCTS = CreateDynamicObject(19482, -58.9155, -1118.4808, 7.4781, 0.0000, 0.0000, 160.3858);
	SetDynamicObjectMaterialText(FCTS, 0, "{880000}Flint County Towing Services\n{000000}CALL 1715 OR 2112", 110, "Impact", 40, 1, 0xFF000000, 0, 1);

    new vipsf = CreateObject(19353, -2455.0632, 503.8305, 32.7488, 0.1999, 31.5000, -0.0145);
	SetObjectMaterialText(vipsf, "{FF0000}G{6C6E70}v {FF0000}C{6C6E70} Group {FF38AF}VIP", 0, 130, "Times New Roman", 30,0, -16776961, 0,OBJECT_MATERIAL_TEXT_ALIGN_CENTER);
	
    /* (ongamemodeinit) - LSPD stuff */
	eastlobby1 = CreateDynamicObject(1536,253.14941406,110.59960938,1002.21502686,0.00000000,0.00000000,270.00000000,-1,10,-1,100.0); // East lobby door (moves north)
	eastlobby2 = CreateDynamicObject(1536,253.18457031,107.59960938,1002.21502686,0.00000000,0.00000000,90.00000000,-1,10,-1,100.0); // East lobby door (moves south)
	westlobby1 = CreateDynamicObject(1536,239.71582031,116.09179688,1002.21502686,0.00000000,0.00000000,90.00000000,-1,10,-1,100.0); // West lobby door (moves north)
	westlobby2 = CreateDynamicObject(1536,239.67968750,119.09960938,1002.21502686,0.00000000,0.00000000,269.98901367,-1,10,-1,100.0); // West lobby door (moves south)
	locker1 = CreateDynamicObject(1536,267.29980469,112.56640625,1003.61718750,0.00000000,0.00000000,179.99450684,-1,10,-1,100.0); // Locker door (moves east)
	locker2 = CreateDynamicObject(1536,264.29980469,112.52929688,1003.61718750,0.00000000,0.00000000,0.00000000,-1,10,-1,100.0); // Locker door (moves west)
	cctv1 = CreateDynamicObject(1536,264.44921875,115.79980469,1003.61718750,0.00000000,0.00000000,0.00000000,-1,10,-1,100.0); // CCTV door (moves west)
	cctv2 = CreateDynamicObject(1536,267.46875000,115.83691406,1003.61718750,0.00000000,0.00000000,179.99450684,-1,10,-1,100.0); // CCTV door (moves east)
	chief1 = CreateDynamicObject(1536,229.59960938,119.50000000,1009.21875000,0.00000000,0.00000000,0.00000000,-1,10,-1,100.0); // innermost chief's door
	chief2 = CreateDynamicObject(1536,232.59960938,119.53515625,1009.21875000,0.00000000,0.00000000,179.99450684,-1,10,-1,100.0); // outermost chief's door (both move west)
	
	// New LSPD Interior Doors & Cells
	AkaDoor[0] = CreateDynamicObject(1495,1487.00000000,-1762.42504883,3284.23608398,0.00000000,0.00000000,270.00000000); //object(gen_doorext01) (1)
	AkaDoor[1] = CreateDynamicObject(1495,1483.79003906,-1762.42504883,3284.23608398,0.00000000,0.00000000,270.00000000); //object(gen_doorext01) (2)
	AkaDoor[2] = CreateDynamicObject(1495,1479.85998535,-1758.31994629,3284.23388672,0.00000000,0.00000000,0.00000000); //object(gen_doorext01) (2)
	AkaDoor[3] = CreateDynamicObject(1495,1467.06701660,-1758.31994629,3284.23388672,0.00000000,0.00000000,0.00000000); //object(gen_doorext01) (2)
	AkaCell[0] = CreateDynamicObject(1567,1491.21484375,-1764.90002441,3284.25048828,0.00000000,0.00000000,0.00000000); //object(gen_wardrobe) (2)
	AkaCell[1] = CreateDynamicObject(1567,1494.41210938,-1764.90002441,3284.25048828,0.00000000,0.00000000,0.00000000); //object(gen_wardrobe) (3)
	AkaCell[2] = CreateDynamicObject(1567,1497.61132812,-1764.90002441,3284.25048828,0.00000000,0.00000000,0.00000000); //object(gen_wardrobe) (4)
	AkaCell[3] = CreateDynamicObject(1567,1500.81445312,-1764.90002441,3284.25048828,0.00000000,0.00000000,0.00000000); //object(gen_wardrobe) (6)
	AkaCell[4] = CreateDynamicObject(1567,1500.81994629,-1761.51000977,3284.25048828,0.00000000,0.00000000,0.00000000); //object(gen_wardrobe) (7)
	AkaCell[5] = CreateDynamicObject(1567,1491.22094727,-1761.50000000,3284.25048828,0.00000000,0.00000000,0.00000000); //object(gen_wardrobe) (8)
	AkaCell[6] = CreateDynamicObject(1567,1494.41894531,-1761.51000977,3284.25048828,0.00000000,0.00000000,0.00000000); //object(gen_wardrobe) (9)
	AkaCell[7] = CreateDynamicObject(1567,1497.61999512,-1761.51000977,3284.25048828,0.00000000,0.00000000,0.00000000); //object(gen_wardrobe) (10)

	/* Noose Int Buttons End */
	sasd1A = CreateDynamicObject(1536,2511.65332031,-1697.00976562,561.79223633,0.00000000,0.00000000,0.00000000); //R6
	sasd1B = CreateDynamicObject(1536,2514.67211914,-1696.97485352,561.79223633,0.00000000,0.00000000,180.00000000); //object(gen_doorext15) (2)
 	sasd2A = CreateDynamicObject(1536,2516.87548828,-1697.01525879,561.79223633,0.00000000,0.00000000,0.00000000); //R5
	sasd2B = CreateDynamicObject(1536,2519.89257812,-1696.97509766,561.79223633,0.00000000,0.00000000,179.99450684); //object(gen_doorext15) (4)
	sasd3A = CreateDynamicObject(1536,2522.15600586,-1697.01550293,561.79223633,0.00000000,0.00000000,0.00000000); //R4
	sasd3B = CreateDynamicObject(1536,2525.15893555,-1696.98010254,561.79223633,0.00000000,0.00000000,179.99450684); //object(gen_doorext15) (6)
	sasd4A = CreateDynamicObject(1536,2511.84130859,-1660.08081055,561.79528809,0.00000000,0.00000000,0.00000000); //West
	sasd4B = CreateDynamicObject(1536,2514.81982422,-1660.04650879,561.80004883,0.00000000,0.00000000,180.00000000); //object(gen_doorext15) (1)
	sasd5A = CreateDynamicObject(1536,2522.86059570,-1660.07177734,561.80206299,0.00000000,0.00000000,179.99450684); //East
	sasd5B = CreateDynamicObject(1536,2519.84228516,-1660.10888672,561.80004883,0.00000000,0.00000000,0.00000000); //object(gen_doorext15) (1)
	

	lspddoor1 = CreateDynamicObject(1569, 246.35150146484, 72.547714233398, 1002.640625, 0.000000, 0.000000, 0.000000); //
	lspddoor2 = CreateDynamicObject(1569, 245.03300476074, 72.568511962891, 1002.640625, 0.000000, 0.000000, 0.000000); //

	FBIPrivate[0] = CreateDynamicObject(1536,299.29986572,-1492.82666016,-28.73300552,0.00000000,0.00000000,270.00000000,1324123, .interiorid = 1); //Private Office Door Left
	FBIPrivate[1] = CreateDynamicObject(1536,299.33737183,-1495.83911133,-28.73300552,0.00000000,0.00000000,90.00000000,1324123, .interiorid = 1); //Private Office Door Right
	FBILobbyLeft = CreateDynamicObject(1536,295.40136719,-1498.43457031,-46.13965225,0.00000000,0.00000000,0.00000000,1324123, .interiorid = 1); //Lobby Door Left
	FBILobbyRight = CreateDynamicObject(1536,302.39355469,-1521.62988281,-46.13965225,0.00000000,0.00000000,179.99450684,1324123, .interiorid = 1); //Lobby Door Right


	//SANews Custom Interior
	SANewsStudioA = CreateDynamicObject(1536,625.60937500,-10.80000019,1106.96081543,0.00000000,0.00000000,270.00000000, .interiorid = 1); //object(gen_doorext15) (1)
	SANewsStudioB = CreateDynamicObject(1536,625.64941406,-13.77000046,1106.96081543,0.00000000,0.00000000,89.99450684, .interiorid = 1); //object(gen_doorext15) (2)

    SANewsPrivateA = CreateDynamicObject(1536,625.60937500,-0.55000001,1106.96081543,0.00000000,0.00000000,269.98901367, .interiorid = 1); //object(gen_doorext15) (4)
	SANewsPrivateB = CreateDynamicObject(1536,625.65002441,-3.54999995,1106.96081543,0.00000000,0.00000000,89.99450684, .interiorid = 1); //object(gen_doorext15) (4)

	SANewsOfficeA = CreateDynamicObject(1536,614.66998291,17.82812500,1106.98425293,0.00000000,0.00000000,0.00000000, .interiorid = 1); //object(gen_doorext15) (3)
	SANewsOfficeB = CreateDynamicObject(1536,617.69000244,17.86899948,1106.98425293,0.00000000,0.00000000,179.99450684, .interiorid = 1); //object(gen_doorext15) (5)

	
	entrancedoor = CreateDynamicObject(2951,-766.27539062,2536.58691406,10019.5,0.98876953,0.00000000,85.49011230); //object(a51_labdoor) (1)

	blastdoor[0] = CreateDynamicObject(2927,-764.11816406,2568.81445312,10021.5,0.70861816,0.49438477,86.46789551); //object(a51_blastdoorr) (5)
	blastdoor[1] = CreateDynamicObject(2927,-746.02636719,2535.19433594,10021.5,359.74731445,0.00000000,265.24291992); //object(a51_blastdoorr) (1)
	cage = CreateDynamicObject(2930,-773.52050781,2545.62109375,10022.29492188,359.73632812,359.23095703,354.73205566); //object(chinatgate) (1)
	blastdoor[2] = CreateDynamicObject(2927,-765.26171875,2552.31347656,10021.5,0.00000000,0.00000000,87.44567871); //object(a51_blastdoorr) (5)

	ncontrolroomobjects[0] = CreateDynamicObject(3037,-760.61718750,2544.21679688,10024.92480469,0.00000000,0.00000000,355.98999023); //object(warehouse_door2b) (1)
	ncontrolroomobjects[1] = CreateDynamicObject(3037,-759.52246094,2560.88574219,10024.79785156,0.00000000,0.00000000,355.98999023); //object(warehouse_door2b) (2)
	ncontrolroomobjects[2] = CreateDynamicObject(3037,-755.53906250,2538.61035156,10025.02636719,0.00000000,0.00000000,85.99548340); //object(warehouse_door2b) (3)

	CellGates[1] = CreateDynamicObject(10252,-2075.55273438,-191.64550781,992.19836426,0.00000000,0.00000000,0.00000000, .interiorid = 10); //object(china_town_gateb)(3)
 	CellGates[0] = CreateDynamicObject(10252,-2080.28613281,-193.01757812,992.19836426,0.00000000,0.00000000,179.99450684, .interiorid = 10); //object(china_town_gateb)(3)
    CellGates[2] = CreateDynamicObject(10252,-2068.00195312,-193.01757812,992.19836426,0.00000000,0.00000000,179.99450684, .interiorid = 10); //object(china_town_gateb)(3)
    CellGates[3] = CreateDynamicObject(10252,-2063.56738281,-191.64550781,992.19836426,0.00000000,0.00000000,0.00000000, .interiorid = 10); //object(china_town_gateb)(3)
    CellGates[4] = CreateDynamicObject(10252,-2055.99511719,-193.01757812,992.19836426,0.00000000,0.00000000,179.99450684, .interiorid = 10); //object(china_town_gateb)(3)
    CellGates[5] = CreateDynamicObject(10252,-2052.22460938,-191.64550781,992.19836426,0.00000000,0.00000000,0.00000000, .interiorid = 10); //object(china_town_gateb)(3)
    CellGates[11] = CreateDynamicObject(10252,-2084.99902344,-207.03710938,992.19836426,0.00000000,0.00000000,179.99450684, .interiorid = 10); //object(china_town_gateb)(3)
    CellGates[10] = CreateDynamicObject(10252,-2081.52539062,-205.66894531,992.19836426,0.00000000,0.00000000,0.00000000, .interiorid = 10); //object(china_town_gateb)(3)
    CellGates[8] = CreateDynamicObject(10252,-2069.53710938,-205.66894531,992.19836426,0.00000000,0.00000000,0.00000000, .interiorid = 10); //object(china_town_gateb)(3)
    CellGates[9] = CreateDynamicObject(10252,-2074.00585938,-207.03710938,992.19836426,0.00000000,0.00000000,179.99450684, .interiorid = 10); //object(china_town_gateb)(3)
    CellGates[6] = CreateDynamicObject(10252,-2057.59765625,-205.66894531,992.19836426,0.00000000,0.00000000,0.00000000, .interiorid = 10); //object(china_town_gateb)(3)
    CellGates[7] = CreateDynamicObject(10252,-2061.96289062,-207.03710938,992.19836426,0.00000000,0.00000000,179.99450684, .interiorid = 10); //object(china_town_gateb)(3)
    BlastDoors[1] = CreateDynamicObject(2952,-2088.76562500,-211.33984375,994.66918945,0.00000000,0.00000000,0.00000000); //object(kmb_gimpdoor)(1)
    BlastDoors[6] = CreateDynamicObject(2952,-2088.76562500,-209.21093750,994.66918945,0.00000000,0.00000000,0.00000000); //object(kmb_gimpdoor)(2)
    BlastDoors[0] = CreateDynamicObject(2952,-2095.10156250,-203.91210938,994.66918945,0.00000000,0.00000000,90.00000000); //prisongate1
    BlastDoors[2] = CreateDynamicObject(2952,-2048.29296875,-205.54394531,990.45825195,0.00000000,0.00000000,0.00000000); //object(kmb_gimpdoor)(1)
    BlastDoors[7] = CreateDynamicObject(2952,-2048.29296875,-207.67382812,990.45825195,0.00000000,0.00000000,0.00000000); //object(kmb_gimpdoor)(1)
    BlastDoors[3] = CreateDynamicObject(2952,-2041.79785156,-195.64550781,990.45825195,0.00000000,0.00000000,179.99450684); //object(kmb_gimpdoor)(1)
    BlastDoors[8] = CreateDynamicObject(2952,-2041.79687500,-197.77246094,990.45825195,0.00000000,0.00000000,179.99450684); //object(kmb_gimpdoor)(1)
    BlastDoors[4] = CreateDynamicObject(2952,-2041.78613281,-211.28515625,984.02539062,0.00000000,0.00000000,0.00000000); //object(kmb_gimpdoor)(1)
    BlastDoors[9] = CreateDynamicObject(2952,-2041.78808594,-209.15917969,984.02539062,0.00000000,0.00000000,0.00000000); //object(kmb_gimpdoor)(1)
    BlastDoors[5] = CreateDynamicObject(2952,-2053.92187500,-205.46679688,977.75732422,0.00000000,0.00000000,0.00000000); //object(kmb_gimpdoor)(1)
    BlastDoors[10] = CreateDynamicObject(2952,-2053.92187500,-207.59570312,977.75732422,0.00000000,0.00000000,0.00000000); //object(kmb_gimpdoor)(1)
    BlastDoors[11] = CreateDynamicObject(2952,-2050.50097656,-205.82617188,984.02539062,0.00000000,0.00000000,90.00000000); //object(kmb_gimpdoor)(1)
    BlastDoors[16] = CreateDynamicObject(1569, -2057.9, -144.905, 987.24 ,0, 0.00000000, 270.0);

	SFPDObject[0] =	CreateDynamicObject(976,-1636.02539062,701.49707031,19994.54101562,0.00000000,0.00000000,90.00000000, .interiorid = 3); //object(phils_compnd_gate) (1)
	SFPDObject[1] =	CreateDynamicObject(976,-1635.99414062,696.53320312,19994.55078125,0.00000000,0.00000000,270.00000000, .interiorid = 3); //object(phils_compnd_gate) (2)
	SFPDObject[2] =	CreateDynamicObject(1569,-1625.28808594,712.56250000,19994.85937500,0.00000000,0.00000000,179.99450684, .interiorid = 3); //object(adam_v_door) (2)
	SFPDObject[3] =	CreateDynamicObject(1569,-1613.92871094,681.78125000,19989.05468750,0.00000000,0.00000000,90.00000000, .interiorid = 3); //object(adam_v_door) (4)
	SFPDObject[4] =	CreateDynamicObject(1569,-1634.79492188,712.56250000,19994.85937500,0.00000000,0.00000000,0.00000000, .interiorid = 3); //object(adam_v_door) (7)

	// Gym dynamic objects (bmx parkour)
	BikeParkourObjects[0] = CreateDynamicObject(2669,2848.1015625,-2243.1552734,99.0883789,0.0000000,0.0000000,90.0000000, .worldid = 5, .streamdistance = 300); //object(cj_chris_crate) (1)
	//BikeParkourObjects[1] = CreateDynamicObject(1381,2847.4970703,-2243.1191406,4901.4877930,0.0000000,0.0000000,69.7851562, .worldid = -1, .streamdistance = 300); //object(magnocrane_04) (1)

    MoveDynamicObject(BikeParkourObjects[0], 2848.1015625, -2238.1552734, 99.0883789, 0.5, 0.0, 0.0, 90.0);
	//MoveDynamicObject(BikeParkourObjects[1], 2847.4970703, -2243.1191406, 4901.4877930, 0.5, 0.0, 0.0, 69.7851562);
	
	gFerrisWheel = CreateObject( 18877, gFerrisOrigin[0], gFerrisOrigin[1], gFerrisOrigin[2],
	  							 0.0, 0.0, -270.0, 300.0 );
	CreateObject( 18878, gFerrisOrigin[0], gFerrisOrigin[1], gFerrisOrigin[2],
	  							 0.0, 0.0, -270.0, 300.0 );
 	for(new x;x<10;x++)
    {
        gFerrisCages[x] = CreateObject( 19316, gFerrisOrigin[0], gFerrisOrigin[1], gFerrisOrigin[2],
	  							 0.0, 0.0, -270.0, 300.0 );

        AttachObjectToObject( gFerrisCages[x], gFerrisWheel,
							  gFerrisCageOffsets[x][0],
							  gFerrisCageOffsets[x][1],
	  						  gFerrisCageOffsets[x][2],
							  0.0, 0.0, -270.0, 0 );
	}
	
	print("[Streamer] Dynamic Objects has been loaded.");
	
	return 1;
}
