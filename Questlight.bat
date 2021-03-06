@echo off
setlocal enabledelayedexpansion
color 6f
cd %0
title Questlight 0.0.5 ALPHA
echo Welcome to Questlight!
echo/
echo Made by N3, version 0.0.5 ALPHA
echo Copyright 2018 N3
echo/
echo Today's date is: %DATE:~-4%%DATE:~4,2%%DATE:~7,2%%TIME%
echo/
echo This is an ALPHA build. This means that they're most likley quite a few bugs! Less than 5 percent of the game has currently been added.
pause
goto :savedetector

:savedetector
	if exist saves/1.txt (
		goto savedetected1
	) else (
		goto name
	)
	:savedetected1
		%save%< saves/1.txt (
		set /p Player1=
		set /p savelevel=
		set /p savedate=
		)
		set /P c=Save Detected! Would you like to use this save?[Y/N] Name: %Player1% Level: %savelevel% Last saved: %savedate%
		if /I "%c%" EQU "Y" goto %savelevel%
		if /I "%c%" EQU "N" goto name
		rem TODO: Add multi-save slot functionality
		
	:name
	mkdir saves
	cd saves
	type nul >1.txt
	cd %0
	set /P Player1= What is your name? 
	goto :confirmName
		:confirmName
			set /P c=Your name is %Player1%, is this correct?[Y/N] 
			if /I "%c%" EQU "Y" goto :choice
			if /I "%c%" EQU "N" goto :name
			goto :confirmName

				:choice
					set savelevel=choice
					set /P c=You wake up in a grassy plains area. You see a house, a forest, and a cave. Where do you go first?[House/Forest/Cave] 
					if /I "%c%" EQU "House" goto :house1
					if /I "%c%" EQU "Forest" goto :forest1
					if /I "%c%" EQU "Cave" goto :cave1
					goto :choice

					:house1
						set savelevel=house1
						set savedate=%DATE:~-4%%DATE:~4,2%%DATE:~7,2%%TIME%
						(
						echo %Player1%
						echo %savelevel%
						echo %savedate%
						) > saves/1.txt
						set /P c=You go to the house. Inside, you find some food, a broom, and someone sleeping. What do you do?[Food/Broom/Wake] 
						if /I "%c%" EQU "Food" goto :eat1Texture
						if /I "%c%" EQU "Broom" goto :takeWeaponBroom1Texture
						if /I "%c%" EQU "Wake" goto :humanFight1
						goto :house1
							:eat1Texture
								%texture%< textures/people/personInHouse1/wakeUp.txt (
								set /p var1=
								set /p var2=
								set /p var3=
								set /p var4=
								set /p var5=
								set /p var6=
								set /p var7=
								set /p var8=
								set /p var9=
								set /p var10=
								set /p var11=
								set /p var12=
								set /p var13=
								set /p var14=
								)
								echo var1: %var1%
								echo var2: %var2%
								echo var3: %var3%
								echo var4: %var4%
								echo var5: %var5%
								echo var6: %var6%
								echo var7: %var7%
								echo var8: %var8%
								echo var9: %var9%
								echo var10: %var10%
								echo var11: %var11%
								echo var12: %var12%
								echo var13: %var13%
								echo var14: %var14%
								goto eat1
									:eat1
										set savelevel=eat1
										set savedate=%DATE:~-4%%DATE:~4,2%%DATE:~7,2%%TIME%
										(
										echo %Player1%
										echo %savelevel%
										echo %savedate%
										) > saves/1.txt
										set savelevel=eat1
										set /P c=You eat the food lying on the table. As you eat it, the snores of the man in the bed get quieter and quieter. It seems like he is waking up. What do you do?[Run/Stay] 
										if /I "%c%" EQU "Run" goto :run1
										if /I "%c%" EQU "Stay" goto :humanFight1
										goto :eat1
											:run1
												set savelevel=run1
												set /P c=You run out of the house into the meadow with some food. You see a forest, a cave, the house you went to, and a rabbit. What do you do?[Forest/Cave/Hunt] 
												if /I "%c%" EQU "Hunt" goto :rabbitFight1Texture
												if /I "%c%" EQU "Cave" goto :cave2:
												if /I "%c%" EQU "Forest" goto :forest2:
												goto :run1
													:rabbitFight1Texture
														%texture%< textures/animals/rabbit/suprised.txt (
														set /p var1=
														set /p var2=
														set /p var3=
														set /p var4=
														set /p var5=
														set /p var6=
														set /p var7=
														set /p var8=
														set /p var9=
														set /p var10=
														set /p var11=
														set /p var12=
														set /p var13=
														set /p var14=
														set /p var15=
														set /p var16=
														set /p var17=
														set /p var18=
														set /p var19=
														set /p var20=
														)
														echo var1: %var1%
														echo var2: %var2%
														echo var3: %var3%
														echo var4: %var4%
														echo var5: %var5%
														echo var6: %var6%
														echo var7: %var7%
														echo var8: %var8%
														echo var9: %var9%
														echo var10: %var10%
														echo var11: %var11%
														echo var12: %var12%
														echo var13: %var13%
														echo var14: %var14%
														echo var15: %var15%
														echo var16: %var16%
														echo var17: %var17%
														echo var18: %var18%
														echo var19: %var19%
														echo var20: %var20%
														echo		HP  [][]-  SUP      
														goto :rabbitFight1
															:rabbitFight1
																set savelevel=rabbitFight1
																set /P c=You sneak up on the rabbit. You attack it, doing 10 damage. What do you do now?[Attack/Defend] %Player1% HP 100 
																if /I "%c%" EQU "Attack" goto :rabbitAttack1Texture
																if /I "%c%" EQU "Defend" goto :rabbitDefend1Texture
																goto :rabbitFight1
																	:rabbitAttack1Texture
																		echo           %var1%
																		echo           %var2%
																		echo           %var3%
																		echo           %var4%
																		echo           %var5%
																		echo           %var6%
																		echo           %var7%
																		echo           %var8%
																		echo           %var9%
																		echo           %var10%
																		echo           %var11%
																		echo           %var12%
																		echo           %var13%
																		echo           %var14%
																		echo           %var15%
																		echo           %var16%
																		echo           %var17%
																		echo           %var18%
																		echo           %var19%
																		echo           %var20%
																		echo		HP  [][]-  SUP DODGED!     
																		goto :rabbitAttack1
																			:rabbitAttack1
																				set /P c=You attack again, but the rabbit dodges. What now?[Attack/Defend] %Player1% HP 100% 
																				if /I "%c%" EQU "Attack" goto :rabbitAttack1Texture
																				if /I "%c%" EQU "Defend" goto :rabbitDefend1Texture
																				goto :rabbitAttack1
																					:rabbitDefend1Texture
																						%texture%< textures/animals/rabbit/confused.txt (
																						set /p var1=
																						set /p var2=
																						set /p var3=
																						set /p var4=
																						set /p var5=
																						set /p var6=
																						set /p var7=
																						set /p var8=
																						set /p var9=
																						set /p var10=
																						set /p var11=
																						set /p var12=
																						set /p var13=
																						set /p var14=
																						set /p var15=
																						set /p var16=
																						set /p var17=
																						set /p var18=
																						set /p var19=
																						set /p var20=
																						)
																						echo var1: %var1%
																						echo var2: %var2%
																						echo var3: %var3%
																						echo var4: %var4%
																						echo var5: %var5%
																						echo var6: %var6%
																						echo var7: %var7%
																						echo var8: %var8%
																						echo var9: %var9%
																						echo var10: %var10%
																						echo var11: %var11%
																						echo var12: %var12%
																						echo var13: %var13%
																						echo var14: %var14%
																						echo var15: %var15%
																						echo var16: %var16%
																						echo var17: %var17%
																						echo var18: %var18%
																						echo var19: %var19%
																						echo var20: %var20%
																						goto rabbitDefend1
																							:rabbitDefend1
																								set /P c=You defend, but the rabbit doesn't attack. Instead, the rabbit is now confused. What now?[Attack/Defend]  %Player1% HP 100% 
																								if /I "%c%" EQU "Attack" goto :rabbitAttack2Texture
																								if /I "%c%" EQU "Defend" goto :rabbitDefend1Texture
																								goto :rabbitDefend1
																									:rabbitAttack2Texture
																										echo var1: %var1%
																										echo var2: %var2%
																										echo var3: %var3%
																										echo var4: %var4%
																										echo var5: %var5%
																										echo var6: %var6%
																										echo var7: %var7%
																										echo var8: %var8%
																										echo var9: %var9%
																										echo var10: %var10%
																										echo var11: %var11%
																										echo var12: %var12%
																										echo var13: %var13%
																										echo var14: %var14%
																										echo var15: %var15%
																										echo var16: %var16%
																										echo var17: %var17%
																										echo var18: %var18%
																										echo var19: %var19%
																										echo var20: %var20%
																										echo		HP  []--  CON
																										goto rabbitAttack2
																											:rabbitAttack2
																												set /P c=You attack, doing 12 damage. The rabbit is still confused![Attack/Defend]  %Player1% HP 100%
																												if /I "%c%" EQU "Attack" goto :rabbitAttack3Texture
																												if /I "%c%" EQU "Defend" goto :rabbitDefend3
																												goto :rabbitAttack2
																													:rabbitAttack3Texture
																														%texture%< textures/animals/rabbit/dead.txt (
																														set /p var1=
																														set /p var2=
																														set /p var3=
																														set /p var4=
																														set /p var5=
																														set /p var6=
																														set /p var7=
																														set /p var8=
																														set /p var9=
																														set /p var10=
																														set /p var11=
																														set /p var12=
																														set /p var13=
																														set /p var14=
																														set /p var15=
																														set /p var16=
																														set /p var17=
																														set /p var18=
																														set /p var19=
																														set /p var20=
																														)
																														echo var1: %var1%
																														echo var2: %var2%
																														echo var3: %var3%
																														echo var4: %var4%
																														echo var5: %var5%
																														echo var6: %var6%
																														echo var7: %var7%
																														echo var8: %var8%
																														echo var9: %var9%
																														echo var10: %var10%
																														echo var11: %var11%
																														echo var12: %var12%
																														echo var13: %var13%
																														echo var14: %var14%
																														echo var15: %var15%
																														echo var16: %var16%
																														echo var17: %var17%
																														echo var18: %var18%
																														echo var19: %var19%
																														echo var20: %var20%
																														echo		HP  ---  DEAD
																														goto rabbitAttack3
																															:rabbitAttack3
																																set savelevel=rabbitattack3
																																set /P c=You killed the rabbit! In your inventory is now: Assorted Fruits, and Raw Rabbit. What now?[Forest/Cave]
																																if /I "%c%" EQU "Forest" goto :forest2
																																if /I "%c%" EQU "Cave" goto :cave2
																																goto :rabbitAttack3
																																	:forest2
																																		set savelevel=forest2
																																		set /P c=As you go into the forest, the sun begins to set. You see quite a few sturdy sticks that could make a shelter in the woods. You also see some very delicious looking berries. What should you do now?[Shelter/Gather] 
																																		if /I "%c%" EQU "Shelter" goto :prebuild1
																																		if /I "%c%" EQU "Gather" goto :gather2
																																		goto :forest2
																																			:prebuild1
																																				set /P Shelter1Name= What would you like to name it?
																																				goto :build1Texture
																																					:build1Texture
																																						%texture%< textures/buildings/stickpile.txt (
																																						set /p var1=
																																						set /p var2=
																																						set /p var3=
																																						set /p var4=
																																						set /p var5=
																																						set /p var6=
																																						set /p var7=
																																						set /p var8=
																																						)
																																						echo var1: %var1%
																																						echo var2: %var2%
																																						echo var3: %var3%
																																						echo var4: %var4%
																																						echo var5: %var5%
																																						echo var6: %var6%
																																						echo var7: %var7%
																																						echo var8: %var8%
																																						goto build1
																																							:build1
																																								set savelevel=build1
																																								set /P c=You make a poor quality shelter, which you named %Shelter1Name%, that should last you for the night. You could also make a fire pit next to the makeshift shelter. What do you want to do?[Sleep/Fire/Specs]
																																								if /I "%c%" EQU "Specs" goto :shelterSpecs1
																																								if /I "%c%" EQU "Fire" goto :build2texture
																																								if /I "%c%" EQU "Sleep" goto :sleep1
																																								goto :build1
																																									:build2texture
																																										%texture%< textures/buildings/stickpileWithFire.txt (
																																										set /p var1=
																																										set /p var2=
																																										set /p var3=
																																										set /p var4=
																																										set /p var5=
																																										set /p var6=
																																										set /p var7=
																																										set /p var8=
																																										)
																																										echo var1: %var1%
																																										echo var2: %var2%
																																										echo var3: %var3%
																																										echo var4: %var4%
																																										echo var5: %var5%
																																										echo var6: %var6%
																																										echo var7: %var7%
																																										echo var8: %var8%
																																										goto :build2
																																											:build2
																																												set savelevel=build2
																																												set /P c=You built a fire pit, and light a fire. Congrats! Your building skill is now level 1! You can now build Decent-Quality buildings and upgrades! [Stats: (Skills: Building: Level 1: Amateur Stickpiler []---------)] What do you do now? [Sleep] 
																																												if /I "%c%" EQU "Sleep" goto :sleep2
																																												goto :build2
																																													:sleep2
																																														set /P c=You go to sleep in %Shelter1Name%. The fire feels warm as you go to sleep. When you wake up, the fire is still there, but very dim. Around you you see a stick, the berries you saw yesterday, and %Shelter1Name%. [Stick/Berries/Upgrade] 
																																														if /I "%c%" EQU "Stick" goto :stick1
																																														if /I "%c%" EQU "Berries" goto :gather5
																																														if /I "%c%" EQU "Upgrade" goto :upgrade2
																																														goto :sleep2
																																															:stick1
																																																set /P c=You grab the stick. However, it appears that a string is attached to the stick. [Run/Stay]
																																																if /I "%c%" EQU "Run" goto :run3Texture
																																																if /I "%c%" EQU "Stay" goto :stay1
																																																goto :stick1
																																																	:run3Texture
																																																		%texture%< textures/buildings/community1.txt (
																																																		set /p var1=
																																																		set /p var2=
																																																		set /p var3=
																																																		set /p var4=
																																																		set /p var5=
																																																		set /p var6=
																																																		set /p var7=
																																																		set /p var8=
																																																		)
																																																		echo var1: %var1%
																																																		echo var2: %var2%
																																																		echo var3: %var3%
																																																		echo var4: %var4%
																																																		echo var5: %var5%
																																																		echo var6: %var6%
																																																		echo var7: %var7%
																																																		echo var8: %var8%
																																																		goto :run3
																																																			:run3
																																																				set /P c=You decided to run back to %Shelter1Name%. Once there, you find that there is a new shelter next to yours. What do you do? [Search/Destroy/Nothing/Leave Area]
																																																				if /I "%c%" EQU "Search" goto :search1
																																																				if /I "%c%" EQU "Destroy" goto :demolish1
																																																				if /I "%c%" EQU "Nothing" goto :coexist1
																																																				if /I "%c%" EQU "Leave Area" goto :confirmMove1
																																																					:demolish1
																																																						set /P c=You destroyed the house next to yours, apparently named Bokar's Home. As you begin to go back to your house, a troll comes out of the forest. [Run/Fight]
																																																						if /I "%c%" EQU "Run" goto :run4
																																																						if /I "%c%" EQU "Fight" goto :bokarFight1
																																																						goto :demolish1
																																																							:run4
																																																								echo %Shelter1Name% was destroyed...
																																																								pause
																																																								goto :homeless1
																																																									:homeless1
																																																										set /P c=Congrats! Because you were such a jerk (and coward), your hard work on %Shelter1Name% was obliterated by Bokar the Troll! You are now homeless! [Cry/Explore]
																																																										if /I "%c%" EQU "Cry" goto :cry1
																																																										if /I "%c%" EQU "Explore" goto :explore1Texture
																																																										goto :homeless1
																																																											:explore1Texture
																																																												%texture%< textures/nature/biomes/biomes1.txt (
																																																												set /p var1=
																																																												set /p var2=
																																																												set /p var3=
																																																												set /p var4=
																																																												set /p var5=
																																																												set /p var6=
																																																												set /p var7=
																																																												set /p var8=
																																																												)
																																																												echo var1: %var1%
																																																												echo var2: %var2%
																																																												echo var3: %var3%
																																																												echo var4: %var4%
																																																												echo var5: %var5%
																																																												echo var6: %var6%
																																																												echo var7: %var7%
																																																												echo var8: %var8%
																																																												goto :explore1
																																																													:explore1
																																																														set /P c=You decided to run as far away as possible. Soon, you came upon a mountain. [Build/Explore]
																																																														if /I "%c%" EQU "Build" goto :build3Texture
																																																														if /I "%c%" EQU "Explore" goto :explore5
																																																														goto :explore1
																																																															:build3Texture
																																																																%texture%< textures/buildings/mountainHut.txt (
																																																																set /p var1=
																																																																set /p var2=
																																																																set /p var3=
																																																																set /p var4=
																																																																set /p var5=
																																																																set /p var6=
																																																																set /p var7=
																																																																)
																																																																echo var1: %var1%
																																																																echo var2: %var2%
																																																																echo var3: %var3%
																																																																echo var4: %var4%
																																																																echo var5: %var5%
																																																																echo var6: %var6%
																																																																echo var7: %var7%
																																																																goto :build3
																																																																	:build3
																																																																		set /P Shelter2Name=You built a little shelter on the mountain. What will you name it?
																																																																		goto :confirmName2
																																																																			:confirmName2
																																																																				set /P c=So you want to name it %Shelter2Name%? [Y/N]
																																																																				if /I "%c%" EQU "Y" goto :bokar1
																																																																				if /I "%c%" EQU "N" goto :build3
																																																																				goto :confirmName2
																																																																					:bokar1
																																																																						set /P c=The troll you saw destroy your %Shelter1Name% is back, and he is angry! [Fight/Talk]
																																																																						if /I "%c%" EQU "Fight" goto :bokarFight2
																																																																						if /I "%c%" EQU "Talk" goto :bokarTalk1
																																																																						goto :bokar1
																																																																							:bokarFight2Texture
																																																																								%texture%< textures/people/NPCs/bokar/angry.txt (
																																																																								set /p var1=
																																																																								set /p var2=
																																																																								set /p var3=
																																																																								set /p var4=
																																																																								set /p var5=
																																																																								set /p var6=
																																																																								set /p var7=
																																																																								set /p var8=
																																																																								set /p var9=
																																																																								set /p var10=
																																																																								set /p var11=
																																																																								set /p var12=
																																																																								set /p var13=
																																																																								set /p var14=
																																																																								set /p var15=
																																																																								set /p var16=
																																																																								set /p var17=
																																																																								set /p var18=
																																																																								set /p var19=
																																																																								)
																																																																								echo var1: %var1%
																																																																								echo var2: %var2%
																																																																								echo var3: %var3%
																																																																								echo var4: %var4%
																																																																								echo var5: %var5%
																																																																								echo var6: %var6%
																																																																								echo var7: %var7%
																																																																								echo var8: %var8%
																																																																								echo var9: %var9%
																																																																								echo var10: %var10%
																																																																								echo var11: %var11%
																																																																								echo var12: %var12%
																																																																								echo var13: %var13%
																																																																								echo var14: %var14%
																																																																								echo var15: %var15%
																																																																								echo var16: %var16%
																																																																								echo var17: %var17%
																																																																								echo var18: %var18%
																																																																								echo var19: %var19%
																																																																								echo HP [][][][][][][] ANG
																																																																								goto :bokarFight2
																																																																									:bokarFight2
																																																																										set /P c=He yells "You destroyed my home, so I will destroy you!" %Player1%'s HP: 100 [Attack/Defend] 
																																																																										if /I "%c%" EQU "attack" goto :bokarAttack1Texture
																																																																										if /I "%c%" EQU "Defend" goto :bokarDefend1Texture
																																																																										goto :bokarFight2
																																																																											:bokarAttack1Texture
																																																																												%texture%< textures/people/NPCs/bokar/veryAngry.txt (
																																																																												set /p var1=
																																																																												set /p var2=
																																																																												set /p var3=
																																																																												set /p var4=
																																																																												set /p var5=
																																																																												set /p var6=
																																																																												set /p var7=
																																																																												set /p var8=
																																																																												set /p var9=
																																																																												set /p var10=
																																																																												set /p var11=
																																																																												set /p var12=
																																																																												set /p var13=
																																																																												set /p var14=
																																																																												set /p var15=
																																																																												set /p var16=
																																																																												set /p var17=
																																																																												set /p var18=
																																																																												set /p var19=
																																																																												)
																																																																												echo var1: %var1%
																																																																												echo var2: %var2%
																																																																												echo var3: %var3%
																																																																												echo var4: %var4%
																																																																												echo var5: %var5%
																																																																												echo var6: %var6%
																																																																												echo var7: %var7%
																																																																												echo var8: %var8%
																																																																												echo var9: %var9%
																																																																												echo var10: %var10%
																																																																												echo var11: %var11%
																																																																												echo var12: %var12%
																																																																												echo var13: %var13%
																																																																												echo var14: %var14%
																																																																												echo var15: %var15%
																																																																												echo var16: %var16%
																																																																												echo var17: %var17%
																																																																												echo var18: %var18%
																																																																												echo var19: %var19%
																																																																												echo HP [][][][][][]- V.ANG
																																																																												goto :bokarAttack1
																																																																													:bokarAttack1
																																																																														set /P c=You attacked, dealing 10 damage, and making him very angry. Fire erupts around him, dealing 13 damage. %Player1%'s HP: 87 [Attack/Defend]
																																																																														if /I "%c%" EQU "Attack" goto :bokarAttack2Texture
																																																																														if /I "%c%" EQU "Defend" goto :bokarDefend2Texture
																																																																														goto :bokarAttack1
																																																																															:bokarAttack2Texture
																																																																																%texture%< textures/people/NPCs/bokar/extremlyAngry.txt (
																																																																																set /p var1=
																																																																																set /p var2=
																																																																																set /p var3=
																																																																																set /p var4=
																																																																																set /p var5=
																																																																																set /p var6=
																																																																																set /p var7=
																																																																																set /p var8=
																																																																																set /p var9=
																																																																																set /p var10=
																																																																																set /p var11=
																																																																																set /p var12=
																																																																																set /p var13=
																																																																																set /p var14=
																																																																																set /p var15=
																																																																																set /p var16=
																																																																																set /p var17=
																																																																																set /p var18=
																																																																																set /p var19=
																																																																																)
																																																																																echo var1: %var1%
																																																																																echo var2: %var2%
																																																																																echo var3: %var3%
																																																																																echo var4: %var4%
																																																																																echo var5: %var5%
																																																																																echo var6: %var6%
																																																																																echo var7: %var7%
																																																																																echo var8: %var8%
																																																																																echo var9: %var9%
																																																																																echo var10: %var10%
																																																																																echo var11: %var11%
																																																																																echo var12: %var12%
																																																																																echo var13: %var13%
																																																																																echo var14: %var14%
																																																																																echo var15: %var15%
																																																																																echo var16: %var16%
																																																																																echo var17: %var17%
																																																																																echo var18: %var18%
																																																																																echo var19: %var19%
																																																																																echo HP [][][][][][- E.ANG
																																																																																goto :bokarAttack2
																																																																																	:bokarAttack2
																																																																																		set /P c=You attacked, doing 5 damage, and making him extremly angry. More fire erupts around him, dealing 20 damage. %Player1%'s HP: 67 [Attack/Defend] 
																																																																																		if /I "%c%" EQU "Attack" goto :bokarAttack3Texture
																																																																																		if /I "%c%" EQU "Defend" goto :bokarDefend3Texture
																																																																																			:bokarAttack3Texture
																																																																																				%texture%< textures/people/NPCs/bokar/rage.txt (
																																																																																				set /p var1=
																																																																																				set /p var2=
																																																																																				set /p var3=
																																																																																				set /p var4=
																																																																																				set /p var5=
																																																																																				set /p var6=
																																																																																				set /p var7=
																																																																																				set /p var8=
																																																																																				set /p var9=
																																																																																				set /p var10=
																																																																																				set /p var11=
																																																																																				set /p var12=
																																																																																				set /p var13=
																																																																																				set /p var14=
																																																																																				set /p var15=
																																																																																				set /p var16=
																																																																																				set /p var17=
																																																																																				set /p var18=
																																																																																				set /p var19=
																																																																																				)
																																																																																				echo var1: %var1%
																																																																																				echo var2: %var2%
																																																																																				echo var3: %var3%
																																																																																				echo var4: %var4%
																																																																																				echo var5: %var5%
																																																																																				echo var6: %var6%
																																																																																				echo var7: %var7%
																																																																																				echo var8: %var8%
																																																																																				echo var9: %var9%
																																																																																				echo var10: %var10%
																																																																																				echo var11: %var11%
																																																																																				echo var12: %var12%
																																																																																				echo var13: %var13%
																																																																																				echo var14: %var14%
																																																																																				echo var15: %var15%
																																																																																				echo var16: %var16%
																																																																																				echo var17: %var17%
																																																																																				echo var18: %var18%
																																																																																				echo var19: %var19%
																																																																																				echo HP [][][][][][- RAGE
																																																																																				goto :bokarAttack3
																																																																																					:bokarAttack3
																																																																																						set /P c=You attempted to attack, but you just caught your hand on fire, doing 50 damage. It's almost as if he is the embodiment of fire. %Player1%'s HP: 17 FIRE [Attack/Defend] 
																																																																																						if /I "%c%" EQU "Attack" goto :bokarAttack4Texture
																																																																																						if /I "%c%" EQU "Defend" goto :bokarDefend4Texture
																																																																																						goto :bokarAttack3
																																																																																							:bokarAttack4Texture
																																																																																								echo var1: %var1%
																																																																																								echo var2: %var2%
																																																																																								echo var3: %var3%
																																																																																								echo var4: %var4%
																																																																																								echo var5: %var5%
																																																																																								echo var6: %var6%
																																																																																								echo var7: %var7%
																																																																																								echo var8: %var8%
																																																																																								echo var9: %var9%
																																																																																								echo var10: %var10%
																																																																																								echo var11: %var11%
																																																																																								echo var12: %var12%
																																																																																								echo var13: %var13%
																																																																																								echo var14: %var14%
																																																																																								echo var15: %var15%
																																																																																								echo var16: %var16%
																																																																																								echo var17: %var17%
																																																																																								echo var18: %var18%
																																																																																								echo var19: %var19%
																																																																																								echo HP [][][][][][- RAGE
																																																																																								goto :bokarAttack4
																																																																																									:bokarAttack4
																																																																																										echo You wanted to attack, but you were still on fire... %Player1%'s HP: 0 DEAD FIRE
																																																																																										pause
																																																																																										goto :death5
																																																																																											:death5
																																																																																												set /P c=You died by fighting Bokar. Try again? [Y/N]
																																																																																												if /I "%c%" EQU "Y" goto :bokar1
																																																																																												if /I "%c%" EQU "N" endlocal
																																																																																												goto :death5
																																																																															:bokarDefend2Texture

																																																																																
																																																																											:bokarDefend1Texture
																																																																												echo var1: %var1%
																																																																												echo var2: %var2%
																																																																												echo var3: %var3%
																																																																												echo var4: %var4%
																																																																												echo var5: %var5%
																																																																												echo var6: %var6%
																																																																												echo var7: %var7%
																																																																												echo var8: %var8%
																																																																												echo var9: %var9%
																																																																												echo var10: %var10%
																																																																												echo var11: %var11%
																																																																												echo var12: %var12%
																																																																												echo var13: %var13%
																																																																												echo var14: %var14%
																																																																												echo var15: %var15%
																																																																												echo var16: %var16%
																																																																												echo var17: %var17%
																																																																												echo var18: %var18%
																																																																												echo var19: %var19%
																																																																												echo HP [][][][][][][] ANG
																																																																												goto :bokarDefend1
																																																																													:bokarDefend1
																																																																														set /P c=You defended, blocking 13 damage! %Player1%'s HP: 100 [Attack/Defend]
																																																																														if /I "%c%" EQU "Attack" goto :bokarAttack5Texture
																																																																														if /I "%c%" EQU "Defend" goto :bokarDefend1Texture
																																																																														goto :bokarDefend1
																																																																															:bokarAttack5Texture
																																																																																echo var1: %var1%
																																																																																echo var2: %var2%
																																																																																echo var3: %var3%
																																																																																echo var4: %var4%
																																																																																echo var5: %var5%
																																																																																echo var6: %var6%
																																																																																echo var7: %var7%
																																																																																echo var8: %var8%
																																																																																echo var9: %var9%
																																																																																echo var10: %var10%
																																																																																echo var11: %var11%
																																																																																echo var12: %var12%
																																																																																echo var13: %var13%
																																																																																echo var14: %var14%
																																																																																echo var15: %var15%
																																																																																echo var16: %var16%
																																																																																echo var17: %var17%
																																																																																echo var18: %var18%
																																																																																echo var19: %var19%
																																																																																echo HP [][][][][][-- ANG
																																																																																goto :bokarAttack5
																																																																																	:bokarAttack5
																																																																																		set /P c=Critical Hit! You attacked, doing 15 damage! If he wasn't defending, you would of done 30. %Player1%'s HP: 100 [Attack/Defend]
																																																																																		if /I "%c%" EQU "Attack" goto :bokarAttack6Texture
																																																																																		if /I "%c%" EQU "Defend" goto :bokarDefend5Texture
																																																																																			:bokarDefend5Texture
																																																																																				echo var1: %var1%
																																																																																				echo var2: %var2%
																																																																																				echo var3: %var3%
																																																																																				echo var4: %var4%
																																																																																				echo var5: %var5%
																																																																																				echo var6: %var6%
																																																																																				echo var7: %var7%
																																																																																				echo var8: %var8%
																																																																																				echo var9: %var9%
																																																																																				echo var10: %var10%
																																																																																				echo var11: %var11%
																																																																																				echo var12: %var12%
																																																																																				echo var13: %var13%
																																																																																				echo var14: %var14%
																																																																																				echo var15: %var15%
																																																																																				echo var16: %var16%
																																																																																				echo var17: %var17%
																																																																																				echo var18: %var18%
																																																																																				echo var19: %var19%
																																																																																				echo HP [][][][][][-- ANG
																																																																																				goto :bokarDefend5
																																																																																					:bokarDefend5
																																																																																						set /P c=You defended, sheilding you from 17 damage! %Player1%'s HP: 100 [Attack/Defend]
																																																																																						if /I "%c%" EQU "Attack" goto :bokarAttack7Texture
																																																																																						if /I "%c%" EQU "Defend" goto :bokarDefend5Texture
																																																																																						goto :bokarDefend5
																																																																																							:bokarAttack7Texture
																																																																																								echo var1: %var1%
																																																																																								echo var2: %var2%
																																																																																								echo var3: %var3%
																																																																																								echo var4: %var4%
																																																																																								echo var5: %var5%
																																																																																								echo var6: %var6%
																																																																																								echo var7: %var7%
																																																																																								echo var8: %var8%
																																																																																								echo var9: %var9%
																																																																																								echo var10: %var10%
																																																																																								echo var11: %var11%
																																																																																								echo var12: %var12%
																																																																																								echo var13: %var13%
																																																																																								echo var14: %var14%
																																																																																								echo var15: %var15%
																																																																																								echo var16: %var16%
																																																																																								echo var17: %var17%
																																																																																								echo var18: %var18%
																																																																																								echo var19: %var19%
																																																																																								echo HP [][][][]--- ANG
																																																																																								goto :bokarAttack7
																																																																																									:bokarAttack7
																																																																																										set /P c=You attacked, doing 15 damage! %Player1%'s HP: 100 [Attack/Defend]
																																																																																										if /I "%c%" EQU "Attack" goto :bokarAttack8Texture
																																																																																										if /I "%c%" EQU "Defend" goto :bokarDefend6Texture
																																																																																										goto :bokarAttack7
																																																																																											:bokarAttack8Texture
																																																																																												%texture%< textures/people/NPCs/bokar/veryAngry.txt (
																																																																																												set /p var1=
																																																																																												set /p var2=
																																																																																												set /p var3=
																																																																																												set /p var4=
																																																																																												set /p var5=
																																																																																												set /p var6=
																																																																																												set /p var7=
																																																																																												set /p var8=
																																																																																												set /p var9=
																																																																																												set /p var10=
																																																																																												set /p var11=
																																																																																												set /p var12=
																																																																																												set /p var13=
																																																																																												set /p var14=
																																																																																												set /p var15=
																																																																																												set /p var16=
																																																																																												set /p var17=
																																																																																												set /p var18=
																																																																																												set /p var19=
																																																																																												)
																																																																																												echo var1: %var1%
																																																																																												echo var2: %var2%
																																																																																												echo var3: %var3%
																																																																																												echo var4: %var4%
																																																																																												echo var5: %var5%
																																																																																												echo var6: %var6%
																																																																																												echo var7: %var7%
																																																																																												echo var8: %var8%
																																																																																												echo var9: %var9%
																																																																																												echo var10: %var10%
																																																																																												echo var11: %var11%
																																																																																												echo var12: %var12%
																																																																																												echo var13: %var13%
																																																																																												echo var14: %var14%
																																																																																												echo var15: %var15%
																																																																																												echo var16: %var16%
																																																																																												echo var17: %var17%
																																																																																												echo var18: %var18%
																																																																																												echo var19: %var19%
																																																																																												echo HP [][][]---- V.ANG
																																																																																													:bokarAttack8
																																																																																														set /P c=You attacked, doing 10 damage. Fire ignited around him, doing 13 damage to you. %Player1%'s HP: 87 [Attack/Defend] 
																																																																																														if /I "%c%" EQU "Attack" goto :bokarAttack9Texture
																																																																																														if /I "%c%" EQU "Defend" goto :
																																																																																											:bokarDefend6Texture
																																																																																												echo var1: %var1%
																																																																																												echo var2: %var2%
																																																																																												echo var3: %var3%
																																																																																												echo var4: %var4%
																																																																																												echo var5: %var5%
																																																																																												echo var6: %var6%
																																																																																												echo var7: %var7%
																																																																																												echo var8: %var8%
																																																																																												echo var9: %var9%
																																																																																												echo var10: %var10%
																																																																																												echo var11: %var11%
																																																																																												echo var12: %var12%
																																																																																												echo var13: %var13%
																																																																																												echo var14: %var14%
																																																																																												echo var15: %var15%
																																																																																												echo var16: %var16%
																																																																																												echo var17: %var17%
																																																																																												echo var18: %var18%
																																																																																												echo var19: %var19%
																																																																																												echo HP [][][][]--- ANG
																																																																																												goto :bokarDefend6
																																																																																													:bokarDefend6
																																																																																														set /P c=You defended, shielding yourself from 13 damage. %Player1%'s HP: 100 [Attack/Defend]
																																																																																														if /I "%c%" EQU "Attack" goto :bokarAttack10Texture
																																																																																														if /I "%c%" EQU "Defend" goto :bokarDefend6Texture
																																																																																														goto :bokarDefend6
																																																																																															:bokarAttack10Texture
																																																																																																%texture%< textures/people/NPCs/bokar/injured.txt (
																																																																																																set /p var1=
																																																																																																set /p var2=
																																																																																																set /p var3=
																																																																																																set /p var4=
																																																																																																set /p var5=
																																																																																																set /p var6=
																																																																																																set /p var7=
																																																																																																set /p var8=
																																																																																																set /p var9=
																																																																																																set /p var10=
																																																																																																set /p var11=
																																																																																																set /p var12=
																																																																																																set /p var13=
																																																																																																set /p var14=
																																																																																																set /p var15=
																																																																																																set /p var16=
																																																																																																set /p var17=
																																																																																																set /p var18=
																																																																																																set /p var19=
																																																																																																)
																																																																																																echo var1: %var1%
																																																																																																echo var2: %var2%
																																																																																																echo var3: %var3%
																																																																																																echo var4: %var4%
																																																																																																echo var5: %var5%
																																																																																																echo var6: %var6%
																																																																																																echo var7: %var7%
																																																																																																echo var8: %var8%
																																																																																																echo var9: %var9%
																																																																																																echo var10: %var10%
																																																																																																echo var11: %var11%
																																																																																																echo var12: %var12%
																																																																																																echo var13: %var13%
																																																																																																echo var14: %var14%
																																																																																																echo var15: %var15%
																																																																																																echo var16: %var16%
																																																																																																echo var17: %var17%
																																																																																																echo var18: %var18%
																																																																																																echo var19: %var19%
																																																																																																goto :bokarAttack10
																																																																																																	:bokarAttack10
																																																																																																		echo Critical Hit! You attacked, dealing 35 damage, and shocking Bokar! %Player1%'s HP: 100. Bokar wants to reason with you.
																																																																																																		pause
																																																																																																		goto :bokarSurrender1
																																																																																																			:bokarSurrender1
																																																																																																				echo Bokar: OK OK OK! I surrender!
																																																																																																				pause
																																																																																																				goto :bokarSurrender2
																																																																																																					:bokarSurrender2
																																																																																																						set /P c=Bokar: Do you accept my surrender? [Y/N]
																																																																																																						if /I "%c%" EQU "Y" goto :bokarPeace1
																																																																																																						if /I "%c%" EQU "N" goto :RIPBokar1Texture
																																																																																																						goto :bokarSurrender2
																																																																																																							:bokarPeace1
																																																																																																								echo Bokar: Thank you.
																																																																																																								pause
																																																																																																								echo Bokar ran off...
																																																																																																								pause
																																																																																																								goto :mountain1
																																																																																																									
																																																																																																							:RIPBokar1Texture
																																																																																																								%texture%< textures/people/NPCs/bokar/dead.txt (
																																																																																																								set /p var1=
																																																																																																								set /p var2=
																																																																																																								set /p var3=
																																																																																																								set /p var4=
																																																																																																								set /p var5=
																																																																																																								set /p var6=
																																																																																																								set /p var7=
																																																																																																								set /p var8=
																																																																																																								set /p var9=
																																																																																																								set /p var10=
																																																																																																								set /p var11=
																																																																																																								set /p var12=
																																																																																																								set /p var13=
																																																																																																								set /p var14=
																																																																																																								set /p var15=
																																																																																																								set /p var16=
																																																																																																								set /p var17=
																																																																																																								set /p var18=
																																																																																																								set /p var19=
																																																																																																								)
																																																																																																								echo var1: %var1%
																																																																																																								echo var2: %var2%
																																																																																																								echo var3: %var3%
																																																																																																								echo var4: %var4%
																																																																																																								echo var5: %var5%
																																																																																																								echo var6: %var6%
																																																																																																								echo var7: %var7%
																																																																																																								echo var8: %var8%
																																																																																																								echo var9: %var9%
																																																																																																								echo var10: %var10%
																																																																																																								echo var11: %var11%
																																																																																																								echo var12: %var12%
																																																																																																								echo var13: %var13%
																																																																																																								echo var14: %var14%
																																																																																																								echo var15: %var15%
																																																																																																								echo var16: %var16%
																																																																																																								echo var17: %var17%
																																																																																																								echo var18: %var18%
																																																																																																								echo var19: %var19%
																																																																																																								echo HP ------- DEAD
																																																																																																								goto :RIPBokar1
																																																																																																									:RIPBokar1
																																																																																																										set savelevel=RIPBokar1
																																																																																																										set savedate=%DATE:~-4%%DATE:~4,2%%DATE:~7,2%%TIME%
																																																																																																										(
																																																																																																										echo %Player1%
																																																																																																										echo %savelevel%
																																																																																																										echo %savedate%
																																																																																																										) > saves/1.txt
																																																																																																										set /A hankorkRep=0-45																																																																																															
																																																																																																										set /P c=You killed Bokar after he surrendered. Your reputation with the Hankorks has gone down by 45, making your reputation %hankorkRep%, and they now consiter you a Brutish Criminal. Bokar did not drop anything. What now? [Explore/Expand %Shelter2Name%]
																																																																																																										if /I "%c%" EQU "Expolre" goto encampment1Texture
																																																																																																										if /I "%c%" EQU "Expand %Shelter2Name%" goto expand2
																																																																																																										goto :RIPBokar1
																																																																																																											:encampment1Texture
																																																																																																												%texture%< textures/buildings/encampment1.txt (
																																																																																																												set /p var1=
																																																																																																												set /p var2=
																																																																																																												set /p var3=
																																																																																																												set /p var4=
																																																																																																												set /p var5=
																																																																																																												set /p var6=
																																																																																																												set /p var7=
																																																																																																												set /p var8=
																																																																																																												set /p var9=
																																																																																																												set /p var10=
																																																																																																												set /p var11=
																																																																																																												set /p var12=
																																																																																																												set /p var13=
																																																																																																												set /p var14=
																																																																																																												set /p var15=
																																																																																																												set /p var16=
																																																																																																												set /p var17=
																																																																																																												set /p var18=
																																																																																																												set /p var19=
																																																																																																												)
																																																																																																												echo var1: %var1%
																																																																																																												echo var2: %var2%
																																																																																																												echo var3: %var3%
																																																																																																												echo var4: %var4%
																																																																																																												echo var5: %var5%
																																																																																																												echo var6: %var6%
																																																																																																												echo var7: %var7%
																																																																																																												echo var8: %var8%
																																																																																																												echo var9: %var9%
																																																																																																												echo var10: %var10%
																																																																																																												echo var11: %var11%
																																																																																																												echo var12: %var12%
																																																																																																												echo var13: %var13%
																																																																																																												echo var14: %var14%
																																																																																																												echo var15: %var15%
																																																																																																												echo var16: %var16%
																																																																																																												echo var17: %var17%
																																																																																																												echo var18: %var18%
																																																																																																												echo var19: %var19%
																																																																																																												goto :encampment1
																																																																																																													:encampment1
																																																																																																														set /P c=While exploring the mountain, you find a nearby Hankork encampment! Because your reputation with them is a Brutish Criminal, they may attack if you approach. [Approach/Flee]
																																																																																																														if /I "%c%" EQU "Approach" goto approach1
																																																																																																														if /I "%c%" EQU "Flee" goto flee1
																																																																																																														goto :encampment1
																																																																																																															:approach1
																																																																																																																echo You approach the encampment, when 5 Hankorks attack!
																																																																																																																pause
																																																																																																																goto :hankorkFight1Texture
																																																																																																																	:hankorkFight1Texture
																																																																																																																		%texture%< textures/characters/NPCs/bokar/veryAngry.txt (
																																																																																																																		set /p var1=
																																																																																																																		set /p var2=
																																																																																																																		set /p var3=
																																																																																																																		set /p var4=
																																																																																																																		set /p var5=
																																																																																																																		set /p var6=
																																																																																																																		set /p var7=
																																																																																																																		set /p var8=
																																																																																																																		set /p var9=
																																																																																																																		set /p var10=
																																																																																																																		set /p var11=
																																																																																																																		set /p var12=
																																																																																																																		set /p var13=
																																																																																																																		set /p var14=
																																																																																																																		set /p var15=
																																																																																																																		set /p var16=
																																																																																																																		set /p var17=
																																																																																																																		set /p var18=
																																																																																																																		set /p var19=
																																																																																																																		)
																																																																																																																		echo var1: %var1%   %var1%   %var1%   %var1%   %var1%   
																																																																																																																		echo var2: %var2%   %var2%   %var2%   %var2%   %var2%   
																																																																																																																		echo var3: %var3%   %var3%   %var3%   %var3%   %var3%   
																																																																																																																		echo var4: %var4%   %var4%   %var4%   %var4%   %var4%   
																																																																																																																		echo var5: %var5%   %var5%   %var5%   %var5%   %var5%   
																																																																																																																		echo var6: %var6%   %var6%   %var6%   %var6%   %var6%   
																																																																																																																		echo var7: %var7%   %var7%   %var7%   %var7%   %var7%   
																																																																																																																		echo var8: %var8%   %var8%   %var8%   %var8%   %var8%   
																																																																																																																		echo var9: %var9%   %var9%   %var9%   %var9%   %var9%   
																																																																																																																		echo var10: %var10%   %var10%   %var10%   %var10%   %var10%   
																																																																																																																		echo var11: %var11%   %var11%   %var11%   %var11%   %var11%   
																																																																																																																		echo var12: %var12%   %var12%   %var12%   %var12%   %var12%   
																																																																																																																		echo var13: %var13%   %var13%   %var13%   %var13%   %var13%   
																																																																																																																		echo var14: %var14%   %var14%   %var14%   %var14%   %var14%   
																																																																																																																		echo var15: %var15%   %var15%   %var15%   %var15%   %var15%   
																																																																																																																		echo var16: %var16%   %var16%   %var16%   %var16%   %var16%   
																																																																																																																		echo var17: %var17%   %var17%   %var17%   %var17%   %var17%   
																																																																																																																		echo var18: %var18%   %var18%   %var18%   %var18%   %var18%   
																																																																																																																		echo var19: %var19%   %var19%   %var19%   %var19%   %var19%   
																																																																																																																		echo HP [][][][][][][] V.ANG
																																																																																																																		echo HP [][][][][][][] V.ANG
																																																																																																																		echo HP [][][][][][][] V.ANG
																																																																																																																		echo HP [][][][][][][] V.ANG
																																																																																																																		echo HP [][][][][][][] V.ANG
																																																																																																																		goto :hankorkFight1
																																																																																																																			:hankorkFight1
																																																																																																																				set /P c= 5 Hankorks attack, doing 40 damage! [Attack/Defend]
																																																																																																																				if /I "%c%" EQU "Attack" goto :hankorkAttack1Texture
																																																																																																																				if /I "%c%" EQU "Defend" goto :hankorkDefend1Texture
																																																																																																																		
																																																																																																															:flee1
																																																																																																											:expand2
																																																																																																												set /P c=You expanded your house. While doing so, 3 hankorks arrive at your door!
																																																																																																											
																																																																																																										
																																																												set /P c=You cried for awhile. [Cry/Explore]
																																																												if /I "%c%" EQU "Cry" goto :cry1
																																																												if /I "%c%" EQU "Explore" goto :explore4
																																																												goto :cry1
																																																					:confirmMove1
																																																						set /P c=Are you SURE you want to:
																																																goto :gather5
																																															:upgrade2
																																																set /P c=Ok, what do you want to upgrade about your shelter? [Walls/Floor/Fire/Roof]
																																																if /I "%c%" EQU "Walls" goto :wall1
																																																if /I "%c%" EQU "Floor" goto :floor1
																																																if /I "%c%" EQU "Fire" goto :fire1
																																																if /I "%c%" EQU "Roof" goto :roof1
																																																goto :upgrade2
																																									:shelterSpecs1
																																										echo %Shelter1Name%'s Specs
																																										pause
																																										echo/
																																										echo Skill built with: Level 0 - Class 1: Amateur Stickpiler
																																										echo/
																																										echo Built: Day 1
																																										echo/
																																										echo Built by: %Player1%
																																										pause
																																										goto :build1
																																									:sleep1
																																										set savelevel=sleep1
																																										set /P c=You decided to sleep in the cold, without a fire. During the night, your assorted fruit was stolen by wild animals. What do you want to do now?[Forage/Upgrade/Eat]
																																										if /I "%c%" EQU "Eat" goto :eat2
																																										if /I "%c%" EQU "Forage" goto :gather3
																																										if /I "%c%" EQU "Upgrade" goto :upgrade1
																																										goto :sleep1
																																													:upgrade1
																																														set /P c=So you decided to work on your shelter. What exactly would you like to upgrade? [Roof/Ground]
																																														if /I "%c%" EQU "roof" goto :upgraderoof1
																																														if /I "%c%" EQU "ground" goto :upgradeground1
																																														goto :upgrade1
																																															:upgradeground1
																																																set /P c=You now have a suitable ground! There is a Fox. What now? [hunt/gather/upgrade roof]
																																																if /I "%c%" EQU "hunt" goto :death4
																																																if /I "%c%" EQU "gather" goto :gather4
																																																if /I "%c%" EQU "upgrade roof" goto :upgradeRoof1
																																																goto :upgradeground1
																																																	:upgradeRoof1
																																																		set /P c=You now have a suitable roof! There is a Fox. What now? [Hunt/Gather]
																																																		if /I "%c%" EQU "gather" goto :gather3
																																																		if /I "%c%" EQU "hunt" goto :death4texture
																																																		goto :upgraderoof1
																																																			:death4
																																																				set /P c=As you get closer to the fox, you see it's frothing at the mouth. As you examine it, it jumps up and bites you. Try again? [Y/N]
																																																				if /I "%c%" EQU "Y" goto :upgradeRoof1
																																																
																																																:gather3
																																																	set /P c=You go and gather the berries you saw last night. They look, and smell delicious. You grab 50 berries. Eat one?[Y/N]
																																																	if /I "%c%" EQU "Y" goto :eat3
																																																	if /I "%c%" EQU "N" goto :day2
																																																	goto :gather3
																																																		:day2
																																																			set /P c=You decided that you wouldn't eat a berry yet. After going back to %Shelter1Name%, what do you do? [Furnish/Explore]
																																																			if /I "%c%" EQU "Furnish" goto :furnish1
																																																			if /I "%c%" EQU "Explore" goto :explore2 
																																																			goto :day2
																																																	:eat3
																																																		set /P c=You eat the berry. Later, you start to say "Just one more". You ate all of the berries. Well, at least it was very filling. What now? [Explore/Go to %Shelter1Name%]
																																																		if /I "%c%" EQU "Explore" goto :explore3
																																																		if /I "%c%" EQU "Go to %Shelter1Name%" goto :goHome1
																																																		goto :eat3
																															:eat2
																															echo You decided to eat the raw rabbit. You start to feel sick to your stomach. Later, you start having major stomach problems.
																															pause
																															goto :death1Texture
																														
																															:death1Texture
																																echo  ___________
																																echo /           \
																																echo .    RIP    .
																																echo .           .
																																echo . %Player1% .
																																echo .           .
																																echo .  Rabbit   .
																																echo .   Fever   .
																																echo ^^^^^^^^^^^^^
																																goto death1
																																:death1
																																	echo %Player1% died because of rabbit fever. Tip: Make sure to cook your food! Even if you burn it, it won't kill you! Raw stuff will most likely!
																																	pause
																																	goto :tryAgainDeath1
																																		:tryAgainDeath1
																																			set /P c=Would you like to try again? ALPHA NOTE: Please note that I have not added a Save feature yet, so you'd have to start all over if you select no[Y/N]
																																			if /I "%c%" EQU "Y" goto :build1
																																			if /I "%c%" EQU "N" exit
																																			goto :tryAgainDeath1	
																					rem :rabbitDefend3
																						set /P c=The rabbit understands what you're doing now, and gave you a funny look, then walk away... Where do you go now?[Forest/Cave]
																						if /I "%c%" EQU "Forest" goto :forest3
																						if /I "%c%" EQU "Cave" goto :cave3
																						goto :rabbitDefend3
																			:rabbitDefend2
																				set /P c=You defended, but the rabbit is still confused![Attack/Defend/Info]  %Player1% HP 100%, Rabbit: HP 66%  CONFUSED
																				if /I "%c%" EQU "Attack" goto :rabbitAttack2
																				if /I "%c%" EQU "Defend" goto :rabbitDefend2
																				goto :rabbitDefend2
									:takeWeaponBroom1Texture
										%texture%< textures/items/tools/broom.txt (
										set /p var1=
										set /p var2=
										set /p var3=
										)
										%var1%
										%var2%
										%var3%
										goto :takeWeaponBroom1
									:takeWeaponBroom1
										set /P c=You take the broom, but knock over some assorted objects as you get it. The sleeping man instantly wakes up, and looks at you. What do you do?[Talk/Fight]
										if /I "%c%" EQU "Talk" goto :humanTalk1
										if /I "%c%" EQU "Fight" goto :humanFight1Texture
										goto :takeWeaponBroom1
											:humanTalk1
												set /P c=The man is quite annoyed about you being in his house. Do you want to Apoligize(A), Compliment(B), Insult(C), or Trade(D)? [A/B/C/D] 
												if /I "%c%" EQU "A" goto :humanApoligize1
												if /I "%c%" EQU "B" goto :humanCompliment1
												if /I "%c%" EQU "C" goto :humanInsult1
												if /I "%c%" EQU "D" goto :humanNoTrade1
												goto :humanTalk1
													:humanApoligize1
														echo You apologized, and he lets you go with the broom you took.
														set weapon=broom
														pause
														goto leave1
													:humanCompliment1
														echo You attempted to compliment him, but he took it as an insult...
														pause
														goto :humanFight2Texture
													:humanInsult1
														echo You insulted the man, and he is getting ready for a fight...
														pause
														goto :humanFight2Texture
															:humanFight2Texture
																%texture%< textures/people/personInHouse1/angry.txt (
																set /p var1=
																set /p var2=
																set /p var3=
																set /p var4=
																set /p var5=
																set /p var6=
																set /p var7=
																set /p var8=
																set /p var9=
																set /p var10=
																set /p var11=
																set /p var12=
																set /p var13=
																set /p var14=
																set /p var15=
																set /p var16=
																set /p var17=
																)
																echo var1: %var1%
																echo var2: %var2%
																echo var3: %var3%
																echo var4: %var4%
																echo var5: %var5%
																echo var6: %var6%
																echo var7: %var7%
																echo var8: %var8%
																echo var9: %var9%
																echo var10: %var10%
																echo var11: %var11%
																echo var12: %var12%
																echo var13: %var13%
																echo var14: %var14%
																echo var15: %var15%
																echo var16: %var16%
																echo var17: %var17%
																echo    HP  [][][][][] ANG
																goto :humanFight2
																	:humanFight2
																		set /P c=You broke into his home and insulted him, now he's angry and ready to fight...[Defend/Dodge/Attack]  
																			if /I "%c%" EQU "Defend" goto :humanDefend1
																			if /I "%c%" EQU "Dodge" goto :humanDodge1
																			if /I "%c%" EQU "Attack" goto :humanAttack1
																			goto :humanFight2
													:humanNoTrade1
														echo You have nothing to trade!
														pause
														goto :humanTalk1
									
									:humanFight1Texture
										%texture%< textures/people/personInHouse1/angry.txt (
										set /p var1=
										set /p var2=
										set /p var3=
										set /p var4=
										set /p var5=
										set /p var6=
										set /p var7=
										set /p var8=
										set /p var9=
										set /p var10=
										set /p var11=
										set /p var12=
										set /p var13=
										set /p var14=
										set /p var15=
										set /p var16=
										set /p var17=
										)
										echo var1: %var1%
										echo var2: %var2%
										echo var3: %var3%
										echo var4: %var4%
										echo var5: %var5%
										echo var6: %var6%
										echo var7: %var7%
										echo var8: %var8%
										echo var9: %var9%
										echo var10: %var10%
										echo var11: %var11%
										echo var12: %var12%
										echo var13: %var13%
										echo var14: %var14%
										echo var15: %var15%
										echo var16: %var16%
										echo var17: %var17%
										echo    HP  [][][][][] ANG
										goto :humanFight1
										:humanFight1
											set /P c=You woke the man up, and he isn't so happy about it. The man attacks (after getting out of bed quickly)! What do you do?[Defend/Dodge/Attack] 
											if /I "%c%" EQU "Defend" goto :humanDefend1
											if /I "%c%" EQU "Dodge" goto :humanDodge1
											if /I "%c%" EQU "Attack" goto :humanAttack1
											goto :humanFight1
												:humanDefend1Texture
														echo var1: %var1%
														echo var2: %var2%
														echo var3: %var3%
														echo var4: %var4%
														echo var5: %var5%
														echo var6: %var6%
														echo var7: %var7%
														echo var8: %var8%
														echo var9: %var9%
														echo var10: %var10%
														echo var11: %var11%
														echo var12: %var12%
														echo var13: %var13%
														echo var14: %var14%
														echo var15: %var15%
														echo var16: %var16%
														echo var17: %var17%
														echo    HP  [][][][][] ANG
														goto :humanDefend1
															:humanDefend1
																set /P c=You went into a defensive stance, sheilding you from 15 damage![Defend/Dodge/Attack]
																if /I "%c%" EQU "Defend" goto :humanDefend3Texture
																if /I "%c%" EQU "Attack" goto :humanAttack2Texture
																goto :humanDefend1
													:humanDodge1Texture
														echo var1: %var1%
														echo var2: %var2%
														echo var3: %var3%
														echo var4: %var4%
														echo var5: %var5%
														echo var6: %var6%
														echo var7: %var7%
														echo var8: %var8%
														echo var9: %var9%
														echo var10: %var10%
														echo var11: %var11%
														echo var12: %var12%
														echo var13: %var13%
														echo var14: %var14%
														echo var15: %var15%
														echo var16: %var16%
														echo var17: %var17%															
														echo    HP  [][][][][] ANG
															goto :humanDodge1
																:humanDodge1
																	set /P c=You dodged, avoiding 15 damage!
																	if /I "%c%" EQU "Defend" goto :humanDefend2Texture
																	if /I "%c%" EQU "Attack" goto :humanAttack2Texture
																	goto :humanDodge1
													:humanAttack1Texture
															echo var1: %var1%
															echo var2: %var2%
															echo var3: %var3%
															echo var4: %var4%
															echo var5: %var5%
															echo var6: %var6%
															echo var7: %var7%
															echo var8: %var8%
															echo var9: %var9%
															echo var10: %var10%
															echo var11: %var11%
															echo var12: %var12%
															echo var13: %var13%
															echo var14: %var14%
															echo var15: %var15%
															echo var16: %var16%
															echo var17: %var17%
															echo    HP  [][][][]-- ANG
															goto :humanAttack1
																:humanAttack1
																	set /P c=You attacked, but you took 15 damage instead... You delt 10 damage though... [Attack/Defend] 
																	if /I "%c%" EQU "Defend" goto :humanDefend2
																	if /I "%c%" EQU "Attack" goto :humanAttack2
																	goto :humanAttack1
																		:humanDefend2Texture
																			echo var1: %var1%
																			echo var2: %var2%
																			echo var3: %var3%
																			echo var4: %var4%
																			echo var5: %var5%
																			echo var6: %var6%
																			echo var7: %var7%
																			echo var8: %var8%
																			echo var9: %var9%
																			echo var10: %var10%
																			echo var11: %var11%
																			echo var12: %var12%
																			echo var13: %var13%
																			echo var14: %var14%
																			echo var15: %var15%
																			echo var16: %var16%
																			echo var17: %var17%
																			echo    HP  [][][][]-- ANG
																			goto :humanDefend2
																				:humanDefend2
																					set /P c=You defended, sheilding you from 15 damage! [Attack/Defend] 
																					if /I "%c%" EQU "Defend" goto :humanDefend2Texture
																					if /I "%c%" EQU "Attack" goto :humanAttack2Texture
																					goto :humanDefend2
																		:humanAttack2Texture
																			%texture%< textures/people/personInHouse1/dead.txt (
																			set /p var1=
																			set /p var2=
																			set /p var3=
																			set /p var4=
																			set /p var5=
																			set /p var6=
																			set /p var7=
																			set /p var8=
																			set /p var9=
																			set /p var10=
																			set /p var11=
																			set /p var12=
																			set /p var13=
																			set /p var14=
																			set /p var15=
																			set /p var16=
																			set /p var17=
																			)
																			echo var1: %var1%
																			echo var2: %var2%
																			echo var3: %var3%
																			echo var4: %var4%
																			echo var5: %var5%
																			echo var6: %var6%
																			echo var7: %var7%
																			echo var8: %var8%
																			echo var9: %var9%
																			echo var10: %var10%
																			echo var11: %var11%
																			echo var12: %var12%
																			echo var13: %var13%
																			echo var14: %var14%
																			echo var15: %var15%
																			echo var16: %var16%
																			echo var17: %var17%
																			echo    HP  ---------- DEAD
																			goto :humanAttack2
																				:humanAttack2
																					set /P c=Critical Hit! He is now dead. [Leave/Explore/Save]
																					if /I "%c%" EQU "Leave" goto :field1
																					if /I "%c%" EQU "Explore" goto :exploreHouse1
																					if /I "%c%" EQU "Save" goto :save1
																					goto :humanAttack2
																						:exploreHouse1
																						set /P c=You find a broom, a map, and a bushel of grapes left on the table. What do you do? [Broom/Map/Grapes/Back]
																						if /I "%c%" EQU "Broom" goto :humanTalk1
																						if /I "%c%" EQU "Map" goto :Run2
																						if /I "%c%" EQU "Grapes" goto :Run2
																						if /I "%c%" EQU "Back" goto :humanAttack2
																						goto :exploreHouse1
																							:run2
																							set /P c=You run into the meadow with the map. Where now? [Cave/Forest]
																							if /I "%c%" EQU "Cave" goto :cave2
																							if /I "%c%" EQU "Map" goto :Forest2
																							goto :run2
																								:cave2
																								set /P c=in the cave, you find a  Fox, and some berries. What would you like to do? [Hunt\Harvest]
																								if /I "%c%" EQU "fox" goto :fox1
																								if /I "%c%" EQU "Berries" goto :berries1
																								goto :cave2
																									:fox1
																									set /P c=You 
									:forest1
								set /P c=You walk into the forest. After awhile, you see a clearing. In the clearing, you see a knife, a deer, and some berries. What do you do?[Hunt/Gather]
								if /I "%c%" EQU "Hunt" goto :deerFight1Texture
								if /I "%c%" EQU "Gather" goto :gather1
								goto :forest1
									:deerFight1Texture
										%texture%< textures/animals/deer/suprised.txt (
										set /p var1=
										set /p var2=
										set /p var3=
										set /p var4=
										set /p var5=
										set /p var6=
										set /p var7=
										set /p var8=
										set /p var9=
										set /p var10=
										set /p var11=
										set /p var12=
										set /p var13=
										set /p var14=
										set /p var15=
										set /p var16=
										set /p var17=
										)
										echo var1: %var1%
										echo var2: %var2%
										echo var3: %var3%
										echo var4: %var4%
										echo var5: %var5%
										echo var6: %var6%
										echo var7: %var7%
										echo var8: %var8%
										echo var9: %var9%
										echo var10: %var10%
										echo var11: %var11%
										echo var12: %var12%
										echo var13: %var13%
										echo var14: %var14%
										echo var15: %var15%
										echo var16: %var16%
										echo var17: %var17%
										echo             HP  [][]--- SUP
										goto :deerFight1
											:deerFight1
												set /P c=You attack with the knife, doing 30 damage.[Attack/Defend] %Player1% HP 100
												if /I "%c%" EQU "Attack" goto :deerAttack1Texture
												if /I "%c%" EQU "Defend" goto :deerDefend1Texture
												goto :deerFight1
													:deerDefend1Texture
														echo var1: %var1%
														echo var2: %var2%
														echo var3: %var3%
														echo var4: %var4%
														echo var5: %var5%
														echo var6: %var6%
														echo var7: %var7%
														echo var8: %var8%
														echo var9: %var9%
														echo var10: %var10%
														echo var11: %var11%
														echo var12: %var12%
														echo var13: %var13%
														echo var14: %var14%
														echo var15: %var15%
														echo var16: %var16%
														echo var17: %var17%
														echo             HP  [][]--- SHO
														goto :deerDefend1
															:deerDefend1
																rem Need to finish the Only Attack branch of deerFight1 in order to have fight-defend-attack number (FIXED)
																set /P c=You defend against the deer, saving you from 15 damage. You have also shocked the deer.[Attack/Defend] 
																if /I "%c%" EQU "Attack" goto deerAttack6Texture
																if /I "%c%" EQU "Defend" goto deerDefend1Texture
																goto :deerDefend1
																	:deerAttack6Texture
																		echo var1: %var1%
																		echo var2: %var2%
																		echo var3: %var3%
																		echo var4: %var4%
																		echo var5: %var5%
																		echo var6: %var6%
																		echo var7: %var7%
																		echo var8: %var8%
																		echo var9: %var9%
																		echo var10: %var10%
																		echo var11: %var11%
																		echo var12: %var12%
																		echo var13: %var13%
																		echo var14: %var14%
																		echo var15: %var15%
																		echo var16: %var16%
																		echo var17: %var17%
																		echo             HP  [---- SHO
																		goto :deerAttack6
																			:deerAttack6
																				set /P c=You attack the deer. Because it was shocked, it couldn't defend in time! Critical hit! %Player1% did 18 damage![Attack/Defend] %Player1%'s HP: 100
																				if /I "%c%" EQU "Attack" goto deerAttack7Texture
																				if /I "%c%" EQU "Defend" goto deerDefend2Texture
																				goto :deerAttack6
																					:deerAttack7Texture
																						echo var1: %var1%
																						echo var2: %var2%
																						echo var3: %var3%
																						echo var4: %var4%
																						echo var5: %var5%
																						echo var6: %var6%
																						echo var7: %var7%
																						echo var8: %var8%
																						echo var9: %var9%
																						echo var10: %var10%
																						echo var11: %var11%
																						echo var12: %var12%
																						echo var13: %var13%
																						echo var14: %var14%
																						echo var15: %var15%
																						echo var16: %var16%
																						echo var17: %var17%
																						echo             HP  [---- SHO
																						goto :deerAttack7
																							:deerAttack7
																							rem NEED TO ADD!
													:deerAttack1Texture
														%texture%< textures/animals/deer/angry.txt (
														set /p var1=
														set /p var2=
														set /p var3=
														set /p var4=
														set /p var5=
														set /p var6=
														set /p var7=
														set /p var8=
														set /p var9=
														set /p var10=
														set /p var11=
														set /p var12=
														set /p var13=
														set /p var14=
														set /p var15=
														set /p var16=
														set /p var17=
														)
														echo var1: %var1%
														echo var2: %var2%
														echo var3: %var3%
														echo var4: %var4%
														echo var5: %var5%
														echo var6: %var6%
														echo var7: %var7%
														echo var8: %var8%
														echo var9: %var9%
														echo var10: %var10%
														echo var11: %var11%
														echo var12: %var12%
														echo var13: %var13%
														echo var14: %var14%
														echo var15: %var15%
														echo var16: %var16%
														echo var17: %var17%
														goto :deerAttack1
															:deerAttack1
																set /P c=You attempted to attack with the knife, but the deer attacked %Player1%, doing 15 damage to %Player1%. You also made the deer angry[Attack/Defend] %Player1%'s HP: 85
																if /I "%c%" EQU "Attack" goto :deerAttack2Texture
																if /I "%c%" EQU "Defend" goto :deerDefend2Texture
																goto :deerAttack1
																			
																	:deerAttack2Texture
																		echo var1: %var1%
																		echo var2: %var2%
																		echo var3: %var3%
																		echo var4: %var4%
																		echo var5: %var5%
																		echo var6: %var6%
																		echo var7: %var7%
																		echo var8: %var8%
																		echo var9: %var9%
																		echo var10: %var10%
																		echo var11: %var11%
																		echo var12: %var12%
																		echo var13: %var13%
																		echo var14: %var14%
																		echo var15: %var15%
																		echo var16: %var16%
																		echo var17: %var17%
																		echo             HP  [][]--- ANG
																		goto :deerAttack2
																			:deerAttack2
																				set /P c=You attempted to attack the deer once again, but it defended, blocking itself from 20 damage.[Attack/Defend] %Player1%'s HP: 85
																				if /I "%c%" EQU "Attack" goto :deerAttack3Texture
																				if /I "%c%" EQU "Defend" goto :deerDefend3Texture
																				goto :deerAttack2
																					:deerAttack3Texture
																						%texture%< textures/animals/deer/veryAngry.txt (
																						set /p var1=
																						set /p var2=
																						set /p var3=
																						set /p var4=
																						set /p var5=
																						set /p var6=
																						set /p var7=
																						set /p var8=
																						set /p var9=
																						set /p var10=
																						set /p var11=
																						set /p var12=
																						set /p var13=
																						set /p var14=
																						set /p var15=
																						set /p var16=
																						set /p var17=
																						)
																						echo var1: %var1%
																						echo var2: %var2%
																						echo var3: %var3%
																						echo var4: %var4%
																						echo var5: %var5%
																						echo var6: %var6%
																						echo var7: %var7%
																						echo var8: %var8%
																						echo var9: %var9%
																						echo var10: %var10%
																						echo var11: %var11%
																						echo var12: %var12%
																						echo var13: %var13%
																						echo var14: %var14%
																						echo var15: %var15%
																						echo var16: %var16%
																						echo var17: %var17%
																						echo             HP  [][]--- V.ANG
																						goto :deerAttack3
																							:deerAttack3
																								set /P c=Once again, while you tried to attack the deer, the deer attacked you. The deer landed a critical hit, doing 37 damage.[Attack/Defend] %Player1%'s HP: 48
																								if /I "%c%" EQU "Attack" goto :deerAttack4Texture
																								if /I "%c%" EQU "Attack" goto :deerDefend4Texture
																								goto :deerAttack3
																									:deerAttack4Texture
																										echo \  \ \          / /  /
																										echo  \__\/          \/__/
																										echo     \ __________ /
																										echo      /          \
																										echo     /    \   /   \
																										echo    /   (O  _ O)   \
																										echo    \      (_)     /           _
																										echo     \____ /\ ____/           / \
																										echo       .  \\//  .             . .
																										echo       .   --    \____________/ .
																										echo       .                        .
																										echo   	   .    .            \\\\   .
																										echo       .    .     _________     .
																										echo       .    .    .       \ \    .
																										echo       .    .    .       . .    .
																										echo       .____.____.       ._.____.        _____/
																										echo      /____//___/       /__/____/       (_____----
																										echo             HP  [][]--- E.ANG                \
																										goto :deerAttack4
																											:deerAttack4
																												set /P c=The deer defended, blocking 20 damage. While the deer was defending, it knocked out the knife from your hand. You no longer have a knife.[Attack/Defend] %Player1%'s HP: 48
																												if /I "%c%" EQU "Attack" goto :deerAttack5Texture
																												if /I "%c%" EQU "Attack" goto :deerDefend5
																												goto :deerAttack4
																													:deerAttack5Texture
																														echo \  \ \          / /  /
																														echo  \__\/          \/__/
																														echo     \ __________ /
																														echo      /          \
																														echo     /   \\   //  \
																														echo    /   (O  _ O)   \
																														echo    \      (_)     /           _
																														echo     \___ /..\ ___/           / \
																														echo       . \\__// .             . .
																														echo 	   .  ----   \____________/ .
																														echo 	   .                        .
																														echo   	   .    .            \\\\   .
																														echo 	   .    .     _________     .
																														echo 	   .    .    .       \ \    .
																														echo 	   .    .    .       . .    .
																														echo 	   .____.____.       ._.____.        _____/
																														echo 	  /____//___/       /__/____/       (_____----
																														echo             HP  [][]--- RAGE                 \
																														goto :deerAttack5'
																															:deerAttack5
																																echo You attempted to attack the deer, but the deer goes into a rage, doing 48 damage.
																																pause
																																goto death2
																																	:death2
																																		set /P c=You died from a deer. Tip: Avoid making animals go into a rage! Want to go back?[Y/N]
																																		if /I "%c%" "Y" goto :deerFight1
																																		if /I "%c%" "N" exit
													:deerDefend1
														set /P c=You defend against the deer's attack, blocking 15 damage.[Attack/Defend]
														if /I "%c%" EQU "Attack" goto :deerAttack?
														if /I "%c%" EQU "Defend" goto :deerDefend?
									:gather1
										set /P c=You pick some berries off of bushes, 50 to be exact, and put them into your inventory. You have quite a bit of time, so what do you want to do?[Build/Gather/Explore]

							:cave1
								set /P c=You walk into the dark cave. You can't see anything, but you feel that something is watching you.[Leave/Find] 
								if /I "%c%" EQU "Leave" goto :choice
								if /I "%c%" EQU "Find" goto :find1
								goto :cave1
									:find1Texture
										echo /..o..o..\
										echo ..........
										goto :find1
											:find1
												echo You attempt to find what it is that is watching you... But then something hits you...
												pause
												goto :death3
													:death3
														set /P c=You died from an unknown blow to the head. Tip: Avoid going to dark places without a weapon, light, or map! Want to go back?[Y/N]
														if /I "%c%" "Y" goto :choice
														if /I "%c%" "N" exit
															
														:Save1
												

													
		rem Restore saved environment and exit batch processing.
	rem ____________                           ____________       ______________________________________________

	rem ..NNNNNNNNNNN\                         ..NNNNNNNNNN.     /3333333333333333333333333333333333333333333333\

	rem ..NNNNNNNNNNNN\                        ..NNNNNNNNNN.     .33333333333333333333333333333333333333333333333\

	rem ..NNNNNNNNNNNNN\                       ..NNNNNNNNNN.     .333333333333333333333333333333333333333333333333\

	rem ..NNNNNNNNNNNNNN\                      ..NNNNNNNNNN.     .3333333333333333333333333333333333333333333333333\

	rem ..NNNNNNNNNNNNNNN\                     ..NNNNNNNNNN.     .33333333333333333333333333333333333333333333333333\

	rem ..NNNNNNNNNNNNNNNN\                    ..NNNNNNNNNN.     .333333333333333333333333333333333333333333333333333\

	rem ..NNNNNNNNNNNNNNNNN\                   ..NNNNNNNNNN.      \______________________________________333333333333.

	rem ..NNNNNNNNNNNNNNNNNN\                  ..NNNNNNNNNN.                                            \\33333333333.

	rem ..NNNNNNNNNNNNNNNNNNN\                 ..NNNNNNNNNN.                                            ..33333333333.
	rem ..NNNNNNNNNNNNNNNNNNNN\                ..NNNNNNNNNN.                                            ..33333333333.

	rem ..NNNNNNNNNNNNNNNNNNNNN\               ..NNNNNNNNNN.                                            ..33333333333.
	rem ..NNNNNNNNNNNNNNNNNNNNNN\              ..NNNNNNNNNN.                                            ..33333333333.

	rem ..NNNNNNNNNN.\NNNNNNNNNNN\             ..NNNNNNNNNN.                                            ..33333333333.
	rem ..NNNNNNNNNN.\\NNNNNNNNNNN\            ..NNNNNNNNNN.                                            ..33333333333.

	rem ..NNNNNNNNNN. \\NNNNNNNNNNN\           ..NNNNNNNNNN.                                            ..33333333333.
	rem ..NNNNNNNNNN.  \\NNNNNNNNNNN\          ..NNNNNNNNNN.              ______________________________//33333333333.
	rem ..NNNNNNNNNN.   \\NNNNNNNNNNN\         ..NNNNNNNNNN.            //3333333333333333333333333333333333333333333.

	rem ..NNNNNNNNNN.    \\NNNNNNNNNNN\        ..NNNNNNNNNN.           ..33333333333333333333333333333333333333333333.
	rem ..NNNNNNNNNN.     \\NNNNNNNNNNN\       ..NNNNNNNNNN.           ..33333333333333333333333333333333333333333333.
	rem ..NNNNNNNNNN.      \\NNNNNNNNNNN\      ..NNNNNNNNNN.           ..33333333333333333333333333333333333333333333.
	rem ..NNNNNNNNNN.       \\NNNNNNNNNNN\     ..NNNNNNNNNN.           ..33333333333333333333333333333333333333333333.

	rem ..NNNNNNNNNN.        \\NNNNNNNNNNN\    ..NNNNNNNNNN.           ..33333333333333333333333333333333333333333333.
	rem ..NNNNNNNNNN.         \\NNNNNNNNNNN\   ..NNNNNNNNNN.           ..33333333333333333333333333333333333333333333.
	rem ..NNNNNNNNNN.          \\NNNNNNNNNNN\  ..NNNNNNNNNN.            \\_______________________________333333333333.
	rem ..NNNNNNNNNN.           \\NNNNNNNNNNN\ ..NNNNNNNNNN.                                            \\33333333333.

	rem ..NNNNNNNNNN.            \\NNNNNNNNNNN\..NNNNNNNNNN.                                            ..33333333333.
	rem ..NNNNNNNNNN.             \\NNNNNNNNNNN\.NNNNNNNNNN.                                            ..33333333333.
	rem ..NNNNNNNNNN.              \\NNNNNNNNNNNNNNNNNNNNNN.                                            ..33333333333.
	rem ..NNNNNNNNNN.               \\NNNNNNNNNNNNNNNNNNNNN.                                            ..33333333333.

	rem ..NNNNNNNNNN.                \\NNNNNNNNNNNNNNNNNNNN.                                            ..33333333333.
	rem ..NNNNNNNNNN.                 \\NNNNNNNNNNNNNNNNNNN.                                            ..33333333333.
	rem ..NNNNNNNNNN.                  \\NNNNNNNNNNNNNNNNNN.      _______________________________________/33333333333.
	rem ..NNNNNNNNNN.                   \\NNNNNNNNNNNNNNNNN.     /333333333333333333333333333333333333333333333333333.

	rem ..NNNNNNNNNN.                    \\NNNNNNNNNNNNNNNN.     .33333333333333333333333333333333333333333333333333/
	rem ..NNNNNNNNNN.                     \\NNNNNNNNNNNNNNN.     .3333333333333333333333333333333333333333333333333/
	rem ..NNNNNNNNNN.                      \\NNNNNNNNNNNNNN.     .333333333333333333333333333333333333333333333333/
	rem ..NNNNNNNNNN.                       \\NNNNNNNNNNNNN.     .33333333333333333333333333333333333333333333333/
	rem ..__________.                        \\____________.     \______________________________________________/
		
	endlocal
