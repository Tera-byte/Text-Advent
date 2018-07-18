-- Code written and maintained by Devon L. Steyn aka Terabyte --
math.randomseed(os.time())

io.write("Hello! Welcome to: TEXT ADVENTURE!", "\n\n")
io.write("What would you like to do?", "\n")

io.write("A.) Attack", "\n")
io.write("B.) Leave", "\n")

userinput = io.read()

userhealth = 100
enemyhealth = math.random(50)

userdamagedone = math.random(50)

if (tostring(userinput) == "A") or (tostring(userinput) == "a") then
	repeat
		local enemies = {
			"Skeleton",
			"Zombie", "Bear"
		}
		local enemieslength = #enemies
		local randomenemy = enemies[math.random(enemieslength)]
		io.write("You come across a ", tostring(randomenemy), "!", "\n")
		io.write("What do you do?!", "\n")
		io.write("A.) Fight", "\n")
		io.write("B.) Run", "\n")
		userinput = io.read()
		local newEnemy = randomenemy
		if (tostring(userinput) == "A") or (tostring(userinput) == "a") then
			repeat
				if newEnemy == "Skeleton" then
					io.write("You attack the ", "Skeleton", " and deal ", userdamagedone, " damage.", "\n")
					userdamagedone = math.random(50)
				elseif newEnemy == "Zombie" then
					io.write("You attack the ", "Zombie", " and deal ", userdamagedone, " damage.", "\n")
					userdamagedone = math.random(50)
				elseif newEnemy == "Bear" then
					io.write("You attack the ", "Bear", " and deal ", userdamagedone, " damage.", "\n")
					userdamagedone = math.random(50)
				end
				if userdamagedone > enemyhealth then
					io.write("You win! Come back again!", "\n\n")
					break
				end
			until 
				enemyhealth == 0
		else
			io.write("You run away from the enemy! Wuss..", "\n")
			break
		end
	until 
		userhealth == 0
else
	io.write("You leave the dungeon...", "\n")
end