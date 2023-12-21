#include <a_samp>
#include <YSI\y_hooks>

#include "./Module/Feature/Food/Food_main.pwn"

stock TaiFood()
{
	LoadFood++;
 	return 1;
}

stock TaiLaiFood()
{
	LoadFood--;
 	return 1;
}

stock LoadFoods()
{
	new string2[128], string[2560], string1[60], string3[128];
	for(new i = 0; i < MAX_FOOD; i++)
	{
		format(string2, sizeof(string2), LOAD_FOOD, i);
		if(dini_Exists(string2))
		{
			FoodInfo[i][IDObjectFood] 	= dini_Int(string2, "IDObjectFood");

			FoodInfo[i][ActorFood] = dini_Int(string3, "ActorFood");
			  	
			for(new m = 0; m < 4; m++)
			{
				format(string1,sizeof(string1), "PosFoods%d", m);
				FoodInfo[i][PosFood][m] 	= dini_Float(string2, string1);
			}
			for(new n = 0; n < 4; n++)
			{
				format(string1,sizeof(string1), "PosActors%d", n);
				FoodInfo[i][PosActor][n] 	= dini_Float(string2, string1);
			}
			FoodInfo[i][IDObjectFood] 	= CreateDynamicObject(1340, FoodInfo[i][PosFood][0], FoodInfo[i][PosFood][1], FoodInfo[i][PosFood][2], 0, 0, FoodInfo[i][PosFood][3]);
			FoodInfo[i][ActorFood] = CreateActor(155, FoodInfo[i][PosActor][0], FoodInfo[i][PosActor][1], FoodInfo[i][PosActor][2], FoodInfo[i][PosActor][3]);
			TaiFood();
			format(string, sizeof(string), "{3d4fc8}[FOOD GVRP.VN]{FFFFFF}\n---Nhan {00ffff}Y{FFFFFF} de mua thuc an---\n(ID: {00ffff}%d{FFFFFF}).", i);
			LabelFood[i] = CreateDynamic3DTextLabel(string, -1, FoodInfo[i][PosFood][0], FoodInfo[i][PosFood][1], FoodInfo[i][PosFood][2]+0.5,10.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID,0,0,-1,-1, 100.0);
	  	}
	}
	return 1;
}

stock SaveFoodss(i)
{
	new string2[128], string1[60], string3[128];
	format(string2, sizeof(string2), LOAD_FOOD, i);
	if(dini_Exists(string2))
	{
	    dini_IntSet(string2, "IDObjectFood", FoodInfo[i][IDObjectFood]);
	    dini_IntSet(string3, "ActorFood", FoodInfo[i][ActorFood]);
	  	for(new m = 0; m < 4; m++)
	    {
	    	format(string1,sizeof(string1), "PosFoods%d", m);
	    	FoodInfo[i][PosFood][m] = dini_Float(string2, string1);
	  	}
	  	for(new n = 0; n < 4; n++)
	    {
	    	format(string1,sizeof(string1), "PosActors%d", n);
	    	FoodInfo[i][PosActor][n] = dini_Float(string2, string1);
	  	}
  	}
	return 1;
}

stock SaveFoods()
{
	for(new i = 0; i < MAX_FOOD; i++)
	{
		SaveFoodss(i);
	}
	return 1;
}

CMD:mouse(playerid, params[]) {
	SelectTextDraw(playerid, 0x00FF00FF);
	return 1;
}