global function WeaponBanChecker_Init



void function WeaponBanChecker_Init()
{

	thread WeaponBanChecker()

}


void function WeaponBanChecker()
{
	string banListString = GetConVarString("banList")
	string bannedWeaponWarning = GetConVarString("bannedWeaponWarning")

	array<string> banListArray =  split( banListString, "," )

	while (true){
		float interval = GetConVarFloat("weaponcheckInterval")
		if(interval > 0.0)
			wait interval
		else
			WaitFrame()



			

	foreach (entity player in GetPlayerArray())
	{	
		if(player.GetMainWeapons().len()>0){
				print(banListArray.find(player.GetMainWeapons()[0].GetWeaponClassName()))

			if(banListArray.find(player.GetMainWeapons()[0].GetWeaponClassName())!=-1){
			SendHudMessage( player, bannedWeaponWarning, -1, 0.4, 255, 0, 0, 0, 0.15, 4, 0.15 )
			changeWeapon(player,player.GetMainWeapons()[0].GetWeaponClassName())

		}

		
		}

		}
	}
}



void function changeWeapon( entity player, string takingWeapon)
{
	string defaultWeapon = GetConVarString("defaultWeapon")
	player.TakeWeaponNow( takingWeapon )

	try 
	{
		player.GiveWeapon( defaultWeapon )
		player.SetActiveWeaponByName( defaultWeapon )
		string playername = player.GetPlayerName();
	} catch(exception)
	{
		print(defaultWeapon + " is not a valid weapon.");
	}

	}

