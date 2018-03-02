@echo off
color 6f
title Questlight 0.0.1 ALPHA
echo Welcome to Questlight!
echo/
echo Made by N3, version 0.1 ALPHA
echo/
echo This is an ALPHA build. This means that they're most likley quite a few bugs! Less than 5 percent of the game has currently been added.
pause
goto :name

:name
set /P Player1= What is your name? 
goto :confirmName
:confirmName
	set /P c=Your name is %Player1%, is this correct?[Y/N] 
	if /I "%c%" EQU "Y" goto :choice
	if /I "%c%" EQU "N" goto :name
	goto :confirmName

:choice
	set savelevel=choice
	Set var=6
	@echo %savelevel% 1>questlightsave.txt

	For /f "tokens*" %%i in (questlightsave.txt) do @echo %%i
	set /P c=You wake up in a grassy plains area. You see a house, a forest, and a cave. Where do you go first?[House/Forest/Cave] 
	if /I "%c%" EQU "House" goto :house1
	if /I "%c%" EQU "Forest" goto :forest1
	if /I "%c%" EQU "Cave" goto :cave1
	goto :choice

	:house1
		set savelevel=house1
		set /P c=You go to the house. Inside, you find some food, a broom, and someone sleeping. What do you do?[Food/Broom/Wake] 
		if /I "%c%" EQU "Food" goto :eat1Texture
		if /I "%c%" EQU "Broom" goto :takeWeaponBroom1Texture
		if /I "%c%" EQU "Wake" goto :humanFight1
		goto :house1
			:eat1Texture
				echo .  _______
				echo . /.......\  
				echo ..      \ .
				echo .. (   <O . 
				echo ..    ____.
				echo . \____/ 
				echo . .    .
				echo . /----\
				echo . .    .
				echo . .    .
				echo . ======================.
				echo .                       .
				echo .-----------------------.
				echo /                       \
				goto eat1
					:eat1
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
										echo   _               _
										echo  / \             / \
										echo  . .    ! ! !    . .
										echo  . .             . .
										echo  \ \____________/ /
										echo  /               \
										echo /                 \
										echo .    (0     0)    .
										echo .        0        .
										echo  \      /-\       /
										echo   \     \_/      /       ___
										echo    -            -       /   \
										echo     .          \_______/     .
										echo     .                    ___/
										echo     .  -------  _____   /
										echo     . .     .. .     . .
										echo     . .     .. .     . .
										echo     . .     .. .     . .
										echo    /  .    //  .    /  .
										echo    ----    - ----   ----
										echo		HP  [][]-  SUP      
										goto :rabbitFight1
											:rabbitFight1
												set savelevel=rabbitFight1
												set /P c=You sneak up on the rabbit. You attack it, doing 10 damage. What do you do now?[Attack/Defend] %Player1% HP 100 
												if /I "%c%" EQU "Attack" goto :rabbitAttack1Texture
												if /I "%c%" EQU "Defend" goto :rabbitDefend1Texture
												goto :rabbitFight1
													:rabbitAttack1Texture
														echo             _               _
														echo            / \             / \
														echo            . .    ! ! !    . .
														echo            . .             . .
														echo            \ \____________/ /
														echo            /               \
														echo           /                 \
														echo           .    (0     0)    .
														echo           .        0        .
														echo            \      /-\       /
														echo             \     \_/      /       ___
														echo              -            -       /   \
														echo               .          \_______/     .
														echo               .                    ___/
														echo               .  -------  _____   /
														echo               . .     .. .     . .
														echo               . .     .. .     . .
														echo               . .     .. .     . .
														echo              /  .    //  .    /  .
														echo              ----    - ----   ----
														echo		HP  [][]-  SUP DODGED!     
														goto :rabbitAttack1
															:rabbitAttack1
																set /P c=You attack again, but the rabbit dodges. What now?[Attack/Defend] %Player1% HP 100% 
																if /I "%c%" EQU "Attack" goto :rabbitAttack1Texture
																if /I "%c%" EQU "Defend" goto :rabbitDefend1Texture
																goto :rabbitAttack1
																	:rabbitDefend1Texture
																		echo   _               _
																		echo  / \             / \
																		echo  . .    ? ? ?    . .
																		echo  . .             . .
																		echo  \ \____________/ /
																		echo  /               \
																		echo /                 \
																		echo .    (0     0)    .
																		echo .        0        .
																		echo  \                /
																		echo   \    -----     /       ___
																		echo    -            -       /   \
																		echo     .          \_______/     .
																		echo     .                    ___/
																		echo     .  -------  _____   /
																		echo     . .     .. .     . .
																		echo     . .     .. .     . .
																		echo     . .     .. .     . .
																		echo    /  .    //  .    /  .
																		echo    ----    - ----   ----
																		echo		HP  [][]-  CON
																		goto rabbitDefend1
																			:rabbitDefend1
																				set /P c=You defend, but the rabbit doesn't attack. Instead, the rabbit is now confused. What now?[Attack/Defend]  %Player1% HP 100% 
																				if /I "%c%" EQU "Attack" goto :rabbitAttack2Texture
																				if /I "%c%" EQU "Defend" goto :rabbitDefend1Texture
																				goto :rabbitDefend1
																					:rabbitAttack2Texture
																						echo   _               _
																						echo  / \             / \
																						echo  . .    ? ? ?    . .
																						echo  . .             . .
																						echo  \ \____________/ /
																						echo  /               \
																						echo /                 \
																						echo .    (0     0)    .
																						echo .        0        .
																						echo  \                /
																						echo   \    -----     /       ___
																						echo    -            -       /   \
																						echo     .          \_______/     .
																						echo     .                    ___/
																						echo     .  -------  _____   /
																						echo     . .     .. .     . .
																						echo     . .     .. .     . .
																						echo     . .     .. .     . .
																						echo    /  .    //  .    /  .
																						echo    ----    - ----   ----
																						echo		HP  []--  CON
																						goto rabbitAttack2
																							:rabbitAttack2
																								set /P c=You attack, doing 12 damage. The rabbit is still confused![Attack/Defend]  %Player1% HP 100%
																								if /I "%c%" EQU "Attack" goto :rabbitAttack3Texture
																								if /I "%c%" EQU "Defend" goto :rabbitDefend3
																								goto :rabbitAttack2
																									:rabbitAttack3Texture
																										echo   _               _
																										echo  / \             / \
																										echo  . .             . .
																										echo  . .             . .
																										echo  \ \____________/ /
																										echo  /               \
																										echo /                 \
																										echo .     X     X     .
																										echo .        0        .
																										echo  \                /
																										echo   \    -----     /       ___
																										echo    -            -       /   \
																										echo     .          \_______/     .
																										echo     .                    ___/
																										echo     .  -------  _____   /
																										echo     . .     .. .     . .
																										echo     . .     .. .     . .
																										echo     . .     .. .     . .
																										echo    /  .    //  .    /  .
																										echo    ----    - ----   ----
																										echo		HP  ---  DEAD
																										goto rabbitAttack3
																											:rabbitAttack3
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
																																		echo ///////;\
																																		echo //////\;.\
																																		echo /////\.;\.\
																																		echo ////\.\;.\.\
																																		echo ///\.\.;\.\.\
																																		echo //\.\.\;.\.\.\
																																		echo /  \.\.;\.\.\.\
																																		echo -___---;--------
																																		goto build1
																																			:build1
																																				set savelevel=build1
																																				set /P c=You make a poor quality shelter, which you named %Shelter1Name%, that should last you for the night. You could also make a fire pit next to the makeshift shelter. What do you want to do?[Sleep/Fire/Specs]
																																				if /I "%c%" EQU "Specs" goto :shelterSpecs1
																																				if /I "%c%" EQU "Fire" goto :build2texture
																																				if /I "%c%" EQU "Sleep" goto :sleep1
																																				goto :build1
																						:build2texture
																							echo ///////;\          
																							echo //////\;.\         
																							echo /////\.;\.\               /
																							echo ////\.\;.\.\            _/\
																							echo ///\.\.;\.\.\          /   \_
																							echo //\.\.\;.\.\.\      __/_____ \____
																							echo /  \.\.;\.\.\.\    /\/\/\/\/\/\/\/\
																							echo -___---;--------   \______________/
																							goto :build2
																								:build2
																									set savelevel=build2
																									set /P c=You built a fire pit, and light a fire. Congrats! Your building skill is now level 1![Sleep] You can now build Decent-Quality buildings and upgrades! Skills: Building: Level 1: Amateur Stickpiler []---------
																									if /I "%c%" EQU "Sleep" goto :sleep2
																									goto :build2
																									:sleep2
																										set /P c=You go to sleep in %Shelter1Name%. The fire feels warm as you go to sleep. When you wake up, the fire is still there, but very dim. Around you you see a stick, some berries, and %Shelter1Name%. What now? 
																										if /I "%c%" EQU "Stick" goto :stick1
																										
																										
																										goto :sleep2
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
																								:gather3
																									set /P c=You go and gather the berries you saw last night. They look, and smell delicious. You grab 50 berries. Eat one?[Y/N]
																									if /I "%c%" EQU "Y" goto :eat3
																									if /I "%c%" EQU "N" goto :day2
																									goto :gather3
																										:day2
																										rem NOT DONE, WIP
																											set /P c=You decided that you wouldn't eat a berry yet. After going back to %Shelter1Name%, what do you do? (WIP)
																											goto :choice
																										:eat3
																										rem NOT DONE, WIP
																											set /P c=You eat the berry. Later, you start to say "Just one more". You ate all of the berries. Well, at least it was very filling. (WIP)
																											goto :choice
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
															:rabbitDefend3
																set /P c=The rabbit understands what you're doing now, and gave you a funny look, then walk away... Where do you go now?[Forest/Cave]
																if /I "%c%" EQU "Forest" goto :forest3
																if /I "%c%" EQU "Cave" goto :cave3
																goto :rabbitDefend3
													:rabbitDefend2
														set /P c=You defended, but the rabbit is still confused![Attack/Defend/Info]  %Player1% HP 100%, Rabbit: HP 66%  CONFUSED
														if /I "%c%" EQU "Attack" goto :rabbitAttack2
														if /I "%c%" EQU "Defend" goto :rabbitDefend2
														goto :rabbitDefend2
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
										echo      _____
										echo     /_____\
										echo    /  \ /  \
										echo   (. (O O) .)
										echo    \   n   /
										echo   __/-----\__
										echo  /           \
										echo  ._         _.
										echo  . \.     ./ .
										echo  .  .     .  .
										echo  .  .     .  .
										echo  /  \_____/  \
										echo  \__/  _  \__/
										echo    .  / \  .
										echo    .  . .  .
										echo   _.__. .__._
										echo  /____. .____\
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
				echo      _____
				echo     /_____\
				echo    /  \ /  \
				echo   (. (O O) .)
			    echo    \   n   /
			    echo   __/-----\__
			    echo  /           \
			    echo  ._         _.
			    echo  . \.     ./ .
			    echo  .  .     .  .
			    echo  .  .     .  .
			    echo  /  \_____/  \
			    echo  \__/  _  \__/
   			    echo    .  / \  .
			    echo    .  . .  .
				echo   _.__. .__._
			    echo  /____. .____\
				echo    HP  [][][][][] ANG
				goto :humanFight1
				:humanFight1
					set /P c=You woke the man up, and he isn't so happy about it. The man attacks! What do you do?[Defend/Dodge/Attack] 
					if /I "%c%" EQU "Defend" goto :humanDefend1
					if /I "%c%" EQU "Dodge" goto :humanDodge1
					if /I "%c%" EQU "Attack" goto :humanAttack1
					goto :humanFight1
						:humanDefend1Texture
								echo      _____
								echo     /_____\
								echo    /  \ /  \
								echo   (. (O O) .)
								echo    \   n   /
								echo   __/-----\__
								echo  /           \
								echo  ._         _.
								echo  . \.     ./ .
								echo  .  .     .  .
								echo  .  .     .  .
								echo  /  \_____/  \
								echo  \__/  _  \__/
								echo    .  / \  .
								echo    .  . .  .
								echo   _.__. .__._
								echo  /____. .____\
								echo    HP  [][][][][] ANG
								goto :humanDefend1
									:humanDefend1
										set /P c=You went into a defensive stance, sheilding you from 15 damage![Defend/Dodge/Attack]
										if /I "%c%" EQU "Defend" goto :humanDefend3Texture
										if /I "%c%" EQU "Attack" goto :humanAttack2Texture
										goto humanDefend1
							:humanDodge1Texture
									echo      _____
									echo     /_____\
									echo    /  \ /  \
									echo   (. (O O) .)
									echo    \   n   /
									echo   __/-----\__
									echo  /           \
									echo  ._         _.
									echo  . \.     ./ .
									echo  .  .     .  .
									echo  .  .     .  .
									echo  /  \_____/  \
									echo  \__/  _  \__/
									echo    .  / \  .
									echo    .  . .  .
									echo   _.__. .__._
									echo  /____. .____\
									echo    HP  [][][][][] ANG
									goto :humanDodge1
										:humanDodge1
											set /P c=You dodged, avoiding 15 damage!
											if /I "%c%" EQU "Defend" goto :humanDefend2Texture
											if /I "%c%" EQU "Attack" goto :humanAttack2Texture
											goto :humanDodge1
							:humanAttack1Texture
									echo      _____
									echo     /_____\
									echo    /  \ /  \
									echo   (. (O O) .)
									echo    \   n   /
									echo   __/-----\__
									echo  /           \
									echo  ._         _.
									echo  . \.     ./ .
									echo  .  .     .  .
									echo  .  .     .  .
									echo  /  \_____/  \
									echo  \__/  _  \__/
									echo    .  / \  .
									echo    .  . .  .
									echo   _.__. .__._
									echo  /____. .____\
									echo    HP  [][][][]-- ANG
									goto :humanAttack1
										:humanAttack1
											set /P c=You attacked, but you took 15 damage instead... You delt 10 damage though... [Attack/Defend] 
											if /I "%c%" EQU "Defend" goto :humanDefend2
											if /I "%c%" EQU "Attack" goto :humanAttack2
											goto :humanAttack1
												:humanDefend2Texture
													echo      _____
													echo     /_____\
													echo    /  \ /  \
													echo   (. (O O) .)
													echo    \   n   /
													echo   __/-----\__
													echo  /           \
													echo  ._         _.
													echo  . \.     ./ .
													echo  .  .     .  .
													echo  .  .     .  .
													echo  /  \_____/  \
													echo  \__/  _  \__/
													echo    .  / \  .
													echo    .  . .  .
													echo   _.__. .__._
													echo  /____. .____\
													echo    HP  [][][][]-- ANG
													goto :humanDefend2
														:humanDefend2
															set /P c=You defended, sheilding you from 15 damage! [Attack/Defend] 
															if /I "%c%" EQU "Defend" goto :humanDefend2Texture
															if /I "%c%" EQU "Attack" goto :humanAttack2Texture
															goto :humanDefend2
												:humanAttack2Texture
													echo      _____
													echo     /_____\
													echo    /  \ /  \
													echo   (. X   X .)
													echo    \   -   /
													echo   __/-----\__
													echo  /           \
													echo  ._         _.
													echo  . \.     ./ .
													echo  .  .     .  .
													echo  .  .     .  .
													echo  /  \_____/  \
													echo  \__/  _  \__/
													echo    .  / \  .
													echo    .  . .  .
													echo   _.__. .__._
													echo  /____. .____\
													echo    HP  ---------- KO
													goto :humanAttack2
														:humanAttack2
															set /P c=Critical Hit! He is now knocked out. [Leave/Explore]
															if /I "%c%" EQU "Leave" goto :field1
															if /I "%c%" EQU "Explore" goto :exploreHouse1
															goto :humanAttack2
         
	:forest1
		set /P c=You walk into the forest. After awhile, you see a clearing. In the clearing, you see a knife, a deer, and some berries. What do you do?[Hunt/Gather]
		if /I "%c%" EQU "Hunt" goto :hunt1
		if /I "%c%" EQU "Gather" goto :gather1
		goto :forest1
			:deerFight1Texture
			    echo \  \ \          / /  /
				echo  \__\/          \/__/
				echo     \ __________ /
				echo      /          \
				echo     /            \
				echo    /   <O  _ O>   \
				echo    \      (_)     /           _
				echo     \_____O______/           / \
				echo       .        .             . .
				echo 	   .         \____________/ .
				echo 	   .                        .
				echo   	   .    .           \\\\    .
				echo 	   .    .     _________     .
				echo 	   .    .    .       \ \    .
				echo 	   .    .    .       . .    .
				echo 	   .____.____.       ._.____.
				echo 	  /____//___/       /__/____/
				echo             HP  [][]--- SUP
				goto :deerFight1
					:deerFight1
						set /P c=You attack with the knife, doing 30 damage.[Attack/Defend] %Player1% HP 100
						if /I "%c%" EQU "Attack" goto :deerAttack1Texture
						if /I "%c%" EQU "Defend" goto :deerDefend1Texture
						goto :deerFight1
							:deerDefend1Texture
								echo \  \ \          / /  /
								echo  \__\/          \/__/
								echo     \ __________ /
								echo      /          \
								echo     /            \
								echo    /  ((O  _ O))  \
								echo    \      (_)     /           _
								echo     \______O_____/           / \
								echo       .        .             . .
								echo 	   .         \____________/ .
								echo 	   .                        .
								echo   	   .    .            \\\\   .
								echo 	   .    .     _________     .
								echo 	   .    .    .       \ \    .
								echo 	   .    .    .       . .    .
								echo 	   .____.____.       ._.____.
								echo 	  /____//___/       /__/____/
								echo             HP  [][]--- SHO
								goto :deerDefend1
									:deerDefend1
										rem Need to finish the Only Attack branch of deerFight1 in order to have fight-defend-attack number (FIXED)
										set /P c=You defend against the deer, saving you from 15 damage. You have also shocked the deer.[Attack/Defend] 
										if /I "%c%" EQU "Attack" goto deerAttack6Texture
										if /I "%c%" EQU "Defend" goto deerDefend1Texture
										goto :deerDefend1
											:deerAttack6Texture
												echo \  \ \          / /  /
												echo  \__\/          \/__/
												echo     \ __________ /
												echo      /          \
												echo     /            \
												echo    /  ((O  _ O))  \
												echo    \      (_)     /           _
												echo     \______O_____/           / \
												echo       .        .             . .
												echo 	   .         \____________/ .
												echo 	   .                        .
												echo   	   .    .            \\\\   .
												echo 	   .    .     _________     .
												echo 	   .    .    .       \ \    .
												echo 	   .    .    .       . .    .
												echo 	   .____.____.       ._.____.
												echo 	  /____//___/       /__/____/
												echo             HP  [---- SHO
												goto :deerAttack6
													:deerAttack6
														set /P c=You attack the deer. Because it was shocked, it couldn't defend in time! Critical hit! %Player1% did 18 damage![Attack/Defend] %Player1%'s HP: 100
														if /I "%c%" EQU "Attack" goto deerAttack7Texture
														if /I "%c%" EQU "Defend" goto deerDefend2Texture
														goto :deerAttack6
															:deerAttack7Texture
																echo \  \ \          / /  /
																echo  \__\/          \/__/
																echo     \ __________ /
																echo      /          \
																echo     /            \
																echo    /  ((O  _ O))  \
																echo    \      (_)     /           _
																echo     \______O_____/           / \
																echo       .        .             . .
																echo 	   .         \____________/ .
																echo 	   .                        .
																echo   	   .    .            \\\\   .
																echo 	   .    .     _________     .
																echo 	   .    .    .       \ \    .
																echo 	   .    .    .       . .    .
																echo 	   .____.____.       ._.____.
																echo 	  /____//___/       /__/____/
																echo             HP  [---- SHO
																goto :deerAttack7
																	:deerAttack7
																	rem NEED TO ADD!
							:deerAttack1Texture
							    echo \  \ \          / /  /
								echo  \__\/          \/__/
								echo     \ __________ /
								echo      /          \
								echo     /    \   /   \
								echo    /   <O  _ O>   \
								echo    \      (_)     /           _
								echo     \_____---____/           / \
								echo       .        .             . .
								echo 	   .         \____________/ .
								echo 	   .                        .
								echo   	   .    .            \\\\   .
								echo 	   .    .     _________     .
								echo 	   .    .    .       \ \    .
								echo 	   .    .    .       . .    .
								echo 	   .____.____.       ._.____.
								echo 	  /____//___/       /__/____/
								echo             HP  [][]--- ANG
								goto :deerAttack1
									:deerAttack1
										set /P c=You attempted to attack with the knife, but the deer attacked %Player1%, doing 15 damage to %Player1%. You also made the deer angry[Attack/Defend] %Player1%'s HP: 85
										if /I "%c%" EQU "Attack" goto :deerAttack2Texture
										if /I "%c%" EQU "Defend" goto :deerDefend2Texture
										goto :deerAttack1
													
											:deerAttack2Texture
												echo \  \ \          / /  /
												echo  \__\/          \/__/
												echo     \ __________ /
												echo      /          \
												echo     /    \   /   \
												echo    /   <O  _ O>   \
												echo    \      (_)     /           _
												echo     \_____---____/           / \
												echo       .        .             . .
												echo 	   .         \____________/ .
												echo 	   .                        .
												echo   	   .    .            \\\\   .
												echo 	   .    .     _________     .
												echo 	   .    .    .       \ \    .
												echo 	   .    .    .       . .    .
												echo 	   .____.____.       ._.____.
												echo 	  /____//___/       /__/____/
												echo             HP  [][]--- ANG
												goto :deerAttack2
													:deerAttack2
														set /P c=You attempted to attack the deer once again, but it defended, blocking itself from 20 damage.[Attack/Defend] %Player1%'s HP: 85
														if /I "%c%" EQU "Attack" goto :deerAttack3Texture
														if /I "%c%" EQU "Defend" goto :deerDefend3Texture
														goto :deerAttack2
															:deerAttack3Texture
																echo \  \ \          / /  /
																echo  \__\/          \/__/
																echo     \ __________ /
																echo      /          \
																echo     /    \   /   \
																echo    /   <O  _ O>   \
																echo    \      (_)     /           _
																echo     \______^_____/           / \
																echo       .        .             . .
																echo 	   .         \____________/ .
																echo 	   .                        .
																echo   	   .    .            \\\\   .
																echo 	   .    .     _________     .
																echo 	   .    .    .       \ \    .
																echo 	   .    .    .       . .    .
																echo 	   .____.____.       ._.____.
																echo 	  /____//___/       /__/____/
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
																				echo    /   <O  _ O>   \
																				echo    \      (_)     /           _
																				echo     \____ /\ ____/           / \
																				echo       .  \\//  .             . .
																				echo 	   .   --    \____________/ .
																				echo 	   .                        .
																				echo   	   .    .            \\\\   .
																				echo 	   .    .     _________     .
																				echo 	   .    .    .       \ \    .
																				echo 	   .    .    .       . .    .
																				echo 	   .____.____.       ._.____.        _____/
																				echo 	  /____//___/       /__/____/       <_____----
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
																								echo    /   <O  _ O>   \
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
																								echo 	  /____//___/       /__/____/       <_____----
																								echo             HP  [][]--- RAGE                 \
																								goto :deerAttack5'
																									:deerAttack5
																										echo You attempted to attack the deer, but the deer goes into a rage, doing 48 damage.
																										pause
																										goto death2Texture
																											:death2Texture
																												echo  __________
																												echo /          \
																												echo .   RIP    .
																												echo .          .
																												echo . %Player1%
																												echo .          .
																												echo .Deer Fight.
																												echo .          .
																												echo ^^^^^^^^^^^^
																												goto :death2
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
		if /I "%c%" EQU "Find" goto :find
		goto :cave1
			:find
				echo You attempt to find what it is that is watching you... But then something hits you...
				pause
				goto :death3Texture
					:death3Texture
						echo  __________
						echo /          \
						echo .   RIP    .
						echo .          .
						echo . %Player1%
						echo .          .
						echo .    ???   .
						echo .          .
						echo ^^^^^^^^^^^^
						goto :death3
							:death3
								set /P c=You died from an unknown blow to the head. Tip: Avoid going to dark places without a weapon! Want to go back?[Y/N]
								if /I "%c%" "Y" goto :choice
								if /I "%c%" "N" exit
						

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
goto :EOF