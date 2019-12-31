require_relative '../config/environment'
Character.delete_all
Level.delete_all
Enemy.delete_all

wolverine = Character.create(name:"Wolverine", health:100, curr_health: 100, lives: 3)
jeangrey = Character.create(name:"Jean Grey", health:100, curr_health: 100, lives: 3)
quicksilver = Character.create(name:"Quick-Silver", health:100, curr_health: 100, lives: 3)

phoenix = Enemy.create(name:"Dark Phoenix",health:100,curr_health:100,strength:3)
magneto = Enemy.create(name:"Magneto",health:100,curr_health:100,strength:3)
thanos = Enemy.create(name:"Thanos",health:100,curr_health:100,strength:3)

level1 = Level.create(title:"Phase 1", description: "Magneto has taken the President hostage. Defeat him and save the President", enemies_id: 2)
level2 = Level.create(title:"Phase 2", description: "Phoneix is out of control and trying to take take over city hall",enemies_id: 1)
level3 = Level.create(title:"Phase 3", description:"Thanos is attempting to take the last infinite stone. Destroy him before he does.", enemies_id: 3)
