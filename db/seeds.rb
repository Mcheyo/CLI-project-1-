require_relative '../config/environment'
Character.delete_all
Level.delete_all
Enemy.delete_all
Move.delete_all 
CharacterMove.delete_all
BadMove.delete_all
EnemyMove.delete_all

greenmartian = Character.create(name:"Martian Man-Hunter", health:100, curr_health: 100, lives: 3)
superman = Character.create(name:"SuperMan", health:100, curr_health: 100, lives: 3)
flash = Character.create(name:"Flash", health:100, curr_health: 100, lives: 3)

brainiac = Enemy.create(name:"Brainiac",health:100,curr_health:100,strength:3)
joker = Enemy.create(name:"Joker",health:100,curr_health:100,strength:3)
darkseid = Enemy.create(name:"Darkseid",health:100,curr_health:100,strength:3)

level1 = Level.create(title:"Phase 1", description: "Joker is up to his old tricks. He is holding the mayor of Gotham hostage. Help Batman defeat him!", enemies_id: joker.id)
level2 = Level.create(title:"Phase 2", description: "We just got word that Metropolis is under attack by Brainiac. Get over there and help defend the city! ",enemies_id: brainiac.id)
level3 = Level.create(title:"Phase 3", description:"Shortly after defeating Brainiac a boom tube appears and the mastermind behind everthing appears. Its Darkseid! Save us all! .", enemies_id: darkseid.id)

move1 = Move.create(name: "Regeneration")
move2 = Move.create(name:"Heat Vision")
move3 = Move.create(name: "Speed Force")

gm_move = CharacterMove.create(char_id: greenmartian.id, move_id: move1.id)
sm_move = CharacterMove.create(char_id: superman.id, move_id: move2.id)
f_move = CharacterMove.create(char_id: flash.id, move_id: move2.id)


e_move1 = BadMove.create(name:"Laughing Gas")
e_move2 = BadMove.create(name:"Mind Control")
e_move3 = BadMove.create(name:"Omega Beam")

j_move = EnemyMove.create(enemy:joker, move_id: e_move1.id)
b_move = EnemyMove.create(enemy:brainiac, move_id: e_move2.id)
ds_move = EnemyMove.create(enemy:darkseid, move_id: e_move3.id)