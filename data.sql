CREATE TABLE pokemon (
    p_Name  varchar(25) not null PRIMARY KEY,
    nationalNumber int not null,
    typeOne varchar(15) not null,
    typeTwo varchar(15),
    generation int not null,
    p_Description varchar(120) not null
);

CREATE TABLE breed (
    br_Name  varchar(25) not null,
    eggGroupOne varchar(15) not null,
    eggGroupTwo varchar(15),
    genderMale_Percent float,
    genderFemale_Percent float,
    eggCycle int not null,
    FOREIGN KEY(br_Name) REFERENCES pokemon(p_Name)
);

CREATE TABLE ability (
    a_Name varchar(25) not null PRIMARY KEY,
    a_Description varchar(120) not null
);

CREATE TABLE pokemonAbility (
  p_Name varchar(30), 
  a_Name varchar(30),
  FOREIGN KEY(p_Name) REFERENCES pokemon(p_Name),
  FOREIGN KEY(a_Name) REFERENCES ability(a_Name)
);

CREATE TABLE pokemonMoves (
  pm_Name varchar(30), 
  m_Name varchar(30),
  FOREIGN KEY(pm_Name) REFERENCES pokemon(p_Name),
  FOREIGN KEY(m_Name) REFERENCES moves(m_Name)
);

CREATE TABLE train (
    train_Name varchar(25) not null,
    evYield varchar(25) not null,
    catchRate int not null,
    baseFriendship int not null,
    baseExperience int not null,
    growthRate varchar(25) not null,
    FOREIGN KEY(train_Name) REFERENCES pokemon(p_Name)
);

CREATE TABLE typedefenses (
    type_Name varchar(25) not null,
    normal float not null,
    fire float not null,
    water float not null,
    electric float not null,
    grass float not null,
    ice float not null,
    fighting float not null,
    poison float not null,
    ground float not null,
    flying float not null,
    psychic float not null,
    bug float not null,
    rock float not null,
    ghost float not null,
    dragon float not null,
    dark float not null,
    steel float not null,
    fairy float not null,
    FOREIGN KEY(type_Name) REFERENCES pokemon(p_Name)
);

CREATE TABLE moves (
    m_Name varchar(40) not null PRIMARY KEY,
    type varchar(20) not null,
    category varchar(25),
    power int,
    accuracy int,
    PP int not null,
    effect varchar(120)
);

CREATE TABLE basestats (
    b_Name varchar(25) not null,
    attack int not null,
    defense int not null,
    hp int not null,
    speed int not null,
    spDefense int not null,
    spAttack int not null,
    total int not null,
    FOREIGN KEY(b_Name) REFERENCES pokemon(p_Name)
);

INSERT INTO pokemon(p_Name,nationalNumber,typeOne,typeTwo,generation,p_Description)
VALUES('bulbasaur',1,'grass','poison',1,'For some time after its birth, it grows by taking nourishment from the seed on its back.'),
('ivysaur',2,'grass','poison',1,'When the bud on its back starts swelling, a sweet aroma wafts to indicate the flower’s coming bloom.'),
('venusaur',3,'grass','poison',1,'After a rainy day, the flower on its back smells stronger. The scent attracts other Pokémon.'),
('charmander',4,'fire',null,1,'The fire on the tip of its tail is a measure of its life. If the Pokémon is healthy, its tail burns intensely.'),
('charmeleon',5,'fire',null,1,'In the rocky mountains where Charmeleon live, their fiery tails shine at night like stars.'),
('charizard',6,'fire','flying',1,'It is said that Charizard’s fire burns hotter if it has experienced harsh battles.'),
('squirtle',7,'water',null,1,'It hides in its shell to protect itself, then strikes back with spouts of water at every opportunity.'),
('wartortle',8,'water',null,1,'It is said to live 10,000 years. Its furry tail is popular as a symbol of longevity.'),
('blastoise',9,'water',null,1,'The jets of water it spouts from the rocket cannons on its shell can punch through thick steel.'),
('caterpie',10,'bug',null,1,'It releases a stench from its red antennae to repel enemies. It grows by molting repeatedly.'),
('metapod',11,'bug',null,1,'A steel-hard shell protects its tender body. The Pokémon quietly endures hardships while awaiting evolution.'),
('butterfree',12,'bug','flying',1,'It loves the nectar of flowers and can locate flower patches that have even tiny amounts of pollen.'),
('weedle',13,'bug','poison',1,'It eats its weight in leaves every day. It fends off attackers with the needle on its head.'),
('kakuna',14,'bug','poison',1,'While awaiting evolution, it hides from predators under leaves and in nooks of branches.'),
('beedrill',15,'bug','poison',1,'Its best attack involves flying around at high speed, striking with poison needles, then flying off.'),
('pidgey',16,'normal','flying',1,'It is docile and prefers to avoid conflict. If disturbed, however, it can ferociously strike back.'),
('pidgeotto',17,'normal','flying',1,'It flies over its wide territory in search of prey, downing it with its highly developed claws.'),
('pidgeot',18,'normal','flying',1,'By flapping its wings with all its might, Pidgeot can make a gust of wind capable of bending tall trees.'),
('rattata',19,'normal',null,1,'It’s cautious in the extreme, and its hardy vitality lets it live in any kind of environment.'),
('raticate',20,'normal',null,1,'It whittles down its constantly growing fangs by gnawing on hard things. It can chew apart cinder block walls.'),
('spearow',21,'normal','flying',1,'It flaps its small wings busily to fly. Using its beak, it searches in grass for prey.'),
('fearow',22,'normal','flying',1,'It has the stamina to fly all day on its broad wings. It fights by using its sharp beak.'),
('ekans',23,'poison',null,1,'It sneaks through grass without making a sound and strikes unsuspecting prey from behind.'),
('arbok',24,'poison',null,1,'The pattern on its belly is for intimidation. It constricts foes while they are frozen in fear.'),
('pikachu',25,'electric',null,1,'If it looses crackling power from the electric sacs on its cheeks, it is being wary.'),
('raichu',26,'electric',null,1,''),
('sandshrew',27,'ground',null,1,''),
('sandslash',28,'ground',null,1,''),
('nidoran♀',29,'poison',null,1,''),
('nidorina',30,'poison',null,1,''),
('nidoqueen',31,'poison','ground',1,''),
('nidoran♂',32,'poison',null,1,''),
('nidorino',33,'poison',null,1,''),
('nidoking',34,'poison','ground',1,''),
('clefairy',35,'fairy',null,1,''),
('clefable',36,'fairy',null,1,''),
('vulpix',37,'fire',null,1,''),
('ninetales',38,'fire',null,1,''),
('jigglypuff',39,'normal','fairy',1,''),
('wigglytuff',40,'normal','fairy',1,''),
('zubat',41,'poison','flying',1,''),
('golbat',42,'poison','flying',1,''),
('oddish',43,'grass','poison',1,''),
('gloom',44,'grass','poison',1,''),
('vileplume',45,'grass','poison',1,''),
('paras',46,'bug','grass',1,''),
('parasect',47,'bug','grass',1,''),
('venonat',48,'bug','poison',1,''),
('venomoth',49,'bug','poison',1,''),
('diglett',50,'ground',null,1,''),
('dugtrio',51,'ground',null,1,''),
('meowth',52,'normal',null,1,''),
('persian',53,'normal',null,1,''),
('psyduck',54,'water',null,1,''),
('golduck',55,'water',null,1,''),
('mankey',56,'fighting',null,1,''),
('primeape',57,'fighting',null,1,''),
('growlithe',58,'fire',null,1,''),
('arcanine',59,'fire',null,1,''),
('poliwag',60,'water',null,1,''),
('poliwhirl',61,'water',null,1,''),
('poliwrath',62,'water','fighting',1,''),
('abra',63,'psychic',null,1,''),
('kadabra',64,'psychic',null,1,''),
('alakazam',65,'psychic',null,1,''),
('machop',66,'fighting',null,1,''),
('machoke',67,'fighting',null,1,''),
('machamp',68,'fighting',null,1,''),
('bellsprout',69,'grass','poison',1,''),
('weepinbell',70,'grass','poison',1,''),
('victreebel',71,'grass','poison',1,''),
('tentacool',72,'water','poison',1,''),
('tentacruel',73,'water','poison',1,''),
('geodude',74,'rock','ground',1,''),
('graveler',75,'rock','ground',1,''),
('golem',76,'rock','ground',1,''),
('ponyta',77,'fire',null,1,''),
('rapidash',78,'fire',null,1,''),
('slowpoke',79,'water','psychic',1,''),
('slowbro',80,'water','psychic',1,''),
('magnemite',81,'electric','steel',1,''),
('magneton',82,'electric','steel',1,''),
('farfetch''d',83,'normal','flying',1,''),
('doduo',84,'normal','flying',1,''),
('dodrio',85,'normal','flying',1,''),
('seel',86,'water',null,1,''),
('dewgong',87,'water','ice',1,''),
('grimer',88,'poison',null,1,''),
('muk',89,'poison',null,1,''),
('shellder',90,'water',null,1,''),
('cloyster',91,'water','ice',1,''),
('gastly',92,'ghost','poison',1,''),
('haunter',93,'ghost','poison',1,''),
('gengar',94,'ghost','poison',1,''),
('onix',95,'rock','ground',1,''),
('drowzee',96,'psychic',null,1,''),
('hypno',97,'psychic',null,1,''),
('krabby',98,'water',null,1,''),
('kingler',99,'water',null,1,''),
('voltorb',100,'electric',null,1,''),
('electrode',101,'electric',null,1,''),
('exeggcute',102,'grass','psychic',1,''),
('exeggutor',103,'grass','psychic',1,''),
('cubone',104,'ground',null,1,''),
('marowak',105,'ground',null,1,''),
('hitmonlee',106,'fighting',null,1,''),
('hitmonchan',107,'fighting',null,1,''),
('lickitung',108,'normal',null,1,''),
('koffing',109,'poison',null,1,''),
('weezing',110,'poison',null,1,''),
('rhyhorn',111,'ground','rock',1,''),
('rhydon',112,'ground','rock',1,''),
('chansey',113,'normal',null,1,''),
('tangela',114,'grass',null,1,''),
('kangaskhan',115,'normal',null,1,''),
('horsea',116,'water',null,1,''),
('seadra',117,'water',null,1,''),
('goldeen',118,'water',null,1,''),
('seaking',119,'water',null,1,''),
('staryu',120,'water',null,1,''),
('starmie',121,'water','psychic',1,''),
('mr. mine',122,'psychic','fairy',1,''),
('scyther',123,'bug','flying',1,''),
('jynx',124,'ice','psychic',1,''),
('electabuzz',125,'electric',null,1,''),
('magmar',126,'fire',null,1,''),
('pinsir',127,'bug',null,1,''),
('tauros',128,'normal',null,1,''),
('magikarp',129,'water',null,1,''),
('gyarados',130,'water','flying',1,''),
('lapras',131,'water','ice',1,''),
('ditto',132,'normal',null,1,''),
('eevee',133,'normal',null,1,''),
('vaporeon',134,'water',null,1,''),
('jolteon',135,'electric',null,1,''),
('flareon',136,'fire',null,1,''),
('porygon',137,'normal',null,1,''),
('omanyte',138,'rock','water',1,''),
('omastar',139,'rock','water',1,''),
('kabuto',140,'rock','water',1,''),
('kabutops',141,'rock','water',1,''),
('aerodactyl',142,'rock','flying',1,''),
('snorlax',143,'normal',null,1,''),
('articuno',144,'ice','flying',1,''),
('zapdos',145,'electric','flying',1,''),
('moltres',146,'fire','flying',1,''),
('dratini',147,'dragon',null,1,''),
('dragonair',148,'dragon',null,1,''),
('dragonite',149,'dragon','flying',1,''),
('mewtwo',150,'psychic',null,1,''),
('mew',151,'psychic',null,1,'');

insert into breed (br_Name, eggGroupOne, eggGroupTwo, genderMale_Percent, genderFemale_Percent, eggCycle)
VALUES
('bulbasaur', 'grass', 'monster', 87.5, 12.5, 20),
('ivysaur', 'grass', 'monster', 87.5, 12.5, 20),
('venasaur', 'grass', 'monster', 87.5, 12.5, 20),
('charmander', 'dragon', 'monster', 87.5, 12.5, 20),
('charmeleon', 'dragon', 'monster', 87.5, 12.5, 20),
('charizard', 'dragon', 'monster', 87.5, 12.5, 20),
('squirtle', 'monster', 'water 1', 87.5, 12.5, 20),
('wartortle', 'monster', 'water 1', 87.5, 12.5, 20),
('blastoise', 'monster', 'water 1', 87.5, 12.5, 20),
('caterpie','bug',null,50,50,15),
('metapod','bug',null,50,50,15),
('butterfree','bug',null,50,50,15),
('weedle','bug',null,50,50,15),
('kakuna','bug',null,50,50,15) ,
('beedrill','bug',null,50,50,15),
('pidgey','flying',null,50,50,15),
('pidgeotto','flying',null,50,50,15),
('pidgeot','flying',null,50,50,15),
('rattata','field',null,50,50,15),
('raticate','field',null,50,50,15),
('spearow','flying',null,50,50,15),
('fearow','flying',null,50,50,15),
('ekans','dragon','field',50,50,20),
('arbok','dragon','field',50,50,20),
('pikachu','fairy','field',50,50,10);

insert into ability (a_Name, a_Description)
VALUES
('Adaptability','Powers up moves of the same type.'),
('Aerilate','Turns Normal-type moves into Flying-type moves.'),
('Aftermath','Damages the attacker landing the finishing hit.'),
('Air Lock','Eliminates the effects of weather.'),
('Analytic','Boosts move power when the Pokémon moves last.'),
('Anger Point','Maxes Attack after taking a critical hit.'),
('Anticipation','Senses a foe''s dangerous moves.'),
('Arena Trap','Prevents the foe from fleeing.'),
('Aroma Veil','Protects allies from attacks that limit their move choices.'),
('As One','Combines Unnerve and Chilling Neigh/Grim Neigh'),
('Aura Break','Reduces power of Dark- and Fairy-type moves.'),
('Bad Dreams','Reduces a sleeping foe''s HP.'),
('Ball Fetch','Retrieves a Poké Ball from a failed throw.'),
('Battery','Raises power of teammates'' Special moves.'),
('Battle Armor','The Pokémon is protected against critical hits.'),
('Battle Bond','Transform into Ash-Greninja after causing opponent to faint.'),
('Beast Boost','The Pokémon boosts its most proficient stat each time it knocks out a Pokémon.'),
('Berserk','Raises Special Attack when HP drops below half.'),
('Big Pecks','Protects the Pokémon from Defense-lowering attacks.'),
('Blaze','Powers up Fire-type moves in a pinch.'),
('Bulletproof','Protects the Pokémon from ball and bomb moves.'),
('Cheek Pouch','Restores additional HP when a Berry is consumed.'),
('Chilling Neigh','Boosts Attack after knocking out a Pokémon.'),
('Chlorophyll','Boosts the Pokémon''s Speed in sunshine.'),
('Clear Body','Prevents other Pokémon from lowering its stats.');

insert into train (train_Name, evYield, catchRate, baseFriendship, baseExperience, growthRate)
VALUES
('bulbasaur', '1 Special Attack', 45, 50, 64, 'Medium Slow'),
('ivysaur','1 Special Attack, 1 Special Defense',45,50,142,'Medium Slow'),
('venasaur', '2 Special Attack, 1 Special Defense',45,50,236,'Medium Slow'),
('charmander', '1 Speed',45,50,62,'Medium Slow'),
('charmeleon', '1 Special Attack, 1 Speed',45,50,142,'Medium Slow'),
('charizard', '3 Special Attack',45,50,240,'Medium Slow'),
('squirtle', '1 Defense',45,50,63,'Medium Slow'),
('wartortle', '1 Defense, 1 Special Defense',45,50,142,'Medium Slow'),
('blastoise', '3 Special Defense',45,50,239,'Medium Slow'),
('caterpie','1 HP',255,50,39,'Medium Fast'),
('metapod','2 Defense',120,50,72,'Medium Fast'),
('butterfree','2 Special Attack, 1 Special Defense',45,50,178,'Medium Fast'),
('weedle','1 Speed',255,50,39,'Medium Fast'),
('kakuna','2 Defense',120,50,72,'Medium Fast'),
('beedrill','2 Attack, 1 Special Defense',45,50,178,'Medium Fast'),
('pidgey','1 Speed',255,50,50,'Medium Slow'),
('pidgeotto','2 Speed',120,50,122,'Medium Slow'),
('pidgeot','3 Speed',45,50,216,'Medium Slow'),
('rattata','1 Speed',255,50,51,'Medium Fast'),
('raticate','2 Speed',127,50,145,'Medium Fast'),
('spearow','1 Speed',255,50,52,'Medium Fast'),
('fearow','2 Speed',90,50,155,'Medium Fast'),
('ekans','1 Attack',255,50,58,'Medium Fast'),
('arbok','2 Attack',90,50,157,'Medium Fast'),
('pikachu','2 Speed',190,50,112,'Medium Fast');

insert into basestats(b_Name, hp, attack, defense, spAttack, spDefense, speed, total)
VALUES
('bulbasaur', 45, 49, 49, 65, 65, 45, 318),
('ivysaur', 60, 62, 63, 80, 80, 60, 405), 
('venasaur', 80, 82, 83, 100, 100, 80, 525),
('charmander', 39, 52, 43, 60, 50, 65, 309),
('charmeleon', 58, 64, 58, 80, 65, 80, 405),
('charizard', 78, 84, 78, 109, 85, 100, 534),
('squirtle', 44, 48, 65, 50, 64, 43, 314),
('wartortle', 59, 63, 80, 65, 80, 58, 405),
('blastoise', 79, 83, 100, 85, 105, 78, 530),
('caterpie', 45, 30, 35, 20, 20, 45, 195),
('metapod', 50, 20, 55, 25, 25, 30, 205),
('butterfree', 60, 45, 50, 80, 80, 70, 395),
('weedle', 40, 35, 30, 20, 20, 50, 195),
('kakuna', 45, 25, 50, 25, 25, 35, 205),
('beedrill', 65, 90, 40, 45, 80, 75, 395),
('pidgey', 40, 45, 40, 35, 35, 56, 251 ),
('pidgeotto', 63, 60, 55, 50, 50, 71, 349),
('pidgeot', 83, 80, 75, 70, 70, 101, 479),
('rattata', 30, 56, 35, 25, 35, 72, 253	),
('raticate', 55, 81, 60, 50, 70, 97, 413),
('spearow', 40, 60, 30, 31, 31, 70, 262),
('fearow', 65, 90, 65, 61, 61, 100, 442),
('ekans', 35, 60, 44, 40, 54, 55, 288),
('arbok', 60, 95, 69, 65, 79, 80, 448),
('pikachu', 35, 55, 40, 50, 50, 90, 320);
  
insert into moves(m_Name, type, category, power, accuracy, PP, effect)
VALUES 
('Absorb', 'grass', 'special', 20, 100, 25, 'User recovers half the HP inflicted on opponent.'),
('Accelerock', 'rock', 'physical', 40, 100, 20, 'User attacks first.' ),
('Acid', 'poison', 'special', 40, 100, 30, 'May lower opponents Special Defense.'),
('Acid Armor', 'poison', null, null, null, 20, 'Sharply raises users Defense.'),
('Acid Spray', 'poison', 'special', 40, 100, 20, 'Sharply lowers opponents Special Defense.'),
('Acrobatics', 'flying', 'physical', 55, 100, 15, 'Stronger when the user does not have a held item.'),
('Acupressure', 'normal', null, null, null, 30, 'Sharply raises a random stat.'),
('Aerial Ace', 'flying', 'physical', 60, 100, 20, 'Ignores Accuracy and Evasiveness.'),
('Aeroblast', 'flying', 'special', 100, 95, 5, 'High critical hit ratio.'),
('After You', 'normal', null, null, null, 15, 'Gives target priority in the next turn.'),
('Agility', 'psychic', null, null, null, 30, 'Sharply raises users Speed.'), 
('Air Cutter', 'flying', 'special', 60, 95, 25, 'High critical hit ratio.'), 
('Air Slash', 'flying', 'special', 75, 95, 15, 'May cause flinching.'), 
('Ally Switch', 'psychic', null, null, null, 15, 'User switches with opposite teammate.'), 
('Amnesia', 'psychic', null, null, null, 20, 'Sharply raises users Special Defense.'); 

insert into typedefenses( type_Name, normal, fire, water, electric, grass, ice, fighting, poison, ground, flying, psychic, bug, rock, ghost, dragon, dark, steel, fairy) 
VALUES
('charmander', 1, 0.5, 2, 1, 0.5, 0.5, 1, 1, 2, 1, 1, 0.5, 2, 1, 1, 1, 0.5, 0.5), 
('charmeleon', 1, 0.5, 2, 1, 0.5, 0.5, 1, 1, 2, 1, 1, 0.5, 2, 1, 1, 1, 0.5, 0.5), 
('charizard', 1, 0.5, 2, 2, 0.25, 1, 0.5, 1, 0, 1, 1, 0.25, 4, 1, 1, 1, 0.5, 0.5), 
('squirtle', 1, 0.5, 0.5, 2, 2, 0.5, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0.5, 1), 
('wartortle', 1, 0.5, 0.5, 2, 2, 0.5, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0.5, 1),
('blastoise', 1, 0.5, 0.5, 2, 2, 0.5, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0.5, 1), 
('bulbasaur', 1, 2, 0.5, 0.5, 0.5, 2, 0.5, 1, 1, 2, 2, 1, 1, 1, 1, 1, 1, 0.5), 
('ivysaur', 1, 2, 0.5, 0.5, 0.5, 2, 0.5, 1, 1, 2, 2, 1, 1, 1, 1, 1, 1, 0.5),
('venasaur', 1, 2, 0.5, 0.5, 0.5, 2, 0.5, 1, 1, 2, 2, 1, 1, 1, 1, 1, 1, 0.5), 
('caterpie', 1, 2, 1, 1, 0.5, 1, 0.5, 1, 0.5, 2, 1, 1, 2, 1, 1, 1, 1, 1), 
('metapod', 1, 2, 1, 1, 0.5, 1, 0.5, 1, 0.5, 2, 1, 1, 2, 1, 1, 1, 1, 1), 
('butterfree', 1, 2, 1, 2, 0.25, 2, 0.25, 1, 0, 2, 1, 0.5, 4, 1, 1, 1, 1, 1), 
('weedle', 1, 2, 1, 1, 0.25, 1, 0.25, 0.5, 1, 2, 2, 0.5, 2, 1, 1, 1, 1, 0.5), 
('kakuna', 1, 2, 1, 1, 0.25, 1, 0.25, 0.5, 1, 2, 2, 0.5, 2, 1, 1, 1, 1, 0.5),
('beedrill', 1, 2, 1, 1, 0.25, 1, 0.25, 0.5, 1, 2, 2, 0.5, 2, 1, 1, 1, 1, 0.5); 