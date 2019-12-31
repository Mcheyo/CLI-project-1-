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

level1 = Level.create(title:"Phase 1", description: "Magneto has taken the President hostage. Defeat him and save the President", enemies_id: magneto.id)
level2 = Level.create(title:"Phase 2", description: "Phoneix is out of control and trying to take take over city hall",enemies_id: phoenix.id)
level3 = Level.create(title:"Phase 3", description:"Thanos is attempting to take the last infinite stone. Destroy him before he does.", enemies_id: thanos.id)

move1 = Move.create(name: "Regeneration")
move2 = Move.create(name:"Telekinesis")
move3 = Move.create(name: "Agility")

w_move = CharacterMove.create(char_id: wolverine.id, move_id: move1.id)
j_move = CharacterMove.create(char_id: jeangrey.id, move_id: move2.id)
qs_move = CharacterMove.create(char_id: quicksilver.id, move_id: move2.id)