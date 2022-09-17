.create "pokestadiumgs.n64",0
.n64
.include "constants/pokemon_constants.s"
.include "constants/type_constants.s"
.include "constants/move_constants.s"
.include "constants/item_constants.s"
.include "constants/decoration_constants.s"

.include "rom_header.s"

.incbin "baseromgs.n64",0x40,0x95CE0

; XXX What are these monotonically increasing 16‐bit values?
.incbin "baseromgs.n64",0x95D20,0x2234

CarrierCartridgeString:
	.ascii "PokeMonStadium3CarrierCartridge",0

	.align 16

CharMap1:
; USA
	.db 0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x80 ;
	.db 0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x80 ;
	.db 0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x80 ;
	.db 0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x80 ;
	.db 0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x80 ;
	.db 0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x80 ;
	.db 0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x80 ;
	.db 0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x80 ;
	.db 0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x80 ;
	.db 0x80,0x80,0x80,0x80,0x80,0x80,0x0A,0x80 ;                   \n
	.db 0x00,0x80,0x80,0x80,0x80,0x80,0x80,0x80 ; \0
	.db 0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x80 ;
	.db 0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x80 ;
	.db 0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x80 ;
	.db 0x91,0x92,0x9B,0x9C,0x80,0x93,0x80,0x80 ; PO Ké “  ”     …
	.db 0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x20 ;
	.db 0x41,0x42,0x43,0x44,0x45,0x46,0x47,0x48 ; A  B  C  D  E  F  G  H
	.db 0x49,0x4A,0x4B,0x4C,0x4D,0x4E,0x4F,0x50 ; I  J  K  L  M  N  O  P
	.db 0x51,0x52,0x53,0x54,0x55,0x56,0x57,0x58 ; Q  R  S  T  U  V  W  X
	.db 0x59,0x5A,0x28,0x29,0x3A,0x3B,0x5B,0x5D ; Y  Z  (  )  :  ;  [  ]
	.db 0x61,0x62,0x63,0x64,0x65,0x66,0x67,0x68 ; a  b  c  d  e  f  g  h
	.db 0x69,0x6A,0x6B,0x6C,0x6D,0x6E,0x6F,0x70 ; i  j  k  l  m  n  o  p
	.db 0x71,0x72,0x73,0x74,0x75,0x76,0x77,0x78 ; q  r  s  t  u  v  w  x
	.db 0x79,0x7A,0x80,0x80,0x80,0x80,0x80,0x80 ; y  z
	.db 0xC4,0xD6,0xDC,0xE4,0xF6,0xFC,0x80,0x80 ; Ä  Ö  Ü  ä  ö  ü
	.db 0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x80 ;
	.db 0x94,0x95,0x96,0x97,0x98,0x99,0x9A,0x80 ; ’d ’l ’m ’r ’s ’t ’v
	.db 0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x80 ;
	.db 0x27,0xBC,0xBD,0x2D,0x80,0x80,0x3F,0x21 ; '  PK MN -        ?  !
	.db 0x2E,0x26,0xE9,0x80,0x80,0x80,0x80,0xA9 ; .  &  é              ♂
	.db 0xA5,0xD7,0x2E,0x2F,0x2C,0xBE,0x30,0x31 ; ¥  ×  .  /  ,  ♀  0  1
	.db 0x32,0x33,0x34,0x35,0x36,0x37,0x38,0x39 ; 2  3  4  5  6  7  8  9

CharMap2:
; Germany, France
	.db 0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x80 ;
	.db 0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x80 ;
	.db 0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x80 ;
	.db 0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x80 ;
	.db 0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x80 ;
	.db 0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x80 ;
	.db 0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x80 ;
	.db 0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x80 ;
	.db 0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x80 ;
	.db 0x80,0x80,0x80,0x80,0x80,0x80,0x0A,0x80 ;                   \n
	.db 0x00,0x80,0x80,0x80,0x80,0x80,0x80,0x80 ; \0
	.db 0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x80 ;
	.db 0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x80 ;
	.db 0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x80 ;
	.db 0x91,0x92,0x9B,0x9C,0x80,0x93,0x80,0x80 ; PO Ké “  ”     …
	.db 0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x20 ;
	.db 0x41,0x42,0x43,0x44,0x45,0x46,0x47,0x48 ; A  B  C  D  E  F  G  H
	.db 0x49,0x4A,0x4B,0x4C,0x4D,0x4E,0x4F,0x50 ; I  J  K  L  M  N  O  P
	.db 0x51,0x52,0x53,0x54,0x55,0x56,0x57,0x58 ; Q  R  S  T  U  V  W  X
	.db 0x59,0x5A,0x28,0x29,0x3A,0x3B,0x5B,0x5D ; Y  Z  (  )  :  ;  [  ]
	.db 0x61,0x62,0x63,0x64,0x65,0x66,0x67,0x68 ; a  b  c  d  e  f  g  h
	.db 0x69,0x6A,0x6B,0x6C,0x6D,0x6E,0x6F,0x70 ; i  j  k  l  m  n  o  p
	.db 0x71,0x72,0x73,0x74,0x75,0x76,0x77,0x78 ; q  r  s  t  u  v  w  x
	.db 0x79,0x7A,0xE0,0xE8,0xE9,0xF9,0xDF,0xE7 ; y  z  à  è  é  ù  ß  ç
	.db 0xC4,0xD6,0xDC,0xE4,0xF6,0xFC,0xEB,0xEF ; Ä  Ö  Ü  ä  ö  ü  ë  ï
	.db 0xE2,0xF4,0xFB,0xEA,0xEE,0x80,0x80,0x80 ; â  ô  û  ê  î
	.db 0x80,0x80,0x80,0x80,0x9D,0x9E,0x9F,0xA2 ;             c’ d’ j’ l’
	.db 0xA3,0xA4,0xA6,0xA7,0x98,0xA8,0xAB,0xAC ; m’ n’ p’ s’ ’s t’ u’ y’
	.db 0x27,0xBC,0xBD,0x2D,0x2B,0x80,0x3F,0x21 ; '  PK MN -  +     ?  !
	.db 0x2E,0x26,0xE9,0x80,0x80,0x80,0x80,0xA9 ; .  &  é              ♂
	.db 0xA5,0xD7,0x2E,0x2F,0x2C,0xBE,0x30,0x31 ; ¥  ×  .  /  ,  ♀  0  1
	.db 0x32,0x33,0x34,0x35,0x36,0x37,0x38,0x39 ; 2  3  4  5  6  7  8  9

CharMap3:
; Italy, Spain
	.db 0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x80 ;
	.db 0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x80 ;
	.db 0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x80 ;
	.db 0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x80 ;
	.db 0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x80 ;
	.db 0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x80 ;
	.db 0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x80 ;
	.db 0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x80 ;
	.db 0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x80 ;
	.db 0x80,0x80,0x80,0x80,0x80,0x80,0x0A,0x80 ;                   \n
	.db 0x00,0x80,0x80,0x80,0x80,0x80,0x80,0x80 ; \0
	.db 0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x80 ;
	.db 0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x80 ;
	.db 0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x80 ;
	.db 0x91,0x92,0x9B,0x9C,0x80,0x93,0x80,0x80 ; PO Ké “  ”     …
	.db 0x80,0x80,0x80,0x80,0x80,0x80,0x80,0x20 ;
	.db 0x41,0x42,0x43,0x44,0x45,0x46,0x47,0x48 ; A  B  C  D  E  F  G  H
	.db 0x49,0x4A,0x4B,0x4C,0x4D,0x4E,0x4F,0x50 ; I  J  K  L  M  N  O  P
	.db 0x51,0x52,0x53,0x54,0x55,0x56,0x57,0x58 ; Q  R  S  T  U  V  W  X
	.db 0x59,0x5A,0x28,0x29,0x3A,0x3B,0x5B,0x5D ; Y  Z  (  )  :  ;  [  ]
	.db 0x61,0x62,0x63,0x64,0x65,0x66,0x67,0x68 ; a  b  c  d  e  f  g  h
	.db 0x69,0x6A,0x6B,0x6C,0x6D,0x6E,0x6F,0x70 ; i  j  k  l  m  n  o  p
	.db 0x71,0x72,0x73,0x74,0x75,0x76,0x77,0x78 ; q  r  s  t  u  v  w  x
	.db 0x79,0x7A,0xE0,0xE8,0xE9,0xF9,0xC0,0xC1 ; y  z  à  è  é  ù  À  Á
	.db 0xC4,0xD6,0xDC,0xE4,0xF6,0xFC,0xC8,0xC9 ; Ä  Ö  Ü  ä  ö  ü  È  É
	.db 0xCC,0xCD,0xD1,0xD2,0xD3,0xD9,0xDA,0xE1 ; Ì  Í  Ñ  Ò  Ó  Ù  Ú  á
	.db 0xEC,0xED,0xF1,0xF2,0xF3,0xFA,0xB0,0x26 ; ì  í  ñ  ò  ó  ú  °  &
	.db 0x94,0x95,0x96,0x97,0x98,0x99,0x9A,0x80 ; ’d ’l ’m ’r ’s ’t ’v
	.db 0x27,0xBC,0xBD,0x2D,0xBF,0xA1,0x3F,0x21 ; '  PK MN -  ¿  ¡  ?  !
	.db 0x2E,0x26,0xE9,0x80,0x80,0x80,0x80,0xA9 ; .  &  é              ♂
	.db 0xA5,0xD7,0x2E,0x2F,0x2C,0xBE,0x30,0x31 ; ¥  ×  .  /  ,  ♀  0  1
	.db 0x32,0x33,0x34,0x35,0x36,0x37,0x38,0x39 ; 2  3  4  5  6  7  8  9

UnknownData0x98290: ; XXX what is this?
	.dw 0x80097380

TimeCapsuleAltItems:
	.db ITEM_19, LEFTOVERS
	.db ITEM_2D, BITTER_BERRY
	.db ITEM_32, GOLD_BERRY
	.db ITEM_5A, BERRY
	.db ITEM_64, BERRY
	.db ITEM_78, BERRY
	.db ITEM_87, BERRY
	.db ITEM_BE, BERRY
	.db ITEM_C3, BERRY
	.db ITEM_DC, BERRY
	.db HM_08,   BERRY
	.db -1,      BERRY
	.db 0

	.align 4

RBYTMHMMoves1:
	.db MEGA_PUNCH
	.db RAZOR_WIND
	.db SWORDS_DANCE
	.db WHIRLWIND
	.db MEGA_KICK
	.db TOXIC
	.db HORN_DRILL
	.db BODY_SLAM
	.db TAKE_DOWN
	.db DOUBLE_EDGE
	.db BUBBLEBEAM
	.db WATER_GUN
	.db ICE_BEAM
	.db BLIZZARD
	.db HYPER_BEAM
	.db PAY_DAY
	.db SUBMISSION
	.db COUNTER
	.db SEISMIC_TOSS
	.db RAGE
	.db MEGA_DRAIN
	.db SOLARBEAM
	.db DRAGON_RAGE
	.db THUNDERBOLT
	.db THUNDER
	.db EARTHQUAKE
	.db FISSURE
	.db DIG
	.db PSYCHIC_M
	.db TELEPORT
	.db MIMIC
	.db DOUBLE_TEAM
	.db REFLECT
	.db BIDE
	.db METRONOME
	.db SELFDESTRUCT
	.db EGG_BOMB
	.db FIRE_BLAST
	.db SWIFT
	.db SKULL_BASH
	.db SOFTBOILED
	.db DREAM_EATER
	.db SKY_ATTACK
	.db REST
	.db THUNDER_WAVE
	.db PSYWAVE
	.db EXPLOSION
	.db ROCK_SLIDE
	.db TRI_ATTACK
	.db SUBSTITUTE
	.db CUT
	.db FLY
	.db SURF
	.db STRENGTH
	.db FLASH

	.align 4

Pokered_MonIndices1:
	.db RGBY_BULBASAUR
	.db RGBY_IVYSAUR
	.db RGBY_VENUSAUR
	.db RGBY_CHARMANDER
	.db RGBY_CHARMELEON
	.db RGBY_CHARIZARD
	.db RGBY_SQUIRTLE
	.db RGBY_WARTORTLE
	.db RGBY_BLASTOISE
	.db RGBY_CATERPIE
	.db RGBY_METAPOD
	.db RGBY_BUTTERFREE
	.db RGBY_WEEDLE
	.db RGBY_KAKUNA
	.db RGBY_BEEDRILL
	.db RGBY_PIDGEY
	.db RGBY_PIDGEOTTO
	.db RGBY_PIDGEOT
	.db RGBY_RATTATA
	.db RGBY_RATICATE
	.db RGBY_SPEAROW
	.db RGBY_FEAROW
	.db RGBY_EKANS
	.db RGBY_ARBOK
	.db RGBY_PIKACHU
	.db RGBY_RAICHU
	.db RGBY_SANDSHREW
	.db RGBY_SANDSLASH
	.db RGBY_NIDORAN_F
	.db RGBY_NIDORINA
	.db RGBY_NIDOQUEEN
	.db RGBY_NIDORAN_M
	.db RGBY_NIDORINO
	.db RGBY_NIDOKING
	.db RGBY_CLEFAIRY
	.db RGBY_CLEFABLE
	.db RGBY_VULPIX
	.db RGBY_NINETALES
	.db RGBY_JIGGLYPUFF
	.db RGBY_WIGGLYTUFF
	.db RGBY_ZUBAT
	.db RGBY_GOLBAT
	.db RGBY_ODDISH
	.db RGBY_GLOOM
	.db RGBY_VILEPLUME
	.db RGBY_PARAS
	.db RGBY_PARASECT
	.db RGBY_VENONAT
	.db RGBY_VENOMOTH
	.db RGBY_DIGLETT
	.db RGBY_DUGTRIO
	.db RGBY_MEOWTH
	.db RGBY_PERSIAN
	.db RGBY_PSYDUCK
	.db RGBY_GOLDUCK
	.db RGBY_MANKEY
	.db RGBY_PRIMEAPE
	.db RGBY_GROWLITHE
	.db RGBY_ARCANINE
	.db RGBY_POLIWAG
	.db RGBY_POLIWHIRL
	.db RGBY_POLIWRATH
	.db RGBY_ABRA
	.db RGBY_KADABRA
	.db RGBY_ALAKAZAM
	.db RGBY_MACHOP
	.db RGBY_MACHOKE
	.db RGBY_MACHAMP
	.db RGBY_BELLSPROUT
	.db RGBY_WEEPINBELL
	.db RGBY_VICTREEBEL
	.db RGBY_TENTACOOL
	.db RGBY_TENTACRUEL
	.db RGBY_GEODUDE
	.db RGBY_GRAVELER
	.db RGBY_GOLEM
	.db RGBY_PONYTA
	.db RGBY_RAPIDASH
	.db RGBY_SLOWPOKE
	.db RGBY_SLOWBRO
	.db RGBY_MAGNEMITE
	.db RGBY_MAGNETON
	.db RGBY_FARFETCH_D
	.db RGBY_DODUO
	.db RGBY_DODRIO
	.db RGBY_SEEL
	.db RGBY_DEWGONG
	.db RGBY_GRIMER
	.db RGBY_MUK
	.db RGBY_SHELLDER
	.db RGBY_CLOYSTER
	.db RGBY_GASTLY
	.db RGBY_HAUNTER
	.db RGBY_GENGAR
	.db RGBY_ONIX
	.db RGBY_DROWZEE
	.db RGBY_HYPNO
	.db RGBY_KRABBY
	.db RGBY_KINGLER
	.db RGBY_VOLTORB
	.db RGBY_ELECTRODE
	.db RGBY_EXEGGCUTE
	.db RGBY_EXEGGUTOR
	.db RGBY_CUBONE
	.db RGBY_MAROWAK
	.db RGBY_HITMONLEE
	.db RGBY_HITMONCHAN
	.db RGBY_LICKITUNG
	.db RGBY_KOFFING
	.db RGBY_WEEZING
	.db RGBY_RHYHORN
	.db RGBY_RHYDON
	.db RGBY_CHANSEY
	.db RGBY_TANGELA
	.db RGBY_KANGASKHAN
	.db RGBY_HORSEA
	.db RGBY_SEADRA
	.db RGBY_GOLDEEN
	.db RGBY_SEAKING
	.db RGBY_STARYU
	.db RGBY_STARMIE
	.db RGBY_MR_MIME
	.db RGBY_SCYTHER
	.db RGBY_JYNX
	.db RGBY_ELECTABUZZ
	.db RGBY_MAGMAR
	.db RGBY_PINSIR
	.db RGBY_TAUROS
	.db RGBY_MAGIKARP
	.db RGBY_GYARADOS
	.db RGBY_LAPRAS
	.db RGBY_DITTO
	.db RGBY_EEVEE
	.db RGBY_VAPOREON
	.db RGBY_JOLTEON
	.db RGBY_FLAREON
	.db RGBY_PORYGON
	.db RGBY_OMANYTE
	.db RGBY_OMASTAR
	.db RGBY_KABUTO
	.db RGBY_KABUTOPS
	.db RGBY_AERODACTYL
	.db RGBY_SNORLAX
	.db RGBY_ARTICUNO
	.db RGBY_ZAPDOS
	.db RGBY_MOLTRES
	.db RGBY_DRATINI
	.db RGBY_DRAGONAIR
	.db RGBY_DRAGONITE
	.db RGBY_MEWTWO
	.db RGBY_MEW

	.align 4

Pokered_MonIndices2:
	.db RHYDON
	.db KANGASKHAN
	.db NIDORAN_M
	.db CLEFAIRY
	.db SPEAROW
	.db VOLTORB
	.db NIDOKING
	.db SLOWBRO
	.db IVYSAUR
	.db EXEGGUTOR
	.db LICKITUNG
	.db EXEGGCUTE
	.db GRIMER
	.db GENGAR
	.db NIDORAN_F
	.db NIDOQUEEN
	.db CUBONE
	.db RHYHORN
	.db LAPRAS
	.db ARCANINE
	.db MEW
	.db GYARADOS
	.db SHELLDER
	.db TENTACOOL
	.db GASTLY
	.db SCYTHER
	.db STARYU
	.db BLASTOISE
	.db PINSIR
	.db TANGELA
	.db CHIKORITA
	.db CHIKORITA
	.db GROWLITHE
	.db ONIX
	.db FEAROW
	.db PIDGEY
	.db SLOWPOKE
	.db KADABRA
	.db GRAVELER
	.db CHANSEY
	.db MACHOKE
	.db MR_MIME
	.db HITMONLEE
	.db HITMONCHAN
	.db ARBOK
	.db PARASECT
	.db PSYDUCK
	.db DROWZEE
	.db GOLEM
	.db CHIKORITA
	.db MAGMAR
	.db CHIKORITA
	.db ELECTABUZZ
	.db MAGNETON
	.db KOFFING
	.db CHIKORITA
	.db MANKEY
	.db SEEL
	.db DIGLETT
	.db TAUROS
	.db CHIKORITA
	.db CHIKORITA
	.db CHIKORITA
	.db FARFETCH_D
	.db VENONAT
	.db DRAGONITE
	.db CHIKORITA
	.db CHIKORITA
	.db CHIKORITA
	.db DODUO
	.db POLIWAG
	.db JYNX
	.db MOLTRES
	.db ARTICUNO
	.db ZAPDOS
	.db DITTO
	.db MEOWTH
	.db KRABBY
	.db CHIKORITA
	.db CHIKORITA
	.db CHIKORITA
	.db VULPIX
	.db NINETALES
	.db PIKACHU
	.db RAICHU
	.db CHIKORITA
	.db CHIKORITA
	.db DRATINI
	.db DRAGONAIR
	.db KABUTO
	.db KABUTOPS
	.db HORSEA
	.db SEADRA
	.db CHIKORITA
	.db CHIKORITA
	.db SANDSHREW
	.db SANDSLASH
	.db OMANYTE
	.db OMASTAR
	.db JIGGLYPUFF
	.db WIGGLYTUFF
	.db EEVEE
	.db FLAREON
	.db JOLTEON
	.db VAPOREON
	.db MACHOP
	.db ZUBAT
	.db EKANS
	.db PARAS
	.db POLIWHIRL
	.db POLIWRATH
	.db WEEDLE
	.db KAKUNA
	.db BEEDRILL
	.db CHIKORITA
	.db DODRIO
	.db PRIMEAPE
	.db DUGTRIO
	.db VENOMOTH
	.db DEWGONG
	.db CHIKORITA
	.db CHIKORITA
	.db CATERPIE
	.db METAPOD
	.db BUTTERFREE
	.db MACHAMP
	.db CHIKORITA
	.db GOLDUCK
	.db HYPNO
	.db GOLBAT
	.db MEWTWO
	.db SNORLAX
	.db MAGIKARP
	.db CHIKORITA
	.db CHIKORITA
	.db MUK
	.db CHIKORITA
	.db KINGLER
	.db CLOYSTER
	.db CHIKORITA
	.db ELECTRODE
	.db CLEFABLE
	.db WEEZING
	.db PERSIAN
	.db MAROWAK
	.db CHIKORITA
	.db HAUNTER
	.db ABRA
	.db ALAKAZAM
	.db PIDGEOTTO
	.db PIDGEOT
	.db STARMIE
	.db BULBASAUR
	.db VENUSAUR
	.db TENTACRUEL
	.db CHIKORITA
	.db GOLDEEN
	.db SEAKING
	.db CHIKORITA
	.db CHIKORITA
	.db CHIKORITA
	.db CHIKORITA
	.db PONYTA
	.db RAPIDASH
	.db RATTATA
	.db RATICATE
	.db NIDORINO
	.db NIDORINA
	.db GEODUDE
	.db PORYGON
	.db AERODACTYL
	.db CHIKORITA
	.db MAGNEMITE
	.db CHIKORITA
	.db CHIKORITA
	.db CHARMANDER
	.db SQUIRTLE
	.db CHARMELEON
	.db WARTORTLE
	.db CHARIZARD
	.db CHIKORITA
	.db CHIKORITA
	.db CHIKORITA
	.db CHIKORITA
	.db ODDISH
	.db GLOOM
	.db VILEPLUME
	.db BELLSPROUT
	.db WEEPINBELL
	.db VICTREEBEL

	.align 4

Moves:
; effect
; power
; type
; accuracy
; pp
; effect chance

.incbin "baseromgs.n64",0x98430,0x98a14-0x98430


GSCTMHMMoves:
	.db DYNAMICPUNCH
	.db HEADBUTT
	.db CURSE
	.db ROLLOUT
	.db ROAR
	.db TOXIC
	.db ZAP_CANNON
	.db ROCK_SMASH
	.db PSYCH_UP
	.db HIDDEN_POWER
	.db SUNNY_DAY
	.db SWEET_SCENT
	.db SNORE
	.db BLIZZARD
	.db HYPER_BEAM
	.db ICY_WIND
	.db PROTECT
	.db RAIN_DANCE
	.db GIGA_DRAIN
	.db ENDURE
	.db FRUSTRATION
	.db SOLARBEAM
	.db IRON_TAIL
	.db DRAGONBREATH
	.db THUNDER
	.db EARTHQUAKE
	.db RETURN
	.db DIG
	.db PSYCHIC_M
	.db SHADOW_BALL
	.db MUD_SLAP
	.db DOUBLE_TEAM
	.db ICE_PUNCH
	.db SWAGGER
	.db SLEEP_TALK
	.db SLUDGE_BOMB
	.db SANDSTORM
	.db FIRE_BLAST
	.db SWIFT
	.db DEFENSE_CURL
	.db THUNDERPUNCH
	.db DREAM_EATER
	.db DETECT
	.db REST
	.db ATTRACT
	.db THIEF
	.db STEEL_WING
	.db FIRE_PUNCH
	.db FURY_CUTTER
	.db NIGHTMARE
	.db CUT
	.db FLY
	.db SURF
	.db STRENGTH
	.db FLASH
	.db WHIRLPOOL
	.db WATERFALL
	.align 4

RBYTMHMMoves2:
	.db MEGA_PUNCH
	.db RAZOR_WIND
	.db SWORDS_DANCE
	.db WHIRLWIND
	.db MEGA_KICK
	.db TOXIC
	.db HORN_DRILL
	.db BODY_SLAM
	.db TAKE_DOWN
	.db DOUBLE_EDGE
	.db BUBBLEBEAM
	.db WATER_GUN
	.db ICE_BEAM
	.db BLIZZARD
	.db HYPER_BEAM
	.db PAY_DAY
	.db SUBMISSION
	.db COUNTER
	.db SEISMIC_TOSS
	.db RAGE
	.db MEGA_DRAIN
	.db SOLARBEAM
	.db DRAGON_RAGE
	.db THUNDERBOLT
	.db THUNDER
	.db EARTHQUAKE
	.db FISSURE
	.db DIG
	.db PSYCHIC_M
	.db TELEPORT
	.db MIMIC
	.db DOUBLE_TEAM
	.db REFLECT
	.db BIDE
	.db METRONOME
	.db SELFDESTRUCT
	.db EGG_BOMB
	.db FIRE_BLAST
	.db SWIFT
	.db SKULL_BASH
	.db SOFTBOILED
	.db DREAM_EATER
	.db SKY_ATTACK
	.db REST
	.db THUNDER_WAVE
	.db PSYWAVE
	.db EXPLOSION
	.db ROCK_SLIDE
	.db TRI_ATTACK
	.db SUBSTITUTE
	.db CUT
	.db FLY
	.db SURF
	.db STRENGTH
	.db FLASH

	.align 16

SUPER_EFFECTIVE    EQU 20
NOT_VERY_EFFECTIVE EQU 05
NO_EFFECT          EQU 00

TypeMatchup:
	.db NORMAL,    ROCK,      NOT_VERY_EFFECTIVE
	.db NORMAL,    STEEL,     NOT_VERY_EFFECTIVE
	.db FIRE,      FIRE,      NOT_VERY_EFFECTIVE
	.db FIRE,      WATER,     NOT_VERY_EFFECTIVE
	.db FIRE,      GRASS,     SUPER_EFFECTIVE
	.db FIRE,      ICE,       SUPER_EFFECTIVE
	.db FIRE,      BUG,       SUPER_EFFECTIVE
	.db FIRE,      ROCK,      NOT_VERY_EFFECTIVE
	.db FIRE,      DRAGON,    NOT_VERY_EFFECTIVE
	.db FIRE,      STEEL,     SUPER_EFFECTIVE
	.db WATER,     FIRE,      SUPER_EFFECTIVE
	.db WATER,     WATER,     NOT_VERY_EFFECTIVE
	.db WATER,     GRASS,     NOT_VERY_EFFECTIVE
	.db WATER,     GROUND,    SUPER_EFFECTIVE
	.db WATER,     ROCK,      SUPER_EFFECTIVE
	.db WATER,     DRAGON,    NOT_VERY_EFFECTIVE
	.db ELECTRIC,  WATER,     SUPER_EFFECTIVE
	.db ELECTRIC,  ELECTRIC,  NOT_VERY_EFFECTIVE
	.db ELECTRIC,  GRASS,     NOT_VERY_EFFECTIVE
	.db ELECTRIC,  GROUND,    NO_EFFECT
	.db ELECTRIC,  FLYING,    SUPER_EFFECTIVE
	.db ELECTRIC,  DRAGON,    NOT_VERY_EFFECTIVE
	.db GRASS,     FIRE,      NOT_VERY_EFFECTIVE
	.db GRASS,     WATER,     SUPER_EFFECTIVE
	.db GRASS,     GRASS,     NOT_VERY_EFFECTIVE
	.db GRASS,     POISON,    NOT_VERY_EFFECTIVE
	.db GRASS,     GROUND,    SUPER_EFFECTIVE
	.db GRASS,     FLYING,    NOT_VERY_EFFECTIVE
	.db GRASS,     BUG,       NOT_VERY_EFFECTIVE
	.db GRASS,     ROCK,      SUPER_EFFECTIVE
	.db GRASS,     DRAGON,    NOT_VERY_EFFECTIVE
	.db GRASS,     STEEL,     NOT_VERY_EFFECTIVE
	.db ICE,       WATER,     NOT_VERY_EFFECTIVE
	.db ICE,       GRASS,     SUPER_EFFECTIVE
	.db ICE,       ICE,       NOT_VERY_EFFECTIVE
	.db ICE,       GROUND,    SUPER_EFFECTIVE
	.db ICE,       FLYING,    SUPER_EFFECTIVE
	.db ICE,       DRAGON,    SUPER_EFFECTIVE
	.db ICE,       STEEL,     NOT_VERY_EFFECTIVE
	.db ICE,       FIRE,      NOT_VERY_EFFECTIVE
	.db FIGHTING,  NORMAL,    SUPER_EFFECTIVE
	.db FIGHTING,  ICE,       SUPER_EFFECTIVE
	.db FIGHTING,  POISON,    NOT_VERY_EFFECTIVE
	.db FIGHTING,  FLYING,    NOT_VERY_EFFECTIVE
	.db FIGHTING,  PSYCHIC,   NOT_VERY_EFFECTIVE
	.db FIGHTING,  BUG,       NOT_VERY_EFFECTIVE
	.db FIGHTING,  ROCK,      SUPER_EFFECTIVE
	.db FIGHTING,  DARK,      SUPER_EFFECTIVE
	.db FIGHTING,  STEEL,     SUPER_EFFECTIVE
	.db POISON,    GRASS,     SUPER_EFFECTIVE
	.db POISON,    POISON,    NOT_VERY_EFFECTIVE
	.db POISON,    GROUND,    NOT_VERY_EFFECTIVE
	.db POISON,    ROCK,      NOT_VERY_EFFECTIVE
	.db POISON,    GHOST,     NOT_VERY_EFFECTIVE
	.db POISON,    STEEL,     NO_EFFECT
	.db GROUND,    FIRE,      SUPER_EFFECTIVE
	.db GROUND,    ELECTRIC,  SUPER_EFFECTIVE
	.db GROUND,    GRASS,     NOT_VERY_EFFECTIVE
	.db GROUND,    POISON,    SUPER_EFFECTIVE
	.db GROUND,    FLYING,    NO_EFFECT
	.db GROUND,    BUG,       NOT_VERY_EFFECTIVE
	.db GROUND,    ROCK,      SUPER_EFFECTIVE
	.db GROUND,    STEEL,     SUPER_EFFECTIVE
	.db FLYING,    ELECTRIC,  NOT_VERY_EFFECTIVE
	.db FLYING,    GRASS,     SUPER_EFFECTIVE
	.db FLYING,    FIGHTING,  SUPER_EFFECTIVE
	.db FLYING,    BUG,       SUPER_EFFECTIVE
	.db FLYING,    ROCK,      NOT_VERY_EFFECTIVE
	.db FLYING,    STEEL,     NOT_VERY_EFFECTIVE
	.db PSYCHIC,   FIGHTING,  SUPER_EFFECTIVE
	.db PSYCHIC,   POISON,    SUPER_EFFECTIVE
	.db PSYCHIC,   PSYCHIC,   NOT_VERY_EFFECTIVE
	.db PSYCHIC,   DARK,      NO_EFFECT
	.db PSYCHIC,   STEEL,     NOT_VERY_EFFECTIVE
	.db BUG,       FIRE,      NOT_VERY_EFFECTIVE
	.db BUG,       GRASS,     SUPER_EFFECTIVE
	.db BUG,       FIGHTING,  NOT_VERY_EFFECTIVE
	.db BUG,       POISON,    NOT_VERY_EFFECTIVE
	.db BUG,       FLYING,    NOT_VERY_EFFECTIVE
	.db BUG,       PSYCHIC,   SUPER_EFFECTIVE
	.db BUG,       GHOST,     NOT_VERY_EFFECTIVE
	.db BUG,       DARK,      SUPER_EFFECTIVE
	.db BUG,       STEEL,     NOT_VERY_EFFECTIVE
	.db ROCK,      FIRE,      SUPER_EFFECTIVE
	.db ROCK,      ICE,       SUPER_EFFECTIVE
	.db ROCK,      FIGHTING,  NOT_VERY_EFFECTIVE
	.db ROCK,      GROUND,    NOT_VERY_EFFECTIVE
	.db ROCK,      FLYING,    SUPER_EFFECTIVE
	.db ROCK,      BUG,       SUPER_EFFECTIVE
	.db ROCK,      STEEL,     NOT_VERY_EFFECTIVE
	.db GHOST,     NORMAL,    NO_EFFECT
	.db GHOST,     PSYCHIC,   SUPER_EFFECTIVE
	.db GHOST,     DARK,      NOT_VERY_EFFECTIVE
	.db GHOST,     STEEL,     NOT_VERY_EFFECTIVE
	.db GHOST,     GHOST,     SUPER_EFFECTIVE
	.db DRAGON,    DRAGON,    SUPER_EFFECTIVE
	.db DRAGON,    STEEL,     NOT_VERY_EFFECTIVE
	.db DARK,      FIGHTING,  NOT_VERY_EFFECTIVE
	.db DARK,      PSYCHIC,   SUPER_EFFECTIVE
	.db DARK,      GHOST,     SUPER_EFFECTIVE
	.db DARK,      DARK,      NOT_VERY_EFFECTIVE
	.db DARK,      STEEL,     NOT_VERY_EFFECTIVE
	.db STEEL,     FIRE,      NOT_VERY_EFFECTIVE
	.db STEEL,     WATER,     NOT_VERY_EFFECTIVE
	.db STEEL,     ELECTRIC,  NOT_VERY_EFFECTIVE
	.db STEEL,     ICE,       SUPER_EFFECTIVE
	.db STEEL,     ROCK,      SUPER_EFFECTIVE
	.db STEEL,     STEEL,     NOT_VERY_EFFECTIVE
	.db -1
	.align 4

Unknown98bd8: ; XXX What is this?
	.db 0
	.db 1
	.db 2
	.db 3
	.db 4
	.db 5
	.db 6
	.db 7
	.db 8
	.db 9
	.db 10
	.db 11
	.db 12
	.db 13
	.db 14
	.db 15
	.db 16
	.db 17
	.db 18

	.align 8

ItemAttributes:
	.db HELD_NONE,             0, BALL  ; MASTER_BALL
	.db HELD_NONE,             0, BALL  ; ULTRA_BALL
	.db HELD_BRIGHTPOWDER,    20, ITEM  ; BRIGHTPOWDER
	.db HELD_NONE,             0, BALL  ; GREAT_BALL
	.db HELD_NONE,             0, BALL  ; POKE_BALL
	.db HELD_NONE,             0, ITEM  ; TOWN_MAP
	.db HELD_NONE,             0, KEY   ; BICYCLE
	.db HELD_NONE,             0, ITEM  ; MOON_STONE
	.db HELD_NONE,             0, ITEM  ; ANTIDOTE
	.db HELD_NONE,             0, ITEM  ; BURN_HEAL
	.db HELD_NONE,             0, ITEM  ; ICE_HEAL
	.db HELD_NONE,             0, ITEM  ; AWAKENING
	.db HELD_NONE,             0, ITEM  ; PARLYZ_HEAL
	.db HELD_NONE,            -1, ITEM  ; FULL_RESTORE
	.db HELD_NONE,            -1, ITEM  ; MAX_POTION
	.db HELD_NONE,           200, ITEM  ; HYPER_POTION
	.db HELD_NONE,            50, ITEM  ; SUPER_POTION
	.db HELD_NONE,            20, ITEM  ; POTION
	.db HELD_NONE,             0, ITEM  ; ESCAPE_ROPE
	.db HELD_NONE,             0, ITEM  ; REPEL
	.db HELD_NONE,            -1, ITEM  ; MAX_ELIXER
	.db HELD_NONE,             0, ITEM  ; FIRE_STONE
	.db HELD_NONE,             0, ITEM  ; THUNDERSTONE
	.db HELD_NONE,             0, ITEM  ; WATER_STONE
	.db HELD_NONE,             0, ITEM  ; ITEM_19
	.db HELD_NONE,             0, ITEM  ; HP_UP
	.db HELD_NONE,             0, ITEM  ; PROTEIN
	.db HELD_NONE,             0, ITEM  ; IRON
	.db HELD_NONE,             0, ITEM  ; CARBOS
	.db HELD_NONE,             0, ITEM  ; LUCKY_PUNCH
	.db HELD_NONE,             0, ITEM  ; CALCIUM
	.db HELD_NONE,             0, ITEM  ; RARE_CANDY
	.db HELD_NONE,             0, ITEM  ; X_ACCURACY
	.db HELD_NONE,             0, ITEM  ; LEAF_STONE
	.db HELD_METAL_POWDER,    10, ITEM  ; METAL_POWDER
	.db HELD_NONE,             0, ITEM  ; NUGGET
	.db HELD_NONE,             0, ITEM  ; POKE_DOLL
	.db HELD_NONE,             0, ITEM  ; FULL_HEAL
	.db HELD_NONE,             0, ITEM  ; REVIVE
	.db HELD_NONE,             0, ITEM  ; MAX_REVIVE
	.db HELD_NONE,             0, ITEM  ; GUARD_SPEC
	.db HELD_NONE,             0, ITEM  ; SUPER_REPEL
	.db HELD_NONE,             0, ITEM  ; MAX_REPEL
	.db HELD_NONE,             0, ITEM  ; DIRE_HIT
	.db HELD_NONE,             0, ITEM  ; ITEM_2D
	.db HELD_NONE,            50, ITEM  ; FRESH_WATER
	.db HELD_NONE,            60, ITEM  ; SODA_POP
	.db HELD_NONE,            80, ITEM  ; LEMONADE
	.db HELD_NONE,             0, ITEM  ; X_ATTACK
	.db HELD_NONE,             0, ITEM  ; ITEM_32
	.db HELD_NONE,             0, ITEM  ; X_DEFEND
	.db HELD_NONE,             0, ITEM  ; X_SPEED
	.db HELD_NONE,             0, ITEM  ; X_SPECIAL
	.db HELD_NONE,             0, KEY   ; COIN_CASE
	.db HELD_NONE,             0, KEY   ; ITEMFINDER
	.db HELD_NONE,             0, ITEM  ; POKE_FLUTE
	.db HELD_NONE,             0, ITEM  ; EXP_SHARE
	.db HELD_NONE,             0, KEY   ; OLD_ROD
	.db HELD_NONE,             0, KEY   ; GOOD_ROD
	.db HELD_NONE,             0, ITEM  ; SILVER_LEAF
	.db HELD_NONE,             0, KEY   ; SUPER_ROD
	.db HELD_NONE,             0, ITEM  ; PP_UP
	.db HELD_NONE,            10, ITEM  ; ETHER
	.db HELD_NONE,            -1, ITEM  ; MAX_ETHER
	.db HELD_NONE,            10, ITEM  ; ELIXER
	.db HELD_NONE,             0, KEY   ; RED_SCALE
	.db HELD_NONE,             0, KEY   ; SECRETPOTION
	.db HELD_NONE,             0, KEY   ; S_S_TICKET
	.db HELD_NONE,             0, KEY   ; MYSTERY_EGG
	.db HELD_NONE,             0, KEY   ; CLEAR_BELL
	.db HELD_NONE,             0, KEY   ; SILVER_WING
	.db HELD_NONE,           100, ITEM  ; MOOMOO_MILK
	.db HELD_QUICK_CLAW,      60, ITEM  ; QUICK_CLAW
	.db HELD_HEAL_POISON,      0, ITEM  ; PSNCUREBERRY
	.db HELD_NONE,             0, ITEM  ; GOLD_LEAF
	.db HELD_GROUND_BOOST,    10, ITEM  ; SOFT_SAND
	.db HELD_FLYING_BOOST,    10, ITEM  ; SHARP_BEAK
	.db HELD_HEAL_PARALYZE,    0, ITEM  ; PRZCUREBERRY
	.db HELD_HEAL_FREEZE,      0, ITEM  ; BURNT_BERRY
	.db HELD_HEAL_BURN,        0, ITEM  ; ICE_BERRY
	.db HELD_POISON_BOOST,    10, ITEM  ; POISON_BARB
	.db HELD_FLINCH,          30, ITEM  ; KINGS_ROCK
	.db HELD_HEAL_CONFUSION,   0, ITEM  ; BITTER_BERRY
	.db HELD_HEAL_SLEEP,       0, ITEM  ; MINT_BERRY
	.db HELD_NONE,             0, ITEM  ; RED_APRICORN
	.db HELD_NONE,             0, ITEM  ; TINYMUSHROOM
	.db HELD_NONE,             0, ITEM  ; BIG_MUSHROOM
	.db HELD_BUG_BOOST,       10, ITEM  ; SILVERPOWDER
	.db HELD_NONE,             0, ITEM  ; BLU_APRICORN
	.db HELD_NONE,             0, ITEM  ; ITEM_5A
	.db HELD_AMULET_COIN,     10, ITEM  ; AMULET_COIN
	.db HELD_NONE,             0, ITEM  ; YLW_APRICORN
	.db HELD_NONE,             0, ITEM  ; GRN_APRICORN
	.db HELD_CLEANSE_TAG,      0, ITEM  ; CLEANSE_TAG
	.db HELD_WATER_BOOST,     10, ITEM  ; MYSTIC_WATER
	.db HELD_PSYCHIC_BOOST,   10, ITEM  ; TWISTEDSPOON
	.db HELD_NONE,             0, ITEM  ; WHT_APRICORN
	.db HELD_FIGHTING_BOOST,  10, ITEM  ; BLACKBELT
	.db HELD_NONE,             0, ITEM  ; BLK_APRICORN
	.db HELD_NONE,             0, ITEM  ; ITEM_64
	.db HELD_NONE,             0, ITEM  ; PNK_APRICORN
	.db HELD_DARK_BOOST,      10, ITEM  ; BLACKGLASSES
	.db HELD_NONE,             0, ITEM  ; SLOWPOKETAIL
	.db HELD_NORMAL_BOOST,    10, ITEM  ; PINK_BOW
	.db HELD_NONE,             0, ITEM  ; STICK
	.db HELD_ESCAPE,           0, ITEM  ; SMOKE_BALL
	.db HELD_ICE_BOOST,       10, ITEM  ; NEVERMELTICE
	.db HELD_ELECTRIC_BOOST,  10, ITEM  ; MAGNET
	.db HELD_HEAL_STATUS,      0, ITEM  ; MIRACLEBERRY
	.db HELD_NONE,             0, ITEM  ; PEARL
	.db HELD_NONE,             0, ITEM  ; BIG_PEARL
	.db HELD_NONE,             0, ITEM  ; EVERSTONE
	.db HELD_GHOST_BOOST,     10, ITEM  ; SPELL_TAG
	.db HELD_NONE,            20, ITEM  ; RAGECANDYBAR
	.db HELD_NONE,             0, KEY   ; GS_BALL
	.db HELD_NONE,             0, KEY   ; BLUE_CARD
	.db HELD_GRASS_BOOST,     10, ITEM  ; MIRACLE_SEED
	.db HELD_NONE,             0, ITEM  ; THICK_CLUB
	.db HELD_FOCUS_BAND,      30, ITEM  ; FOCUS_BAND
	.db HELD_NONE,             0, ITEM  ; ITEM_78
	.db HELD_NONE,             0, ITEM  ; ENERGYPOWDER
	.db HELD_NONE,             0, ITEM  ; ENERGY_ROOT
	.db HELD_NONE,             0, ITEM  ; HEAL_POWDER
	.db HELD_NONE,             0, ITEM  ; REVIVAL_HERB
	.db HELD_ROCK_BOOST,      10, ITEM  ; HARD_STONE
	.db HELD_NONE,             0, ITEM  ; LUCKY_EGG
	.db HELD_NONE,             0, KEY   ; CARD_KEY
	.db HELD_NONE,             0, KEY   ; MACHINE_PART
	.db HELD_NONE,             0, KEY   ; EGG_TICKET
	.db HELD_NONE,             0, KEY   ; LOST_ITEM
	.db HELD_NONE,             0, ITEM  ; STARDUST
	.db HELD_NONE,             0, ITEM  ; STAR_PIECE
	.db HELD_NONE,             0, KEY   ; BASEMENT_KEY
	.db HELD_NONE,             0, KEY   ; PASS
	.db HELD_NONE,             0, ITEM  ; ITEM_87
	.db HELD_NONE,             0, ITEM  ; ITEM_88
	.db HELD_NONE,             0, ITEM  ; ITEM_89
	.db HELD_FIRE_BOOST,      10, ITEM  ; CHARCOAL
	.db HELD_BERRY,           20, ITEM  ; BERRY_JUICE
	.db HELD_CRITICAL_UP,      0, ITEM  ; SCOPE_LENS
	.db HELD_NONE,             0, ITEM  ; ITEM_8D
	.db HELD_NONE,             0, ITEM  ; ITEM_8E
	.db HELD_STEEL_BOOST,     10, ITEM  ; METAL_COAT
	.db HELD_DRAGON_BOOST,    10, ITEM  ; DRAGON_FANG
	.db HELD_NONE,             0, ITEM  ; ITEM_91
	.db HELD_LEFTOVERS,       10, ITEM  ; LEFTOVERS
	.db HELD_NONE,             0, ITEM  ; ITEM_93
	.db HELD_NONE,             0, ITEM  ; ITEM_94
	.db HELD_NONE,             0, ITEM  ; ITEM_95
	.db HELD_RESTORE_PP,      -1, ITEM  ; MYSTERYBERRY
	.db HELD_DRAGON_BOOST,    10, ITEM  ; DRAGON_SCALE
	.db HELD_BERSERK_GENE,     0, ITEM  ; BERSERK_GENE
	.db HELD_NONE,             0, ITEM  ; ITEM_99
	.db HELD_NONE,             0, ITEM  ; ITEM_9A
	.db HELD_NONE,             0, ITEM  ; ITEM_9B
	.db HELD_NONE,             0, ITEM  ; SACRED_ASH
	.db HELD_NONE,             0, BALL  ; HEAVY_BALL
	.db HELD_NONE,             0, ITEM  ; FLOWER_MAIL
	.db HELD_NONE,             0, BALL  ; LEVEL_BALL
	.db HELD_NONE,             0, BALL  ; LURE_BALL
	.db HELD_NONE,             0, BALL  ; FAST_BALL
	.db HELD_NONE,             0, ITEM  ; ITEM_A2
	.db HELD_NONE,             0, ITEM  ; LIGHT_BALL
	.db HELD_NONE,             0, BALL  ; FRIEND_BALL
	.db HELD_NONE,             0, BALL  ; MOON_BALL
	.db HELD_NONE,             0, BALL  ; LOVE_BALL
	.db HELD_NONE,             0, ITEM  ; NORMAL_BOX
	.db HELD_NONE,             0, ITEM  ; GORGEOUS_BOX
	.db HELD_NONE,             0, ITEM  ; SUN_STONE
	.db HELD_NORMAL_BOOST,    10, ITEM  ; POLKADOT_BOW
	.db HELD_NONE,             0, ITEM  ; ITEM_AB
	.db HELD_NONE,             0, ITEM  ; UP_GRADE
	.db HELD_BERRY,           10, ITEM  ; BERRY
	.db HELD_BERRY,           30, ITEM  ; GOLD_BERRY
	.db HELD_NONE,             0, KEY   ; SQUIRTBOTTLE
	.db HELD_NONE,             0, ITEM  ; ITEM_B0
	.db HELD_NONE,             0, BALL  ; PARK_BALL
	.db HELD_NONE,             0, KEY   ; RAINBOW_WING
	.db HELD_NONE,             0, ITEM  ; ITEM_B3
	.db HELD_NONE,             0, ITEM  ; BRICK_PIECE
	.db HELD_NONE,             0, ITEM  ; SURF_MAIL
	.db HELD_NONE,             0, ITEM  ; LITEBLUEMAIL
	.db HELD_NONE,             0, ITEM  ; PORTRAITMAIL
	.db HELD_NONE,             0, ITEM  ; LOVELY_MAIL
	.db HELD_NONE,             0, ITEM  ; EON_MAIL
	.db HELD_NONE,             0, ITEM  ; MORPH_MAIL
	.db HELD_NONE,             0, ITEM  ; BLUESKY_MAIL
	.db HELD_NONE,             0, ITEM  ; MUSIC_MAIL
	.db HELD_NONE,             0, ITEM  ; MIRAGE_MAIL
	.db HELD_NONE,             0, ITEM  ; ITEM_BE
	.db HELD_NONE,             0, TM_HM ; TM01
	.db HELD_NONE,             0, TM_HM ; TM02
	.db HELD_NONE,             0, TM_HM ; TM03
	.db HELD_NONE,             0, TM_HM ; TM04
	.db HELD_NONE,             0, ITEM  ; ITEM_C3
	.db HELD_NONE,             0, TM_HM ; TM05
	.db HELD_NONE,             0, TM_HM ; TM06
	.db HELD_NONE,             0, TM_HM ; TM07
	.db HELD_NONE,             0, TM_HM ; TM08
	.db HELD_NONE,             0, TM_HM ; TM09
	.db HELD_NONE,             0, TM_HM ; TM10
	.db HELD_NONE,             0, TM_HM ; TM11
	.db HELD_NONE,             0, TM_HM ; TM12
	.db HELD_NONE,             0, TM_HM ; TM13
	.db HELD_NONE,             0, TM_HM ; TM14
	.db HELD_NONE,             0, TM_HM ; TM15
	.db HELD_NONE,             0, TM_HM ; TM16
	.db HELD_NONE,             0, TM_HM ; TM17
	.db HELD_NONE,             0, TM_HM ; TM18
	.db HELD_NONE,             0, TM_HM ; TM19
	.db HELD_NONE,             0, TM_HM ; TM20
	.db HELD_NONE,             0, TM_HM ; TM21
	.db HELD_NONE,             0, TM_HM ; TM22
	.db HELD_NONE,             0, TM_HM ; TM23
	.db HELD_NONE,             0, TM_HM ; TM24
	.db HELD_NONE,             0, TM_HM ; TM25
	.db HELD_NONE,             0, TM_HM ; TM26
	.db HELD_NONE,             0, TM_HM ; TM27
	.db HELD_NONE,             0, TM_HM ; TM28
	.db HELD_NONE,             0, ITEM  ; ITEM_DC
	.db HELD_NONE,             0, TM_HM ; TM29
	.db HELD_NONE,             0, TM_HM ; TM30
	.db HELD_NONE,             0, TM_HM ; TM31
	.db HELD_NONE,             0, TM_HM ; TM32
	.db HELD_NONE,             0, TM_HM ; TM33
	.db HELD_NONE,             0, TM_HM ; TM34
	.db HELD_NONE,             0, TM_HM ; TM35
	.db HELD_NONE,             0, TM_HM ; TM36
	.db HELD_NONE,             0, TM_HM ; TM37
	.db HELD_NONE,             0, TM_HM ; TM38
	.db HELD_NONE,             0, TM_HM ; TM39
	.db HELD_NONE,             0, TM_HM ; TM40
	.db HELD_NONE,             0, TM_HM ; TM41
	.db HELD_NONE,             0, TM_HM ; TM42
	.db HELD_NONE,             0, TM_HM ; TM43
	.db HELD_NONE,             0, TM_HM ; TM44
	.db HELD_NONE,             0, TM_HM ; TM45
	.db HELD_NONE,             0, TM_HM ; TM46
	.db HELD_NONE,             0, TM_HM ; TM47
	.db HELD_NONE,             0, TM_HM ; TM48
	.db HELD_NONE,             0, TM_HM ; TM49
	.db HELD_NONE,             0, TM_HM ; TM50
	.db HELD_NONE,             0, TM_HM ; HM01
	.db HELD_NONE,             0, TM_HM ; HM02
	.db HELD_NONE,             0, TM_HM ; HM03
	.db HELD_NONE,             0, TM_HM ; HM04
	.db HELD_NONE,             0, TM_HM ; HM05
	.db HELD_NONE,             0, TM_HM ; HM06
	.db HELD_NONE,             0, TM_HM ; HM07
	.db HELD_NONE,             0, ITEM  ; 0xFA
	.db HELD_NONE,             0, ITEM  ; 0xFB
	.db HELD_NONE,             0, ITEM  ; 0xFC
	.db HELD_NONE,             0, ITEM  ; 0xFD
	.db HELD_NONE,             0, ITEM  ; 0xFE
	.db HELD_NONE,             0, ITEM  ; 0xFF

	.align 4

TypeBoostItems:
	.db HELD_NORMAL_BOOST,   NORMAL   ; Pink/Polkadot Bow
	.db HELD_FIGHTING_BOOST, FIGHTING ; Blackbelt
	.db HELD_FLYING_BOOST,   FLYING   ; Sharp Beak
	.db HELD_POISON_BOOST,   POISON   ; Poison Barb
	.db HELD_GROUND_BOOST,   GROUND   ; Soft Sand
	.db HELD_ROCK_BOOST,     ROCK     ; Hard Stone
	.db HELD_BUG_BOOST,      BUG      ; Silverpowder
	.db HELD_GHOST_BOOST,    GHOST    ; Spell Tag
	.db HELD_FIRE_BOOST,     FIRE     ; Charcoal
	.db HELD_WATER_BOOST,    WATER    ; Mystic Water
	.db HELD_GRASS_BOOST,    GRASS    ; Miracle Seed
	.db HELD_ELECTRIC_BOOST, ELECTRIC ; Magnet
	.db HELD_PSYCHIC_BOOST,  PSYCHIC  ; Twistedspoon
	.db HELD_ICE_BOOST,      ICE      ; Nevermeltice
	.db HELD_DRAGON_BOOST,   DRAGON   ; Dragon Scale
	.db HELD_DARK_BOOST,     DARK     ; Blackglasses
	.db HELD_STEEL_BOOST,    STEEL    ; Metal Coat
	.db -1
	.align 16

BaseStats:
; 22 bytes
; new pokédex position
; base hp, attack, defense, speed, special attack, special defense
; type1, type2
; gender ratio
; ???, ???
; growth rate
; egg groups
; TM/HMs (not including move tutor)
.incbin "baseromgs.n64",0x98f20,0x9a4b2-0x98f20

.incbin "baseromgs.n64",0x9a4b2,0xa0480-0x9a4b2

AlphabeticalPokemonOrder:
; Every Pokemon sorted alphabetically by name.
	.db ABRA
	.db AERODACTYL
	.db AIPOM
	.db ALAKAZAM
	.db AMPHAROS
	.db ARBOK
	.db ARCANINE
	.db ARIADOS
	.db ARTICUNO
	.db AZUMARILL
	.db BAYLEEF
	.db BEEDRILL
	.db BELLOSSOM
	.db BELLSPROUT
	.db BLASTOISE
	.db BLISSEY
	.db BULBASAUR
	.db BUTTERFREE
	.db CATERPIE
	.db CELEBI
	.db CHANSEY
	.db CHARIZARD
	.db CHARMANDER
	.db CHARMELEON
	.db CHIKORITA
	.db CHINCHOU
	.db CLEFABLE
	.db CLEFAIRY
	.db CLEFFA
	.db CLOYSTER
	.db CORSOLA
	.db CROBAT
	.db CROCONAW
	.db CUBONE
	.db CYNDAQUIL
	.db DELIBIRD
	.db DEWGONG
	.db DIGLETT
	.db DITTO
	.db DODRIO
	.db DODUO
	.db DONPHAN
	.db DRAGONAIR
	.db DRAGONITE
	.db DRATINI
	.db DROWZEE
	.db DUGTRIO
	.db DUNSPARCE
	.db EEVEE
	.db EGG
	.db EKANS
	.db ELECTABUZZ
	.db ELECTRODE
	.db ELEKID
	.db ENTEI
	.db ESPEON
	.db EXEGGCUTE
	.db EXEGGUTOR
	.db FARFETCH_D
	.db FEAROW
	.db FERALIGATR
	.db FLAAFFY
	.db FLAREON
	.db FORRETRESS
	.db FURRET
	.db GASTLY
	.db GENGAR
	.db GEODUDE
	.db GIRAFARIG
	.db GLIGAR
	.db GLOOM
	.db GOLBAT
	.db GOLDEEN
	.db GOLDUCK
	.db GOLEM
	.db GRANBULL
	.db GRAVELER
	.db GRIMER
	.db GROWLITHE
	.db GYARADOS
	.db HAUNTER
	.db HERACROSS
	.db HITMONCHAN
	.db HITMONLEE
	.db HITMONTOP
	.db HO_OH
	.db HOOTHOOT
	.db HOPPIP
	.db HORSEA
	.db HOUNDOOM
	.db HOUNDOUR
	.db HYPNO
	.db IGGLYBUFF
	.db IVYSAUR
	.db JIGGLYPUFF
	.db JOLTEON
	.db JUMPLUFF
	.db JYNX
	.db KABUTO
	.db KABUTOPS
	.db KADABRA
	.db KAKUNA
	.db KANGASKHAN
	.db KINGDRA
	.db KINGLER
	.db KOFFING
	.db KRABBY
	.db LANTURN
	.db LAPRAS
	.db LARVITAR
	.db LEDIAN
	.db LEDYBA
	.db LICKITUNG
	.db LUGIA
	.db MACHAMP
	.db MACHOKE
	.db MACHOP
	.db MAGBY
	.db MAGCARGO
	.db MAGIKARP
	.db MAGMAR
	.db MAGNEMITE
	.db MAGNETON
	.db MANKEY
	.db MANTINE
	.db MAREEP
	.db MARILL
	.db MAROWAK
	.db MEGANIUM
	.db MEOWTH
	.db METAPOD
	.db MEW
	.db MEWTWO
	.db MILTANK
	.db MISDREAVUS
	.db MOLTRES
	.db MR_MIME
	.db MUK
	.db MURKROW
	.db NATU
	.db NIDOKING
	.db NIDOQUEEN
	.db NIDORAN_F
	.db NIDORAN_M
	.db NIDORINA
	.db NIDORINO
	.db NINETALES
	.db NOCTOWL
	.db OCTILLERY
	.db ODDISH
	.db OMANYTE
	.db OMASTAR
	.db ONIX
	.db PARAS
	.db PARASECT
	.db PERSIAN
	.db PHANPY
	.db PICHU
	.db PIDGEOT
	.db PIDGEOTTO
	.db PIDGEY
	.db PIKACHU
	.db PILOSWINE
	.db PINECO
	.db PINSIR
	.db POLITOED
	.db POLIWAG
	.db POLIWHIRL
	.db POLIWRATH
	.db PONYTA
	.db PORYGON
	.db PORYGON2
	.db PRIMEAPE
	.db PSYDUCK
	.db PUPITAR
	.db QUAGSIRE
	.db QUILAVA
	.db QWILFISH
	.db RAICHU
	.db RAIKOU
	.db RAPIDASH
	.db RATICATE
	.db RATTATA
	.db REMORAID
	.db RHYDON
	.db RHYHORN
	.db SANDSHREW
	.db SANDSLASH
	.db SCIZOR
	.db SCYTHER
	.db SEADRA
	.db SEAKING
	.db SEEL
	.db SENTRET
	.db SHELLDER
	.db SHUCKLE
	.db SKARMORY
	.db SKIPLOOM
	.db SLOWBRO
	.db SLOWKING
	.db SLOWPOKE
	.db SLUGMA
	.db SMEARGLE
	.db SMOOCHUM
	.db SNEASEL
	.db SNORLAX
	.db SNUBBULL
	.db SPEAROW
	.db SPINARAK
	.db SQUIRTLE
	.db STANTLER
	.db STARMIE
	.db STARYU
	.db STEELIX
	.db SUDOWOODO
	.db SUICUNE
	.db SUNFLORA
	.db SUNKERN
	.db SWINUB
	.db TANGELA
	.db TAUROS
	.db TEDDIURSA
	.db TENTACOOL
	.db TENTACRUEL
	.db TOGEPI
	.db TOGETIC
	.db TOTODILE
	.db TYPHLOSION
	.db TYRANITAR
	.db TYROGUE
	.db UMBREON
	.db UNOWN
	.db URSARING
	.db VAPOREON
	.db VENOMOTH
	.db VENONAT
	.db VENUSAUR
	.db VICTREEBEL
	.db VILEPLUME
	.db VOLTORB
	.db VULPIX
	.db WARTORTLE
	.db WEEDLE
	.db WEEPINBELL
	.db WEEZING
	.db WIGGLYTUFF
	.db WOBBUFFET
	.db WOOPER
	.db XATU
	.db YANMA
	.db ZAPDOS
	.db ZUBAT
	.db PKMN_252

	.align 4

AlphabeticalPokemonOrderInverse:
; Each Pokémon's position in AlphabeticalPokemonOrder.
	.db ABC_BULBASAUR
	.db ABC_IVYSAUR
	.db ABC_VENUSAUR
	.db ABC_CHARMANDER
	.db ABC_CHARMELEON
	.db ABC_CHARIZARD
	.db ABC_SQUIRTLE
	.db ABC_WARTORTLE
	.db ABC_BLASTOISE
	.db ABC_CATERPIE
	.db ABC_METAPOD
	.db ABC_BUTTERFREE
	.db ABC_WEEDLE
	.db ABC_KAKUNA
	.db ABC_BEEDRILL
	.db ABC_PIDGEY
	.db ABC_PIDGEOTTO
	.db ABC_PIDGEOT
	.db ABC_RATTATA
	.db ABC_RATICATE
	.db ABC_SPEAROW
	.db ABC_FEAROW
	.db ABC_EKANS
	.db ABC_ARBOK
	.db ABC_PIKACHU
	.db ABC_RAICHU
	.db ABC_SANDSHREW
	.db ABC_SANDSLASH
	.db ABC_NIDORAN_F
	.db ABC_NIDORINA
	.db ABC_NIDOQUEEN
	.db ABC_NIDORAN_M
	.db ABC_NIDORINO
	.db ABC_NIDOKING
	.db ABC_CLEFAIRY
	.db ABC_CLEFABLE
	.db ABC_VULPIX
	.db ABC_NINETALES
	.db ABC_JIGGLYPUFF
	.db ABC_WIGGLYTUFF
	.db ABC_ZUBAT
	.db ABC_GOLBAT
	.db ABC_ODDISH
	.db ABC_GLOOM
	.db ABC_VILEPLUME
	.db ABC_PARAS
	.db ABC_PARASECT
	.db ABC_VENONAT
	.db ABC_VENOMOTH
	.db ABC_DIGLETT
	.db ABC_DUGTRIO
	.db ABC_MEOWTH
	.db ABC_PERSIAN
	.db ABC_PSYDUCK
	.db ABC_GOLDUCK
	.db ABC_MANKEY
	.db ABC_PRIMEAPE
	.db ABC_GROWLITHE
	.db ABC_ARCANINE
	.db ABC_POLIWAG
	.db ABC_POLIWHIRL
	.db ABC_POLIWRATH
	.db ABC_ABRA
	.db ABC_KADABRA
	.db ABC_ALAKAZAM
	.db ABC_MACHOP
	.db ABC_MACHOKE
	.db ABC_MACHAMP
	.db ABC_BELLSPROUT
	.db ABC_WEEPINBELL
	.db ABC_VICTREEBEL
	.db ABC_TENTACOOL
	.db ABC_TENTACRUEL
	.db ABC_GEODUDE
	.db ABC_GRAVELER
	.db ABC_GOLEM
	.db ABC_PONYTA
	.db ABC_RAPIDASH
	.db ABC_SLOWPOKE
	.db ABC_SLOWBRO
	.db ABC_MAGNEMITE
	.db ABC_MAGNETON
	.db ABC_FARFETCH_D
	.db ABC_DODUO
	.db ABC_DODRIO
	.db ABC_SEEL
	.db ABC_DEWGONG
	.db ABC_GRIMER
	.db ABC_MUK
	.db ABC_SHELLDER
	.db ABC_CLOYSTER
	.db ABC_GASTLY
	.db ABC_HAUNTER
	.db ABC_GENGAR
	.db ABC_ONIX
	.db ABC_DROWZEE
	.db ABC_HYPNO
	.db ABC_KRABBY
	.db ABC_KINGLER
	.db ABC_VOLTORB
	.db ABC_ELECTRODE
	.db ABC_EXEGGCUTE
	.db ABC_EXEGGUTOR
	.db ABC_CUBONE
	.db ABC_MAROWAK
	.db ABC_HITMONLEE
	.db ABC_HITMONCHAN
	.db ABC_LICKITUNG
	.db ABC_KOFFING
	.db ABC_WEEZING
	.db ABC_RHYHORN
	.db ABC_RHYDON
	.db ABC_CHANSEY
	.db ABC_TANGELA
	.db ABC_KANGASKHAN
	.db ABC_HORSEA
	.db ABC_SEADRA
	.db ABC_GOLDEEN
	.db ABC_SEAKING
	.db ABC_STARYU
	.db ABC_STARMIE
	.db ABC_MR_MIME
	.db ABC_SCYTHER
	.db ABC_JYNX
	.db ABC_ELECTABUZZ
	.db ABC_MAGMAR
	.db ABC_PINSIR
	.db ABC_TAUROS
	.db ABC_MAGIKARP
	.db ABC_GYARADOS
	.db ABC_LAPRAS
	.db ABC_DITTO
	.db ABC_EEVEE
	.db ABC_VAPOREON
	.db ABC_JOLTEON
	.db ABC_FLAREON
	.db ABC_PORYGON
	.db ABC_OMANYTE
	.db ABC_OMASTAR
	.db ABC_KABUTO
	.db ABC_KABUTOPS
	.db ABC_AERODACTYL
	.db ABC_SNORLAX
	.db ABC_ARTICUNO
	.db ABC_ZAPDOS
	.db ABC_MOLTRES
	.db ABC_DRATINI
	.db ABC_DRAGONAIR
	.db ABC_DRAGONITE
	.db ABC_MEWTWO
	.db ABC_MEW
	.db ABC_CHIKORITA
	.db ABC_BAYLEEF
	.db ABC_MEGANIUM
	.db ABC_CYNDAQUIL
	.db ABC_QUILAVA
	.db ABC_TYPHLOSION
	.db ABC_TOTODILE
	.db ABC_CROCONAW
	.db ABC_FERALIGATR
	.db ABC_SENTRET
	.db ABC_FURRET
	.db ABC_HOOTHOOT
	.db ABC_NOCTOWL
	.db ABC_LEDYBA
	.db ABC_LEDIAN
	.db ABC_SPINARAK
	.db ABC_ARIADOS
	.db ABC_CROBAT
	.db ABC_CHINCHOU
	.db ABC_LANTURN
	.db ABC_PICHU
	.db ABC_CLEFFA
	.db ABC_IGGLYBUFF
	.db ABC_TOGEPI
	.db ABC_TOGETIC
	.db ABC_NATU
	.db ABC_XATU
	.db ABC_MAREEP
	.db ABC_FLAAFFY
	.db ABC_AMPHAROS
	.db ABC_BELLOSSOM
	.db ABC_MARILL
	.db ABC_AZUMARILL
	.db ABC_SUDOWOODO
	.db ABC_POLITOED
	.db ABC_HOPPIP
	.db ABC_SKIPLOOM
	.db ABC_JUMPLUFF
	.db ABC_AIPOM
	.db ABC_SUNKERN
	.db ABC_SUNFLORA
	.db ABC_YANMA
	.db ABC_WOOPER
	.db ABC_QUAGSIRE
	.db ABC_ESPEON
	.db ABC_UMBREON
	.db ABC_MURKROW
	.db ABC_SLOWKING
	.db ABC_MISDREAVUS
	.db ABC_UNOWN
	.db ABC_WOBBUFFET
	.db ABC_GIRAFARIG
	.db ABC_PINECO
	.db ABC_FORRETRESS
	.db ABC_DUNSPARCE
	.db ABC_GLIGAR
	.db ABC_STEELIX
	.db ABC_SNUBBULL
	.db ABC_GRANBULL
	.db ABC_QWILFISH
	.db ABC_SCIZOR
	.db ABC_SHUCKLE
	.db ABC_HERACROSS
	.db ABC_SNEASEL
	.db ABC_TEDDIURSA
	.db ABC_URSARING
	.db ABC_SLUGMA
	.db ABC_MAGCARGO
	.db ABC_SWINUB
	.db ABC_PILOSWINE
	.db ABC_CORSOLA
	.db ABC_REMORAID
	.db ABC_OCTILLERY
	.db ABC_DELIBIRD
	.db ABC_MANTINE
	.db ABC_SKARMORY
	.db ABC_HOUNDOUR
	.db ABC_HOUNDOOM
	.db ABC_KINGDRA
	.db ABC_PHANPY
	.db ABC_DONPHAN
	.db ABC_PORYGON2
	.db ABC_STANTLER
	.db ABC_SMEARGLE
	.db ABC_TYROGUE
	.db ABC_HITMONTOP
	.db ABC_SMOOCHUM
	.db ABC_ELEKID
	.db ABC_MAGBY
	.db ABC_MILTANK
	.db ABC_BLISSEY
	.db ABC_RAIKOU
	.db ABC_ENTEI
	.db ABC_SUICUNE
	.db ABC_LARVITAR
	.db ABC_PUPITAR
	.db ABC_TYRANITAR
	.db ABC_LUGIA
	.db ABC_HO_OH
	.db ABC_CELEBI
	.db ABC_PKMN_252
	.db ABC_EGG

	.align 4

AlphabeticalMoveOrder:
	.db ABSORB
	.db ACID
	.db ACID_ARMOR
	.db AEROBLAST
	.db AGILITY
	.db AMNESIA
	.db ANCIENTPOWER
	.db ATTRACT
	.db AURORA_BEAM
	.db BARRAGE
	.db BARRIER
	.db BATON_PASS
	.db BEAT_UP
	.db BELLY_DRUM
	.db BIDE
	.db BIND
	.db BITE
	.db BLIZZARD
	.db BODY_SLAM
	.db BONE_CLUB
	.db BONE_RUSH
	.db BONEMERANG
	.db BUBBLE
	.db BUBBLEBEAM
	.db CHARM
	.db CLAMP
	.db COMET_PUNCH
	.db CONFUSE_RAY
	.db CONFUSION
	.db CONSTRICT
	.db CONVERSION
	.db CONVERSION2
	.db COTTON_SPORE
	.db COUNTER
	.db CRABHAMMER
	.db CROSS_CHOP
	.db CRUNCH
	.db CURSE
	.db CUT
	.db DEFENSE_CURL
	.db DESTINY_BOND
	.db DETECT
	.db DIG
	.db DISABLE
	.db DIZZY_PUNCH
	.db DOUBLE_KICK
	.db DOUBLE_TEAM
	.db DOUBLE_EDGE
	.db DOUBLESLAP
	.db DRAGON_RAGE
	.db DRAGONBREATH
	.db DREAM_EATER
	.db DRILL_PECK
	.db DYNAMICPUNCH
	.db EARTHQUAKE
	.db EGG_BOMB
	.db EMBER
	.db ENCORE
	.db ENDURE
	.db EXPLOSION
	.db EXTREMESPEED
	.db FAINT_ATTACK
	.db FALSE_SWIPE
	.db FIRE_BLAST
	.db FIRE_PUNCH
	.db FIRE_SPIN
	.db FISSURE
	.db FLAIL
	.db FLAME_WHEEL
	.db FLAMETHROWER
	.db FLASH
	.db FLY
	.db FOCUS_ENERGY
	.db FORESIGHT
	.db FRUSTRATION
	.db FURY_ATTACK
	.db FURY_CUTTER
	.db FURY_SWIPES
	.db FUTURE_SIGHT
	.db GIGA_DRAIN
	.db GLARE
	.db GROWL
	.db GROWTH
	.db GUILLOTINE
	.db GUST
	.db HARDEN
	.db HAZE
	.db HEADBUTT
	.db HEAL_BELL
	.db HI_JUMP_KICK
	.db HIDDEN_POWER
	.db HORN_ATTACK
	.db HORN_DRILL
	.db HYDRO_PUMP
	.db HYPER_BEAM
	.db HYPER_FANG
	.db HYPNOSIS
	.db ICE_BEAM
	.db ICE_PUNCH
	.db ICY_WIND
	.db IRON_TAIL
	.db JUMP_KICK
	.db KARATE_CHOP
	.db KINESIS
	.db LEECH_LIFE
	.db LEECH_SEED
	.db LEER
	.db LICK
	.db LIGHT_SCREEN
	.db LOCK_ON
	.db LOVELY_KISS
	.db LOW_KICK
	.db MACH_PUNCH
	.db MAGNITUDE
	.db MEAN_LOOK
	.db MEDITATE
	.db MEGA_DRAIN
	.db MEGA_KICK
	.db MEGA_PUNCH
	.db MEGAHORN
	.db METAL_CLAW
	.db METRONOME
	.db MILK_DRINK
	.db MIMIC
	.db MIND_READER
	.db MINIMIZE
	.db MIRROR_COAT
	.db MIRROR_MOVE
	.db MIST
	.db MOONLIGHT
	.db MORNING_SUN
	.db MUD_SLAP
	.db NIGHT_SHADE
	.db NIGHTMARE
	.db OCTAZOOKA
	.db OUTRAGE
	.db PAIN_SPLIT
	.db PAY_DAY
	.db PECK
	.db PERISH_SONG
	.db PETAL_DANCE
	.db PIN_MISSILE
	.db POISON_GAS
	.db POISON_STING
	.db POISONPOWDER
	.db POUND
	.db POWDER_SNOW
	.db PRESENT
	.db PROTECT
	.db PSYBEAM
	.db PSYCH_UP
	.db PSYCHIC_M
	.db PSYWAVE
	.db PURSUIT
	.db QUICK_ATTACK
	.db RAGE
	.db RAIN_DANCE
	.db RAPID_SPIN
	.db RAZOR_LEAF
	.db RAZOR_WIND
	.db RECOVER
	.db REFLECT
	.db REST
	.db RETURN
	.db REVERSAL
	.db ROAR
	.db ROCK_SLIDE
	.db ROCK_SMASH
	.db ROCK_THROW
	.db ROLLING_KICK
	.db ROLLOUT
	.db SACRED_FIRE
	.db SAFEGUARD
	.db SAND_ATTACK
	.db SANDSTORM
	.db SCARY_FACE
	.db SCRATCH
	.db SCREECH
	.db SEISMIC_TOSS
	.db SELFDESTRUCT
	.db SHADOW_BALL
	.db SHARPEN
	.db SING
	.db SKETCH
	.db SKULL_BASH
	.db SKY_ATTACK
	.db SLAM
	.db SLASH
	.db SLEEP_POWDER
	.db SLEEP_TALK
	.db SLUDGE
	.db SLUDGE_BOMB
	.db SMOG
	.db SMOKESCREEN
	.db SNORE
	.db SOFTBOILED
	.db SOLARBEAM
	.db SONICBOOM
	.db SPARK
	.db SPIDER_WEB
	.db SPIKE_CANNON
	.db SPIKES
	.db SPITE
	.db SPLASH
	.db SPORE
	.db STEEL_WING
	.db STOMP
	.db STRENGTH
	.db STRING_SHOT
	.db STRUGGLE
	.db STUN_SPORE
	.db SUBMISSION
	.db SUBSTITUTE
	.db SUNNY_DAY
	.db SUPER_FANG
	.db SUPERSONIC
	.db SURF
	.db SWAGGER
	.db SWEET_KISS
	.db SWEET_SCENT
	.db SWIFT
	.db SWORDS_DANCE
	.db SYNTHESIS
	.db TACKLE
	.db TAIL_WHIP
	.db TAKE_DOWN
	.db TELEPORT
	.db THIEF
	.db THRASH
	.db THUNDER
	.db THUNDER_WAVE
	.db THUNDERBOLT
	.db THUNDERPUNCH
	.db THUNDERSHOCK
	.db TOXIC
	.db TRANSFORM
	.db TRI_ATTACK
	.db TRIPLE_KICK
	.db TWINEEDLE
	.db TWISTER
	.db VICEGRIP
	.db VINE_WHIP
	.db VITAL_THROW
	.db WATER_GUN
	.db WATERFALL
	.db WHIRLPOOL
	.db WHIRLWIND
	.db WING_ATTACK
	.db WITHDRAW
	.db WRAP
	.db ZAP_CANNON

	.align 4

AlphabeticalMoveOrderInverse:
; Each move's position in AlphabeticalMoveOrder.
	.db ABC_POUND
	.db ABC_KARATE_CHOP
	.db ABC_DOUBLESLAP
	.db ABC_COMET_PUNCH
	.db ABC_MEGA_PUNCH
	.db ABC_PAY_DAY
	.db ABC_FIRE_PUNCH
	.db ABC_ICE_PUNCH
	.db ABC_THUNDERPUNCH
	.db ABC_SCRATCH
	.db ABC_VICEGRIP
	.db ABC_GUILLOTINE
	.db ABC_RAZOR_WIND
	.db ABC_SWORDS_DANCE
	.db ABC_CUT
	.db ABC_GUST
	.db ABC_WING_ATTACK
	.db ABC_WHIRLWIND
	.db ABC_FLY
	.db ABC_BIND
	.db ABC_SLAM
	.db ABC_VINE_WHIP
	.db ABC_STOMP
	.db ABC_DOUBLE_KICK
	.db ABC_MEGA_KICK
	.db ABC_JUMP_KICK
	.db ABC_ROLLING_KICK
	.db ABC_SAND_ATTACK
	.db ABC_HEADBUTT
	.db ABC_HORN_ATTACK
	.db ABC_FURY_ATTACK
	.db ABC_HORN_DRILL
	.db ABC_TACKLE
	.db ABC_BODY_SLAM
	.db ABC_WRAP
	.db ABC_TAKE_DOWN
	.db ABC_THRASH
	.db ABC_DOUBLE_EDGE
	.db ABC_TAIL_WHIP
	.db ABC_POISON_STING
	.db ABC_TWINEEDLE
	.db ABC_PIN_MISSILE
	.db ABC_LEER
	.db ABC_BITE
	.db ABC_GROWL
	.db ABC_ROAR
	.db ABC_SING
	.db ABC_SUPERSONIC
	.db ABC_SONICBOOM
	.db ABC_DISABLE
	.db ABC_ACID
	.db ABC_EMBER
	.db ABC_FLAMETHROWER
	.db ABC_MIST
	.db ABC_WATER_GUN
	.db ABC_HYDRO_PUMP
	.db ABC_SURF
	.db ABC_ICE_BEAM
	.db ABC_BLIZZARD
	.db ABC_PSYBEAM
	.db ABC_BUBBLEBEAM
	.db ABC_AURORA_BEAM
	.db ABC_HYPER_BEAM
	.db ABC_PECK
	.db ABC_DRILL_PECK
	.db ABC_SUBMISSION
	.db ABC_LOW_KICK
	.db ABC_COUNTER
	.db ABC_SEISMIC_TOSS
	.db ABC_STRENGTH
	.db ABC_ABSORB
	.db ABC_MEGA_DRAIN
	.db ABC_LEECH_SEED
	.db ABC_GROWTH
	.db ABC_RAZOR_LEAF
	.db ABC_SOLARBEAM
	.db ABC_POISONPOWDER
	.db ABC_STUN_SPORE
	.db ABC_SLEEP_POWDER
	.db ABC_PETAL_DANCE
	.db ABC_STRING_SHOT
	.db ABC_DRAGON_RAGE
	.db ABC_FIRE_SPIN
	.db ABC_THUNDERSHOCK
	.db ABC_THUNDERBOLT
	.db ABC_THUNDER_WAVE
	.db ABC_THUNDER
	.db ABC_ROCK_THROW
	.db ABC_EARTHQUAKE
	.db ABC_FISSURE
	.db ABC_DIG
	.db ABC_TOXIC
	.db ABC_CONFUSION
	.db ABC_PSYCHIC_M
	.db ABC_HYPNOSIS
	.db ABC_MEDITATE
	.db ABC_AGILITY
	.db ABC_QUICK_ATTACK
	.db ABC_RAGE
	.db ABC_TELEPORT
	.db ABC_NIGHT_SHADE
	.db ABC_MIMIC
	.db ABC_SCREECH
	.db ABC_DOUBLE_TEAM
	.db ABC_RECOVER
	.db ABC_HARDEN
	.db ABC_MINIMIZE
	.db ABC_SMOKESCREEN
	.db ABC_CONFUSE_RAY
	.db ABC_WITHDRAW
	.db ABC_DEFENSE_CURL
	.db ABC_BARRIER
	.db ABC_LIGHT_SCREEN
	.db ABC_HAZE
	.db ABC_REFLECT
	.db ABC_FOCUS_ENERGY
	.db ABC_BIDE
	.db ABC_METRONOME
	.db ABC_MIRROR_MOVE
	.db ABC_SELFDESTRUCT
	.db ABC_EGG_BOMB
	.db ABC_LICK
	.db ABC_SMOG
	.db ABC_SLUDGE
	.db ABC_BONE_CLUB
	.db ABC_FIRE_BLAST
	.db ABC_WATERFALL
	.db ABC_CLAMP
	.db ABC_SWIFT
	.db ABC_SKULL_BASH
	.db ABC_SPIKE_CANNON
	.db ABC_CONSTRICT
	.db ABC_AMNESIA
	.db ABC_KINESIS
	.db ABC_SOFTBOILED
	.db ABC_HI_JUMP_KICK
	.db ABC_GLARE
	.db ABC_DREAM_EATER
	.db ABC_POISON_GAS
	.db ABC_BARRAGE
	.db ABC_LEECH_LIFE
	.db ABC_LOVELY_KISS
	.db ABC_SKY_ATTACK
	.db ABC_TRANSFORM
	.db ABC_BUBBLE
	.db ABC_DIZZY_PUNCH
	.db ABC_SPORE
	.db ABC_FLASH
	.db ABC_PSYWAVE
	.db ABC_SPLASH
	.db ABC_ACID_ARMOR
	.db ABC_CRABHAMMER
	.db ABC_EXPLOSION
	.db ABC_FURY_SWIPES
	.db ABC_BONEMERANG
	.db ABC_REST
	.db ABC_ROCK_SLIDE
	.db ABC_HYPER_FANG
	.db ABC_SHARPEN
	.db ABC_CONVERSION
	.db ABC_TRI_ATTACK
	.db ABC_SUPER_FANG
	.db ABC_SLASH
	.db ABC_SUBSTITUTE
	.db ABC_STRUGGLE
	.db ABC_SKETCH
	.db ABC_TRIPLE_KICK
	.db ABC_THIEF
	.db ABC_SPIDER_WEB
	.db ABC_MIND_READER
	.db ABC_NIGHTMARE
	.db ABC_FLAME_WHEEL
	.db ABC_SNORE
	.db ABC_CURSE
	.db ABC_FLAIL
	.db ABC_CONVERSION2
	.db ABC_AEROBLAST
	.db ABC_COTTON_SPORE
	.db ABC_REVERSAL
	.db ABC_SPITE
	.db ABC_POWDER_SNOW
	.db ABC_PROTECT
	.db ABC_MACH_PUNCH
	.db ABC_SCARY_FACE
	.db ABC_FAINT_ATTACK
	.db ABC_SWEET_KISS
	.db ABC_BELLY_DRUM
	.db ABC_SLUDGE_BOMB
	.db ABC_MUD_SLAP
	.db ABC_OCTAZOOKA
	.db ABC_SPIKES
	.db ABC_ZAP_CANNON
	.db ABC_FORESIGHT
	.db ABC_DESTINY_BOND
	.db ABC_PERISH_SONG
	.db ABC_ICY_WIND
	.db ABC_DETECT
	.db ABC_BONE_RUSH
	.db ABC_LOCK_ON
	.db ABC_OUTRAGE
	.db ABC_SANDSTORM
	.db ABC_GIGA_DRAIN
	.db ABC_ENDURE
	.db ABC_CHARM
	.db ABC_ROLLOUT
	.db ABC_FALSE_SWIPE
	.db ABC_SWAGGER
	.db ABC_MILK_DRINK
	.db ABC_SPARK
	.db ABC_FURY_CUTTER
	.db ABC_STEEL_WING
	.db ABC_MEAN_LOOK
	.db ABC_ATTRACT
	.db ABC_SLEEP_TALK
	.db ABC_HEAL_BELL
	.db ABC_RETURN
	.db ABC_PRESENT
	.db ABC_FRUSTRATION
	.db ABC_SAFEGUARD
	.db ABC_PAIN_SPLIT
	.db ABC_SACRED_FIRE
	.db ABC_MAGNITUDE
	.db ABC_DYNAMICPUNCH
	.db ABC_MEGAHORN
	.db ABC_DRAGONBREATH
	.db ABC_BATON_PASS
	.db ABC_ENCORE
	.db ABC_PURSUIT
	.db ABC_RAPID_SPIN
	.db ABC_SWEET_SCENT
	.db ABC_IRON_TAIL
	.db ABC_METAL_CLAW
	.db ABC_VITAL_THROW
	.db ABC_MORNING_SUN
	.db ABC_SYNTHESIS
	.db ABC_MOONLIGHT
	.db ABC_HIDDEN_POWER
	.db ABC_CROSS_CHOP
	.db ABC_TWISTER
	.db ABC_RAIN_DANCE
	.db ABC_SUNNY_DAY
	.db ABC_CRUNCH
	.db ABC_MIRROR_COAT
	.db ABC_PSYCH_UP
	.db ABC_EXTREMESPEED
	.db ABC_ANCIENTPOWER
	.db ABC_SHADOW_BALL
	.db ABC_FUTURE_SIGHT
	.db ABC_ROCK_SMASH
	.db ABC_WHIRLPOOL
	.db ABC_BEAT_UP

	.align 4

AlphabeticalGSCItemOrder:
	.db AMULET_COIN
	.db ANTIDOTE
	.db AWAKENING
	.db BASEMENT_KEY
	.db BERRY
	.db BERRY_JUICE
	.db BERSERK_GENE
	.db BICYCLE
	.db BIG_MUSHROOM
	.db BIG_PEARL
	.db BITTER_BERRY
	.db BLACKBELT
	.db BLACKGLASSES
	.db BLK_APRICORN
	.db BLU_APRICORN
	.db BLUE_CARD
	.db BLUESKY_MAIL
	.db BRICK_PIECE
	.db BRIGHTPOWDER
	.db BURN_HEAL
	.db BURNT_BERRY
	.db CALCIUM
	.db CARBOS
	.db CARD_KEY
	.db CHARCOAL
	.db CLEANSE_TAG
	.db CLEAR_BELL
	.db COIN_CASE
	.db DIRE_HIT
	.db DRAGON_FANG
	.db DRAGON_SCALE
	.db EGG_TICKET
	.db ELIXER
	.db ENERGY_ROOT
	.db ENERGYPOWDER
	.db EON_MAIL
	.db ESCAPE_ROPE
	.db ETHER
	.db EVERSTONE
	.db EXP_SHARE
	.db FAST_BALL
	.db FIRE_STONE
	.db FLOWER_MAIL
	.db FOCUS_BAND
	.db FRESH_WATER
	.db FRIEND_BALL
	.db FULL_HEAL
	.db FULL_RESTORE
	.db GOLD_BERRY
	.db GOLD_LEAF
	.db GOOD_ROD
	.db GORGEOUS_BOX
	.db GREAT_BALL
	.db GRN_APRICORN
	.db GS_BALL
	.db GUARD_SPEC
	.db HARD_STONE
	.db HEAL_POWDER
	.db HEAVY_BALL
	.db HM_01
	.db HM_02
	.db HM_03
	.db HM_04
	.db HM_05
	.db HM_06
	.db HM_07
	.db HP_UP
	.db HYPER_POTION
	.db ICE_BERRY
	.db ICE_HEAL
	.db IRON
	.db ITEMFINDER
	.db KINGS_ROCK
	.db LEAF_STONE
	.db LEFTOVERS
	.db LEMONADE
	.db LEVEL_BALL
	.db LIGHT_BALL
	.db LITEBLUEMAIL
	.db LOST_ITEM
	.db LOVE_BALL
	.db LOVELY_MAIL
	.db LUCKY_EGG
	.db LUCKY_PUNCH
	.db LURE_BALL
	.db MACHINE_PART
	.db MAGNET
	.db MASTER_BALL
	.db MAX_ELIXER
	.db MAX_ETHER
	.db MAX_POTION
	.db MAX_REPEL
	.db MAX_REVIVE
	.db METAL_COAT
	.db METAL_POWDER
	.db MINT_BERRY
	.db MIRACLE_SEED
	.db MIRACLEBERRY
	.db MIRAGE_MAIL
	.db MOOMOO_MILK
	.db MOON_BALL
	.db MOON_STONE
	.db MORPH_MAIL
	.db MUSIC_MAIL
	.db MYSTERY_EGG
	.db MYSTERYBERRY
	.db MYSTIC_WATER
	.db NEVERMELTICE
	.db NORMAL_BOX
	.db NUGGET
	.db OLD_ROD
	.db PARK_BALL
	.db PARLYZ_HEAL
	.db PASS
	.db PEARL
	.db PINK_BOW
	.db PNK_APRICORN
	.db POISON_BARB
	.db POKE_BALL
	.db POKE_DOLL
	.db POLKADOT_BOW
	.db PORTRAITMAIL
	.db POTION
	.db PP_UP
	.db PROTEIN
	.db PRZCUREBERRY
	.db PSNCUREBERRY
	.db QUICK_CLAW
	.db RAGECANDYBAR
	.db RAINBOW_WING
	.db RARE_CANDY
	.db RED_APRICORN
	.db RED_SCALE
	.db REPEL
	.db REVIVAL_HERB
	.db REVIVE
	.db S_S_TICKET
	.db SACRED_ASH
	.db SCOPE_LENS
	.db SECRETPOTION
	.db SHARP_BEAK
	.db SILVER_LEAF
	.db SILVER_WING
	.db SILVERPOWDER
	.db SLOWPOKETAIL
	.db SMOKE_BALL
	.db SODA_POP
	.db SOFT_SAND
	.db SPELL_TAG
	.db SQUIRTBOTTLE
	.db STAR_PIECE
	.db STARDUST
	.db STICK
	.db SUN_STONE
	.db SUPER_POTION
	.db SUPER_REPEL
	.db SUPER_ROD
	.db SURF_MAIL
	.db THICK_CLUB
	.db THUNDERSTONE
	.db TINYMUSHROOM
	.db TM_01
	.db TM_02
	.db TM_03
	.db TM_04
	.db TM_05
	.db TM_06
	.db TM_07
	.db TM_08
	.db TM_09
	.db TM_10
	.db TM_11
	.db TM_12
	.db TM_13
	.db TM_14
	.db TM_15
	.db TM_16
	.db TM_17
	.db TM_18
	.db TM_19
	.db TM_20
	.db TM_21
	.db TM_22
	.db TM_23
	.db TM_24
	.db TM_25
	.db TM_26
	.db TM_27
	.db TM_28
	.db TM_29
	.db TM_30
	.db TM_31
	.db TM_32
	.db TM_33
	.db TM_34
	.db TM_35
	.db TM_36
	.db TM_37
	.db TM_38
	.db TM_39
	.db TM_40
	.db TM_41
	.db TM_42
	.db TM_43
	.db TM_44
	.db TM_45
	.db TM_46
	.db TM_47
	.db TM_48
	.db TM_49
	.db TM_50
	.db TWISTEDSPOON
	.db ULTRA_BALL
	.db UP_GRADE
	.db WATER_STONE
	.db WHT_APRICORN
	.db X_ACCURACY
	.db X_ATTACK
	.db X_DEFEND
	.db X_SPECIAL
	.db X_SPEED
	.db YLW_APRICORN
	.db ITEM_06
	.db ITEM_19
	.db ITEM_2D
	.db ITEM_32
	.db ITEM_38
	.db ITEM_5A
	.db ITEM_64
	.db ITEM_78
	.db ITEM_87
	.db ITEM_88
	.db ITEM_89
	.db ITEM_8D
	.db ITEM_8E
	.db ITEM_91
	.db ITEM_93
	.db ITEM_94
	.db ITEM_95
	.db ITEM_99
	.db ITEM_9A
	.db ITEM_9B
	.db ITEM_A2
	.db ITEM_AB
	.db ITEM_B0
	.db ITEM_B3
	.db ITEM_BE
	.db ITEM_C3
	.db ITEM_DC
	.db HM_08

	.align 4

AlphabeticalGSCItemOrderInverse:
; Each move's position in AlphabeticalGSCItemOrder.
	.db ABC_MASTER_BALL
	.db ABC_ULTRA_BALL
	.db ABC_BRIGHTPOWDER
	.db ABC_GREAT_BALL
	.db ABC_POKE_BALL
	.db ABC_ITEM_06
	.db ABC_BICYCLE
	.db ABC_MOON_STONE
	.db ABC_ANTIDOTE
	.db ABC_BURN_HEAL
	.db ABC_ICE_HEAL
	.db ABC_AWAKENING
	.db ABC_PARLYZ_HEAL
	.db ABC_FULL_RESTORE
	.db ABC_MAX_POTION
	.db ABC_HYPER_POTION
	.db ABC_SUPER_POTION
	.db ABC_POTION
	.db ABC_ESCAPE_ROPE
	.db ABC_REPEL
	.db ABC_MAX_ELIXER
	.db ABC_FIRE_STONE
	.db ABC_THUNDERSTONE
	.db ABC_WATER_STONE
	.db ABC_ITEM_19
	.db ABC_HP_UP
	.db ABC_PROTEIN
	.db ABC_IRON
	.db ABC_CARBOS
	.db ABC_LUCKY_PUNCH
	.db ABC_CALCIUM
	.db ABC_RARE_CANDY
	.db ABC_X_ACCURACY
	.db ABC_LEAF_STONE
	.db ABC_METAL_POWDER
	.db ABC_NUGGET
	.db ABC_POKE_DOLL
	.db ABC_FULL_HEAL
	.db ABC_REVIVE
	.db ABC_MAX_REVIVE
	.db ABC_GUARD_SPEC
	.db ABC_SUPER_REPEL
	.db ABC_MAX_REPEL
	.db ABC_DIRE_HIT
	.db ABC_ITEM_2D
	.db ABC_FRESH_WATER
	.db ABC_SODA_POP
	.db ABC_LEMONADE
	.db ABC_X_ATTACK
	.db ABC_ITEM_32
	.db ABC_X_DEFEND
	.db ABC_X_SPEED
	.db ABC_X_SPECIAL
	.db ABC_COIN_CASE
	.db ABC_ITEMFINDER
	.db ABC_ITEM_38
	.db ABC_EXP_SHARE
	.db ABC_OLD_ROD
	.db ABC_GOOD_ROD
	.db ABC_SILVER_LEAF
	.db ABC_SUPER_ROD
	.db ABC_PP_UP
	.db ABC_ETHER
	.db ABC_MAX_ETHER
	.db ABC_ELIXER
	.db ABC_RED_SCALE
	.db ABC_SECRETPOTION
	.db ABC_S_S_TICKET
	.db ABC_MYSTERY_EGG
	.db ABC_CLEAR_BELL
	.db ABC_SILVER_WING
	.db ABC_MOOMOO_MILK
	.db ABC_QUICK_CLAW
	.db ABC_PSNCUREBERRY
	.db ABC_GOLD_LEAF
	.db ABC_SOFT_SAND
	.db ABC_SHARP_BEAK
	.db ABC_PRZCUREBERRY
	.db ABC_BURNT_BERRY
	.db ABC_ICE_BERRY
	.db ABC_POISON_BARB
	.db ABC_KINGS_ROCK
	.db ABC_BITTER_BERRY
	.db ABC_MINT_BERRY
	.db ABC_RED_APRICORN
	.db ABC_TINYMUSHROOM
	.db ABC_BIG_MUSHROOM
	.db ABC_SILVERPOWDER
	.db ABC_BLU_APRICORN
	.db ABC_ITEM_5A
	.db ABC_AMULET_COIN
	.db ABC_YLW_APRICORN
	.db ABC_GRN_APRICORN
	.db ABC_CLEANSE_TAG
	.db ABC_MYSTIC_WATER
	.db ABC_TWISTEDSPOON
	.db ABC_WHT_APRICORN
	.db ABC_BLACKBELT
	.db ABC_BLK_APRICORN
	.db ABC_ITEM_64
	.db ABC_PNK_APRICORN
	.db ABC_BLACKGLASSES
	.db ABC_SLOWPOKETAIL
	.db ABC_PINK_BOW
	.db ABC_STICK
	.db ABC_SMOKE_BALL
	.db ABC_NEVERMELTICE
	.db ABC_MAGNET
	.db ABC_MIRACLEBERRY
	.db ABC_PEARL
	.db ABC_BIG_PEARL
	.db ABC_EVERSTONE
	.db ABC_SPELL_TAG
	.db ABC_RAGECANDYBAR
	.db ABC_GS_BALL
	.db ABC_BLUE_CARD
	.db ABC_MIRACLE_SEED
	.db ABC_THICK_CLUB
	.db ABC_FOCUS_BAND
	.db ABC_ITEM_78
	.db ABC_ENERGYPOWDER
	.db ABC_ENERGY_ROOT
	.db ABC_HEAL_POWDER
	.db ABC_REVIVAL_HERB
	.db ABC_HARD_STONE
	.db ABC_LUCKY_EGG
	.db ABC_CARD_KEY
	.db ABC_MACHINE_PART
	.db ABC_EGG_TICKET
	.db ABC_LOST_ITEM
	.db ABC_STARDUST
	.db ABC_STAR_PIECE
	.db ABC_BASEMENT_KEY
	.db ABC_PASS
	.db ABC_ITEM_87
	.db ABC_ITEM_88
	.db ABC_ITEM_89
	.db ABC_CHARCOAL
	.db ABC_BERRY_JUICE
	.db ABC_SCOPE_LENS
	.db ABC_ITEM_8D
	.db ABC_ITEM_8E
	.db ABC_METAL_COAT
	.db ABC_DRAGON_FANG
	.db ABC_ITEM_91
	.db ABC_LEFTOVERS
	.db ABC_ITEM_93
	.db ABC_ITEM_94
	.db ABC_ITEM_95
	.db ABC_MYSTERYBERRY
	.db ABC_DRAGON_SCALE
	.db ABC_BERSERK_GENE
	.db ABC_ITEM_99
	.db ABC_ITEM_9A
	.db ABC_ITEM_9B
	.db ABC_SACRED_ASH
	.db ABC_HEAVY_BALL
	.db ABC_FLOWER_MAIL
	.db ABC_LEVEL_BALL
	.db ABC_LURE_BALL
	.db ABC_FAST_BALL
	.db ABC_ITEM_A2
	.db ABC_LIGHT_BALL
	.db ABC_FRIEND_BALL
	.db ABC_MOON_BALL
	.db ABC_LOVE_BALL
	.db ABC_NORMAL_BOX
	.db ABC_GORGEOUS_BOX
	.db ABC_SUN_STONE
	.db ABC_POLKADOT_BOW
	.db ABC_ITEM_AB
	.db ABC_UP_GRADE
	.db ABC_BERRY
	.db ABC_GOLD_BERRY
	.db ABC_SQUIRTBOTTLE
	.db ABC_ITEM_B0
	.db ABC_PARK_BALL
	.db ABC_RAINBOW_WING
	.db ABC_ITEM_B3
	.db ABC_BRICK_PIECE
	.db ABC_SURF_MAIL
	.db ABC_LITEBLUEMAIL
	.db ABC_PORTRAITMAIL
	.db ABC_LOVELY_MAIL
	.db ABC_EON_MAIL
	.db ABC_MORPH_MAIL
	.db ABC_BLUESKY_MAIL
	.db ABC_MUSIC_MAIL
	.db ABC_MIRAGE_MAIL
	.db ABC_ITEM_BE
	.db ABC_TM_01
	.db ABC_TM_02
	.db ABC_TM_03
	.db ABC_TM_04
	.db ABC_ITEM_C3
	.db ABC_TM_05
	.db ABC_TM_06
	.db ABC_TM_07
	.db ABC_TM_08
	.db ABC_TM_09
	.db ABC_TM_10
	.db ABC_TM_11
	.db ABC_TM_12
	.db ABC_TM_13
	.db ABC_TM_14
	.db ABC_TM_15
	.db ABC_TM_16
	.db ABC_TM_17
	.db ABC_TM_18
	.db ABC_TM_19
	.db ABC_TM_20
	.db ABC_TM_21
	.db ABC_TM_22
	.db ABC_TM_23
	.db ABC_TM_24
	.db ABC_TM_25
	.db ABC_TM_26
	.db ABC_TM_27
	.db ABC_TM_28
	.db ABC_ITEM_DC
	.db ABC_TM_29
	.db ABC_TM_30
	.db ABC_TM_31
	.db ABC_TM_32
	.db ABC_TM_33
	.db ABC_TM_34
	.db ABC_TM_35
	.db ABC_TM_36
	.db ABC_TM_37
	.db ABC_TM_38
	.db ABC_TM_39
	.db ABC_TM_40
	.db ABC_TM_41
	.db ABC_TM_42
	.db ABC_TM_43
	.db ABC_TM_44
	.db ABC_TM_45
	.db ABC_TM_46
	.db ABC_TM_47
	.db ABC_TM_48
	.db ABC_TM_49
	.db ABC_TM_50
	.db ABC_HM_01
	.db ABC_HM_02
	.db ABC_HM_03
	.db ABC_HM_04
	.db ABC_HM_05
	.db ABC_HM_06
	.db ABC_HM_07
	.db ABC_HM_08

	.align 4

AlphabeticalRGBYItemOrder:
	.db RGBY_ANTIDOTE
	.db RGBY_AWAKENING
	.db RGBY_BICYCLE
	.db RGBY_BIKE_VOUCHER
	.db RGBY_BOULDERBADGE
	.db RGBY_BURN_HEAL
	.db RGBY_CALCIUM
	.db RGBY_CARBOS
	.db RGBY_CARD_KEY
	.db RGBY_CASCADEBADGE
	.db RGBY_COIN_CASE
	.db RGBY_DIRE_HIT
	.db RGBY_DOME_FOSSIL
	.db RGBY_EARTHBADGE
	.db RGBY_ELIXER
	.db RGBY_ESCAPE_ROPE
	.db RGBY_ETHER
	.db RGBY_EXP__ALL
	.db RGBY_FIRE_STONE
	.db RGBY_FRESH_WATER
	.db RGBY_FULL_HEAL
	.db RGBY_FULL_RESTORE
	.db RGBY_GOLD_TEETH
	.db RGBY_GOOD_ROD
	.db RGBY_GREAT_BALL
	.db RGBY_GUARD_SPEC_
	.db RGBY_HELIX_FOSSIL
	.db RGBY_HM_01
	.db RGBY_HM_02
	.db RGBY_HM_03
	.db RGBY_HM_04
	.db RGBY_HM_05
	.db RGBY_HP_UP
	.db RGBY_HYPER_POTION
	.db RGBY_ICE_HEAL
	.db RGBY_IRON
	.db RGBY_ITEMFINDER
	.db RGBY_LEAF_STONE
	.db RGBY_LEMONADE
	.db RGBY_LIFT_KEY
	.db RGBY_MARSHBADGE
	.db RGBY_MASTER_BALL
	.db RGBY_MAX_ELIXER
	.db RGBY_MAX_ETHER
	.db RGBY_MAX_POTION
	.db RGBY_MAX_REPEL
	.db RGBY_MAX_REVIVE
	.db RGBY_MOON_STONE
	.db RGBY_NUGGET
	.db RGBY_OAKS_PARCEL
	.db RGBY_OLD_AMBER
	.db RGBY_OLD_ROD
	.db RGBY_PARLYZ_HEAL
	.db RGBY_POKE_BALL
	.db RGBY_POKE_DOLL
	.db RGBY_POKE_FLUTE
	.db RGBY_POKEDEX
	.db RGBY_POTION
	.db RGBY_PP_UP
	.db RGBY_PROTEIN
	.db RGBY_RAINBOWBADGE
	.db RGBY_RARE_CANDY
	.db RGBY_REPEL
	.db RGBY_REVIVE
	.db RGBY_S_S_TICKET
	.db RGBY_SAFARI_BALL
	.db RGBY_SECRET_KEY
	.db RGBY_SILPH_SCOPE
	.db RGBY_SODA_POP
	.db RGBY_SOULBADGE
	.db RGBY_SUPER_POTION
	.db RGBY_SUPER_REPEL
	.db RGBY_SUPER_ROD
	.db RGBY_THUNDERBADGE
	.db RGBY_THUNDER_STONE
	.db RGBY_TM_01
	.db RGBY_TM_02
	.db RGBY_TM_03
	.db RGBY_TM_04
	.db RGBY_TM_05
	.db RGBY_TM_06
	.db RGBY_TM_07
	.db RGBY_TM_08
	.db RGBY_TM_09
	.db RGBY_TM_10
	.db RGBY_TM_11
	.db RGBY_TM_12
	.db RGBY_TM_13
	.db RGBY_TM_14
	.db RGBY_TM_15
	.db RGBY_TM_16
	.db RGBY_TM_17
	.db RGBY_TM_18
	.db RGBY_TM_19
	.db RGBY_TM_20
	.db RGBY_TM_21
	.db RGBY_TM_22
	.db RGBY_TM_23
	.db RGBY_TM_24
	.db RGBY_TM_25
	.db RGBY_TM_26
	.db RGBY_TM_27
	.db RGBY_TM_28
	.db RGBY_TM_29
	.db RGBY_TM_30
	.db RGBY_TM_31
	.db RGBY_TM_32
	.db RGBY_TM_33
	.db RGBY_TM_34
	.db RGBY_TM_35
	.db RGBY_TM_36
	.db RGBY_TM_37
	.db RGBY_TM_38
	.db RGBY_TM_39
	.db RGBY_TM_40
	.db RGBY_TM_41
	.db RGBY_TM_42
	.db RGBY_TM_43
	.db RGBY_TM_44
	.db RGBY_TM_45
	.db RGBY_TM_46
	.db RGBY_TM_47
	.db RGBY_TM_48
	.db RGBY_TM_49
	.db RGBY_TM_50
	.db RGBY_TOWN_MAP
	.db RGBY_ULTRA_BALL
	.db RGBY_VOLCANOBADGE
	.db RGBY_WATER_STONE
	.db RGBY_X_ACCURACY
	.db RGBY_X_ATTACK
	.db RGBY_X_DEFEND
	.db RGBY_X_SPECIAL
	.db RGBY_X_SPEED
	.db RGBY_SURFBOARD
	.db RGBY_ITEM_2C
	.db RGBY_ITEM_32
	.db RGBY_COIN
	.db RGBY_ITEM_54
	.db RGBY_ITEM_55
	.db RGBY_ITEM_56
	.db RGBY_ITEM_57
	.db RGBY_ITEM_58
	.db RGBY_ITEM_59
	.db RGBY_ITEM_5A
	.db RGBY_ITEM_5B
	.db RGBY_ITEM_5C
	.db RGBY_ITEM_5D
	.db RGBY_ITEM_5E
	.db RGBY_ITEM_5F
	.db RGBY_ITEM_60
	.db RGBY_ITEM_61
	.db RGBY_ITEM_62
	.db RGBY_ITEM_63
	.db RGBY_ITEM_64
	.db RGBY_ITEM_65
	.db RGBY_ITEM_66
	.db RGBY_ITEM_67
	.db RGBY_ITEM_68
	.db RGBY_ITEM_69
	.db RGBY_ITEM_6A
	.db RGBY_ITEM_6B
	.db RGBY_ITEM_6C
	.db RGBY_ITEM_6D
	.db RGBY_ITEM_6E
	.db RGBY_ITEM_6F
	.db RGBY_ITEM_70
	.db RGBY_ITEM_71
	.db RGBY_ITEM_72
	.db RGBY_ITEM_73
	.db RGBY_ITEM_74
	.db RGBY_ITEM_75
	.db RGBY_ITEM_76
	.db RGBY_ITEM_77
	.db RGBY_ITEM_78
	.db RGBY_ITEM_79
	.db RGBY_ITEM_7A
	.db RGBY_ITEM_7B
	.db RGBY_ITEM_7C
	.db RGBY_ITEM_7D
	.db RGBY_ITEM_7E
	.db RGBY_ITEM_7F
	.db RGBY_ITEM_80
	.db RGBY_ITEM_81
	.db RGBY_ITEM_82
	.db RGBY_ITEM_83
	.db RGBY_ITEM_84
	.db RGBY_ITEM_85
	.db RGBY_ITEM_86
	.db RGBY_ITEM_87
	.db RGBY_ITEM_88
	.db RGBY_ITEM_89
	.db RGBY_ITEM_8A
	.db RGBY_ITEM_8B
	.db RGBY_ITEM_8C
	.db RGBY_ITEM_8D
	.db RGBY_ITEM_8E
	.db RGBY_ITEM_8F
	.db RGBY_ITEM_90
	.db RGBY_ITEM_91
	.db RGBY_ITEM_92
	.db RGBY_ITEM_93
	.db RGBY_ITEM_94
	.db RGBY_ITEM_95
	.db RGBY_ITEM_96
	.db RGBY_ITEM_97
	.db RGBY_ITEM_98
	.db RGBY_ITEM_99
	.db RGBY_ITEM_9A
	.db RGBY_ITEM_9B
	.db RGBY_ITEM_9C
	.db RGBY_ITEM_9D
	.db RGBY_ITEM_9E
	.db RGBY_ITEM_9F
	.db RGBY_ITEM_A0
	.db RGBY_ITEM_A1
	.db RGBY_ITEM_A2
	.db RGBY_ITEM_A3
	.db RGBY_ITEM_A4
	.db RGBY_ITEM_A5
	.db RGBY_ITEM_A6
	.db RGBY_ITEM_A7
	.db RGBY_ITEM_A8
	.db RGBY_ITEM_A9
	.db RGBY_ITEM_AA
	.db RGBY_ITEM_AB
	.db RGBY_ITEM_AC
	.db RGBY_ITEM_AD
	.db RGBY_ITEM_AE
	.db RGBY_ITEM_AF
	.db RGBY_ITEM_B0
	.db RGBY_ITEM_B1
	.db RGBY_ITEM_B2
	.db RGBY_ITEM_B3
	.db RGBY_ITEM_B4
	.db RGBY_ITEM_B5
	.db RGBY_ITEM_B6
	.db RGBY_ITEM_B7
	.db RGBY_ITEM_B8
	.db RGBY_ITEM_B9
	.db RGBY_ITEM_BA
	.db RGBY_ITEM_BB
	.db RGBY_ITEM_BC
	.db RGBY_ITEM_BD
	.db RGBY_ITEM_BE
	.db RGBY_ITEM_BF
	.db RGBY_ITEM_C0
	.db RGBY_ITEM_C1
	.db RGBY_ITEM_C2
	.db RGBY_ITEM_C3

	.align 4

AlphabeticalRGBYItemOrderInverse:
; Each move's position in AlphabeticalRGBYItemOrder.
	.db ABC_RGBY_MASTER_BALL
	.db ABC_RGBY_ULTRA_BALL
	.db ABC_RGBY_GREAT_BALL
	.db ABC_RGBY_POKE_BALL
	.db ABC_RGBY_TOWN_MAP
	.db ABC_RGBY_BICYCLE
	.db ABC_RGBY_SURFBOARD
	.db ABC_RGBY_SAFARI_BALL
	.db ABC_RGBY_POKEDEX
	.db ABC_RGBY_MOON_STONE
	.db ABC_RGBY_ANTIDOTE
	.db ABC_RGBY_BURN_HEAL
	.db ABC_RGBY_ICE_HEAL
	.db ABC_RGBY_AWAKENING
	.db ABC_RGBY_PARLYZ_HEAL
	.db ABC_RGBY_FULL_RESTORE
	.db ABC_RGBY_MAX_POTION
	.db ABC_RGBY_HYPER_POTION
	.db ABC_RGBY_SUPER_POTION
	.db ABC_RGBY_POTION
	.db ABC_RGBY_BOULDERBADGE
	.db ABC_RGBY_CASCADEBADGE
	.db ABC_RGBY_THUNDERBADGE
	.db ABC_RGBY_RAINBOWBADGE
	.db ABC_RGBY_SOULBADGE
	.db ABC_RGBY_MARSHBADGE
	.db ABC_RGBY_VOLCANOBADGE
	.db ABC_RGBY_EARTHBADGE
	.db ABC_RGBY_ESCAPE_ROPE
	.db ABC_RGBY_REPEL
	.db ABC_RGBY_OLD_AMBER
	.db ABC_RGBY_FIRE_STONE
	.db ABC_RGBY_THUNDER_STONE
	.db ABC_RGBY_WATER_STONE
	.db ABC_RGBY_HP_UP
	.db ABC_RGBY_PROTEIN
	.db ABC_RGBY_IRON
	.db ABC_RGBY_CARBOS
	.db ABC_RGBY_CALCIUM
	.db ABC_RGBY_RARE_CANDY
	.db ABC_RGBY_DOME_FOSSIL
	.db ABC_RGBY_HELIX_FOSSIL
	.db ABC_RGBY_SECRET_KEY
	.db ABC_RGBY_ITEM_2C
	.db ABC_RGBY_BIKE_VOUCHER
	.db ABC_RGBY_X_ACCURACY
	.db ABC_RGBY_LEAF_STONE
	.db ABC_RGBY_CARD_KEY
	.db ABC_RGBY_NUGGET
	.db ABC_RGBY_ITEM_32
	.db ABC_RGBY_POKE_DOLL
	.db ABC_RGBY_FULL_HEAL
	.db ABC_RGBY_REVIVE
	.db ABC_RGBY_MAX_REVIVE
	.db ABC_RGBY_GUARD_SPEC_
	.db ABC_RGBY_SUPER_REPEL
	.db ABC_RGBY_MAX_REPEL
	.db ABC_RGBY_DIRE_HIT
	.db ABC_RGBY_COIN
	.db ABC_RGBY_FRESH_WATER
	.db ABC_RGBY_SODA_POP
	.db ABC_RGBY_LEMONADE
	.db ABC_RGBY_S_S_TICKET
	.db ABC_RGBY_GOLD_TEETH
	.db ABC_RGBY_X_ATTACK
	.db ABC_RGBY_X_DEFEND
	.db ABC_RGBY_X_SPEED
	.db ABC_RGBY_X_SPECIAL
	.db ABC_RGBY_COIN_CASE
	.db ABC_RGBY_OAKS_PARCEL
	.db ABC_RGBY_ITEMFINDER
	.db ABC_RGBY_SILPH_SCOPE
	.db ABC_RGBY_POKE_FLUTE
	.db ABC_RGBY_LIFT_KEY
	.db ABC_RGBY_EXP__ALL
	.db ABC_RGBY_OLD_ROD
	.db ABC_RGBY_GOOD_ROD
	.db ABC_RGBY_SUPER_ROD
	.db ABC_RGBY_PP_UP
	.db ABC_RGBY_ETHER
	.db ABC_RGBY_MAX_ETHER
	.db ABC_RGBY_ELIXER
	.db ABC_RGBY_MAX_ELIXER
	.db ABC_RGBY_ITEM_54
	.db ABC_RGBY_ITEM_55
	.db ABC_RGBY_ITEM_56
	.db ABC_RGBY_ITEM_57
	.db ABC_RGBY_ITEM_58
	.db ABC_RGBY_ITEM_59
	.db ABC_RGBY_ITEM_5A
	.db ABC_RGBY_ITEM_5B
	.db ABC_RGBY_ITEM_5C
	.db ABC_RGBY_ITEM_5D
	.db ABC_RGBY_ITEM_5E
	.db ABC_RGBY_ITEM_5F
	.db ABC_RGBY_ITEM_60
	.db ABC_RGBY_ITEM_61
	.db ABC_RGBY_ITEM_62
	.db ABC_RGBY_ITEM_63
	.db ABC_RGBY_ITEM_64
	.db ABC_RGBY_ITEM_65
	.db ABC_RGBY_ITEM_66
	.db ABC_RGBY_ITEM_67
	.db ABC_RGBY_ITEM_68
	.db ABC_RGBY_ITEM_69
	.db ABC_RGBY_ITEM_6A
	.db ABC_RGBY_ITEM_6B
	.db ABC_RGBY_ITEM_6C
	.db ABC_RGBY_ITEM_6D
	.db ABC_RGBY_ITEM_6E
	.db ABC_RGBY_ITEM_6F
	.db ABC_RGBY_ITEM_70
	.db ABC_RGBY_ITEM_71
	.db ABC_RGBY_ITEM_72
	.db ABC_RGBY_ITEM_73
	.db ABC_RGBY_ITEM_74
	.db ABC_RGBY_ITEM_75
	.db ABC_RGBY_ITEM_76
	.db ABC_RGBY_ITEM_77
	.db ABC_RGBY_ITEM_78
	.db ABC_RGBY_ITEM_79
	.db ABC_RGBY_ITEM_7A
	.db ABC_RGBY_ITEM_7B
	.db ABC_RGBY_ITEM_7C
	.db ABC_RGBY_ITEM_7D
	.db ABC_RGBY_ITEM_7E
	.db ABC_RGBY_ITEM_7F
	.db ABC_RGBY_ITEM_80
	.db ABC_RGBY_ITEM_81
	.db ABC_RGBY_ITEM_82
	.db ABC_RGBY_ITEM_83
	.db ABC_RGBY_ITEM_84
	.db ABC_RGBY_ITEM_85
	.db ABC_RGBY_ITEM_86
	.db ABC_RGBY_ITEM_87
	.db ABC_RGBY_ITEM_88
	.db ABC_RGBY_ITEM_89
	.db ABC_RGBY_ITEM_8A
	.db ABC_RGBY_ITEM_8B
	.db ABC_RGBY_ITEM_8C
	.db ABC_RGBY_ITEM_8D
	.db ABC_RGBY_ITEM_8E
	.db ABC_RGBY_ITEM_8F
	.db ABC_RGBY_ITEM_90
	.db ABC_RGBY_ITEM_91
	.db ABC_RGBY_ITEM_92
	.db ABC_RGBY_ITEM_93
	.db ABC_RGBY_ITEM_94
	.db ABC_RGBY_ITEM_95
	.db ABC_RGBY_ITEM_96
	.db ABC_RGBY_ITEM_97
	.db ABC_RGBY_ITEM_98
	.db ABC_RGBY_ITEM_99
	.db ABC_RGBY_ITEM_9A
	.db ABC_RGBY_ITEM_9B
	.db ABC_RGBY_ITEM_9C
	.db ABC_RGBY_ITEM_9D
	.db ABC_RGBY_ITEM_9E
	.db ABC_RGBY_ITEM_9F
	.db ABC_RGBY_ITEM_A0
	.db ABC_RGBY_ITEM_A1
	.db ABC_RGBY_ITEM_A2
	.db ABC_RGBY_ITEM_A3
	.db ABC_RGBY_ITEM_A4
	.db ABC_RGBY_ITEM_A5
	.db ABC_RGBY_ITEM_A6
	.db ABC_RGBY_ITEM_A7
	.db ABC_RGBY_ITEM_A8
	.db ABC_RGBY_ITEM_A9
	.db ABC_RGBY_ITEM_AA
	.db ABC_RGBY_ITEM_AB
	.db ABC_RGBY_ITEM_AC
	.db ABC_RGBY_ITEM_AD
	.db ABC_RGBY_ITEM_AE
	.db ABC_RGBY_ITEM_AF
	.db ABC_RGBY_ITEM_B0
	.db ABC_RGBY_ITEM_B1
	.db ABC_RGBY_ITEM_B2
	.db ABC_RGBY_ITEM_B3
	.db ABC_RGBY_ITEM_B4
	.db ABC_RGBY_ITEM_B5
	.db ABC_RGBY_ITEM_B6
	.db ABC_RGBY_ITEM_B7
	.db ABC_RGBY_ITEM_B8
	.db ABC_RGBY_ITEM_B9
	.db ABC_RGBY_ITEM_BA
	.db ABC_RGBY_ITEM_BB
	.db ABC_RGBY_ITEM_BC
	.db ABC_RGBY_ITEM_BD
	.db ABC_RGBY_ITEM_BE
	.db ABC_RGBY_ITEM_BF
	.db ABC_RGBY_ITEM_C0
	.db ABC_RGBY_ITEM_C1
	.db ABC_RGBY_ITEM_C2
	.db ABC_RGBY_ITEM_C3
	.db ABC_RGBY_HM_01
	.db ABC_RGBY_HM_02
	.db ABC_RGBY_HM_03
	.db ABC_RGBY_HM_04
	.db ABC_RGBY_HM_05
	.db ABC_RGBY_TM_01
	.db ABC_RGBY_TM_02
	.db ABC_RGBY_TM_03
	.db ABC_RGBY_TM_04
	.db ABC_RGBY_TM_05
	.db ABC_RGBY_TM_06
	.db ABC_RGBY_TM_07
	.db ABC_RGBY_TM_08
	.db ABC_RGBY_TM_09
	.db ABC_RGBY_TM_10
	.db ABC_RGBY_TM_11
	.db ABC_RGBY_TM_12
	.db ABC_RGBY_TM_13
	.db ABC_RGBY_TM_14
	.db ABC_RGBY_TM_15
	.db ABC_RGBY_TM_16
	.db ABC_RGBY_TM_17
	.db ABC_RGBY_TM_18
	.db ABC_RGBY_TM_19
	.db ABC_RGBY_TM_20
	.db ABC_RGBY_TM_21
	.db ABC_RGBY_TM_22
	.db ABC_RGBY_TM_23
	.db ABC_RGBY_TM_24
	.db ABC_RGBY_TM_25
	.db ABC_RGBY_TM_26
	.db ABC_RGBY_TM_27
	.db ABC_RGBY_TM_28
	.db ABC_RGBY_TM_29
	.db ABC_RGBY_TM_30
	.db ABC_RGBY_TM_31
	.db ABC_RGBY_TM_32
	.db ABC_RGBY_TM_33
	.db ABC_RGBY_TM_34
	.db ABC_RGBY_TM_35
	.db ABC_RGBY_TM_36
	.db ABC_RGBY_TM_37
	.db ABC_RGBY_TM_38
	.db ABC_RGBY_TM_39
	.db ABC_RGBY_TM_40
	.db ABC_RGBY_TM_41
	.db ABC_RGBY_TM_42
	.db ABC_RGBY_TM_43
	.db ABC_RGBY_TM_44
	.db ABC_RGBY_TM_45
	.db ABC_RGBY_TM_46
	.db ABC_RGBY_TM_47
	.db ABC_RGBY_TM_48
	.db ABC_RGBY_TM_49
	.db ABC_RGBY_TM_50

	.align 4

.incbin "baseromgs.n64",0xa0c68,0xa0d90-0xa0c68

; XXX what is the data at 0xa0d90?
; it is 5 * 16 bytes per entry (total of 56 entries)
; notice how 0xa0d90, 0xa0de0, 0xa0e30, 0xa0e80 are 0, 1, 2, 3…
.incbin "baseromgs.n64",0xa0d90,0xa1f10-0xa0d90

.incbin "baseromgs.n64",0xa1f10,0xa2250-0xa1f10

GameBoyHeaderLogo:
	.db 0xCE,0xED,0x66,0x66,0xCC,0x0D,0x00,0x0B
	.db 0x03,0x73,0x00,0x83,0x00,0x0C,0x00,0x0D
	.db 0x00,0x08,0x11,0x1F,0x88,0x89,0x00,0x0E
	.db 0xDC,0xCC,0x6E,0xE6,0xDD,0xDD,0xD9,0x99
	.db 0xBB,0xBB,0x67,0x63,0x6E,0x0E,0xEC,0xCC
	.db 0xDD,0xDC,0x99,0x9F,0xBB,0xB9,0x33,0x3E

.incbin "baseromgs.n64",0xa2280,0xa2400-0xa2280

	.db "MEM(4M): +%08XH (+%4dK)",0
	.align 4
	.db "MEM(4M): -%08XH (-%4dK)",0
	.align 4
	.db "MEM(8M): +%08XH (+%4dK)",0
	.align 4
	.db "MEM(8M): -%08XH (-%4dK)",0
	.align 4

.incbin "baseromgs.n64",0xa2460,0xa2510-0xa2460

	.db "Interrupt",0
	.align 4
	.db "TLB modification",0
	.align 4
	.db "TLB exception on load",0
	.align 4
	.db "TLB exception on store",0
	.align 4
	.db "Address error on load",0
	.align 4
	.db "Address error on store",0
	.align 4
	.db "Bus error on inst.",0
	.align 4
	.db "Bus error on data",0
	.align 4
	.db "System call exception",0
	.align 4
	.db "Breakpoint exception",0
	.align 4
	.db "Reserved instruction",0
	.align 4
	.db "Coprocessor unusable",0
	.align 4
	.db "Arithmetic overflow",0
	.align 4
	.db "Trap exception",0
	.align 4
	.db "Virtual coherency on inst.",0
	.align 4
	.db "Floating point exception",0
	.align 4
	.db "Watchpoint exception",0
	.align 4
	.db "Virtual coherency on data",0
	.align 4
	.db "Unimplemented operation",0
	.align 4
	.db "Invalid operation",0
	.align 4
	.db "Division by zero",0
	.align 4
	.db "Overflow",0
	.align 4
	.db "Underflow",0
	.align 4
	.db "Inexact operation",0
	.align 4
	.db "F%02d:%+.3e",0
	.align 4
	.db "F%02d:---------",0
	.align 4
	.db "FPCSR:%08XH",0
	.align 4
	.db "(%s)",0
	.align 4
	.db "THREAD:%d  (%s)",0
	.align 4
	.db "PC:%08XH   SR:%08XH   VA:%08XH",0
	.align 4
	.db "AT:%08XH   V0:%08XH   V1:%08XH",0
	.align 4
	.db "A0:%08XH   A1:%08XH   A2:%08XH",0
	.align 4
	.db "A3:%08XH   T0:%08XH   T1:%08XH",0
	.align 4
	.db "T2:%08XH   T3:%08XH   T4:%08XH",0
	.align 4
	.db "T5:%08XH   T6:%08XH   T7:%08XH",0
	.align 4
	.db "S0:%08XH   S1:%08XH   S2:%08XH",0
	.align 4
	.db "S3:%08XH   S4:%08XH   S5:%08XH",0
	.align 4
	.db "S6:%08XH   S7:%08XH   T8:%08XH",0
	.align 4
	.db "T9:%08XH   GP:%08XH   SP:%08XH",0
	.align 4
	.db "S8:%08XH   RA:%08XH",0
	.align 4
	.db "F-PC:%08XH",0
	.align 4
	.db "F-RA:%08XH",0
	.align 4
	.db "MM:%08XH",0
	.align 16

	.db "MAXA:%5.3f",0
	.align 4
	.db "CPU:%5.3f",0
	.align 4
	.db "RCP:%5.3f",0
	.align 4

.incbin "baseromgs.n64",0xa28f4,0xa4ee0-0xa28f4

; text strings representing commands to the text engine
	.db "FONT",0
	.align 4
	.db "COL1",0
	.align 4
	.db "COL2",0
	.align 4
	.db "TEX",0
	.align 4
	.db "LINE",0
	.align 4
	.db "FACE",0
	.align 4
	.db "DIST",0
	.align 4
	.db "WAZA",0
	.align 4
	.db "KOKA",0
	.align 4
	.db "NEMURI",0
	.align 4
	.db "DOKU",0
	.align 4
	.db "DOKUDOKU",0
	.align 4
	.db "YAKEDO",0
	.align 4
	.db "KOHRI",0
	.align 4
	.db "MAHI",0
	.align 4
	.db "HIRUMI",0
	.align 4
	.db "SHIBARI",0
	.align 4
	.db "KONRAN",0
	.align 4
	.db "MEROMERO",0
	.align 4
	.db "NOROI",0
	.align 4
	.db "AKUMU",0
	.align 4
	.db "YADORIGI",0
	.align 4
	.db "HARE",0
	.align 4
	.db "AME",0
	.align 4
	.db "SUNA",0
	.align 4
	.db "LOAD",0
	.align 4
	.db "PUSH",0
	.align 4
	.db "POP",0
	.align 4

.incbin "baseromgs.n64",0xa4fc0,0xa55b0-0xa4fc0

	.db "POKEMON R",0
	.align 4
	.db "POKEMON G",0
	.align 4
	.db "POKEMON B",0
	.align 4
	.db "POKEMON Y",0
	.align 4
	.db "POKEMON_G",0
	.align 4
	.db "POKEMON_S",0
	.align 4
	.db "PM_CRYSTA",0
	.align 4

	.align 16

	.db "POKEMON",0
	.align 4
	.db "RED",0
	.align 4
	.db "GREEN",0
	.align 4
	.db "BLUE",0
	.align 4
	.db "Y",0
	.align 4
	.db "G",0
	.align 4
	.db "S",0
	.align 4
	.db "PM_CRYS",0
	.align 4

.incbin "baseromgs.n64",0xa5640,0xa6500-0xa5640

	.db "og_monster_eff_init() err!  og_init_kemuri_eff_all = NULL",0x0A,0
	.align 4
	.db "0x%08x ",0
	.align 4
	.db 0x0A,0
	.align 4
	.db 0x0A,0
	.align 4
	.db "%10.4f  ",0
	.align 4
	.db 0x0A,0
	.align 4
	.db 0x0A,0
	.align 4

.incbin "baseromgs.n64",0xa6560,0xa6610-0xa6560

	.db "can't `ModelBank_Register' when no freezone.",0x0A,0
	.align 4
	.db "Can't get hms cause no load : %d/%d",0x0A,0
	.align 4
	.db "Out of Index %d : (0-%d)",0x0A,0
	.align 4
	.db "Can't get node cause no load : %d/%d",0x0A,0
	.align 4
	.db "Out of Index %d : (0-%d)",0x0A,0
	.align 4

	.align 16

	.db "PokeMonFlags %08x",0x0A,0
	.align 4
	.db "%16s : %s ",0
	.align 4
	.db "o",0
	.align 4
	.db "x",0
	.align 4
	.db 0x0A,0
	.align 4

	.align 16

.incbin "baseromgs.n64",0xa6700,0xa6b20-0xa6700

	.db "ReadMem @ %08x for %d",0x0A,0
	.align 4
	.db "WriteMem",0x0A,0
	.align 4
	.db "Long unaligned write...",0x0A,0
	.align 4
	.db "RCP write not an integral number of words",0x0A,0
	.align 4
	.db "ListProcesses",0x0A,0
	.align 4
	.db "LoadProgram",0x0A,0
	.align 4
	.db "GetExeName",0x0A,0
	.align 4
	.db "imem",0
	.align 4
	.db "rmon",0
	.align 4
	.db "GetRegionCount",0x0A,0
	.align 4
	.db "GetRegions",0x0A,0
	.align 4

	.align 16

	.db "rmon: Thread %d created",0x0A,0
	.align 4
	.db "rmon: Thread %d destroyed",0x0A,0
	.align 4

	.align 16

	.db "StopThreads %d",0x0A,0
	.align 4
	.db "Couldn't stop thread %d",0x0A,0
	.align 4
	.db "Couldn't stop thread %d",0x0A,0
	.align 4
	.db "ListThreads",0x0A,0
	.align 4
	.db "ThreadStatus %d method %d",0x0A,0
	.align 4
	.db "StopThread %d",0x0A,0
	.align 4
	.db "RunThread %d",0x0A,0
	.align 4

	.align 16

	.db "SetFault",0x0A,0
	.align 4
	.db "PANIC!!",0x0A,0
	.align 4
	.db "SetComm",0x0A,0
	.align 4

	.align 16

	.db "Set temp BP at %08x",0
	.align 4
	.db " and %08x",0
	.align 4
	.db 0x0A,0
	.align 4
	.db "ClearTempBreak @ %08x",0x0A,0
	.align 4
	.db "ClearTempBreak @ %08x",0x0A,0
	.align 4
	.db "SetBreak at %08x, method %d",0x0A,0
	.align 4
	.db "* (%08x) = %08x (was %08x)",0x0A,0
	.align 4
	.db "ListBreak",0x0A,0
	.align 4
	.db "ClearBreak",0x0A,0
	.align 4
	.db "SingleStep",0x0A,0
	.align 4
	.db "Break %d in thread %d",0x0A,0
	.align 4
	.db "HitBreak",0x0A,0
	.align 4
	.db "Hit SP Break",0x0A,0
	.align 4
	.db "HitCpuFault",0x0A,0
	.align 4
	.db "Brk in thread %d @ %08x, inst %08x",0x0D,0x0A,0
	.align 4

.incbin "baseromgs.n64",0xa6e20,0xa6ed0-0xa6e20

	.db "GetGRegisters",0x0A,0
	.align 4
	.db "SetGRegisters",0x0A,0
	.align 4
	.db "GetFRegisters",0x0A,0
	.align 4
	.db "SetFRegisters",0x0A,0
	.align 4
	.db "GetSRegisters",0x0A,0
	.align 4
	.db "SetSRegisters",0x0A,0
	.align 4
	.db "GetVRegisters",0x0A,0
	.align 4
	.db "SetVRegs",0x0A,0
	.align 4

	.align 16

.incbin "baseromgs.n64",0xa6f50,0xa8738-0xa6f50

	.db "RSP Gfx ucode F3DEX       fifo 2.08  Yoshitaka Yasumoto/Kawasedo 1999.",0x0A,0
	.align 4

.incbin "baseromgs.n64",0xa8780,0xb96e0-0xa8780

	.db "sizeof(PickFolder) = %d",0x0A,0
	.align 4
	.db "sizeof(PickRegMenu) = %d",0x0A,0
	.align 4
	.db "sizeof(PickCartSelector) = %d",0x0A,0
	.align 4

.incbin "baseromgs.n64",0xb9738,0x15de24-0xb9738

	.db "Stadium",0
	.align 4
	.db "GB building",0
	.align 4
	.db "School",0
	.align 4
	.db "Gym leaders",0
	.align 4
	.db "Laboratory",0
	.align 4
	.db "X",0
	.align 4
	.db "My room",0
	.align 4
	.db "Free battle",0
	.align 4
	.db "---",0
	.align 4
	.db "Stadium",0
	.align 4
	.db "GB building",0
	.align 4
	.db "School",0
	.align 4
	.db "Gym leaders",0
	.align 4
	.db "Laboratory",0
	.align 4
	.db "X",0
	.align 4
	.db "Beat the rival",0
	.align 4
	.db "My room",0
	.align 4
	.db "Free battle",0
	.align 4
	.db "---",0
	.align 4
	.db "Stadium",0
	.align 4
	.db "GB building",0
	.align 4
	.db "School",0
	.align 4
	.db "Gym leaders",0
	.align 4
	.db "Laboratory",0
	.align 4
	.db "X",0
	.align 4
	.db "My room",0
	.align 4
	.db "Free battle",0
	.align 4
	.db "---",0
	.align 4
	.db "Stadium",0
	.align 4
	.db "GB building",0
	.align 4
	.db "School",0
	.align 4
	.db "Gym leaders",0
	.align 4
	.db "Laboratory",0
	.align 4
	.db "X",0
	.align 4
	.db "Beat the rival",0
	.align 4
	.db "My room",0
	.align 4
	.db "Free battle",0
	.align 4
	.db "---",0
	.align 4
	.db "Stadium",0
	.align 4
	.db "GB building",0
	.align 4
	.db "School",0
	.align 4
	.db "Gym leaders",0
	.align 4
	.db "Laboratory",0
	.align 4
	.db "X",0
	.align 4
	.db "My room",0
	.align 4
	.db "Free battle",0
	.align 4
	.db "---",0
	.align 4
	.db "Stadium",0
	.align 4
	.db "GB building",0
	.align 4
	.db "School",0
	.align 4
	.db "Gym leaders",0
	.align 4
	.db "Laboratory",0
	.align 4
	.db "X",0
	.align 4
	.db "Beat the rival",0
	.align 4
	.db "My room",0
	.align 4
	.db "Free battle",0
	.align 4
	.db "---",0
	.align 4
	.db "Stadium",0
	.align 4
	.db "GB building",0
	.align 4
	.db "School",0
	.align 4
	.db "Gym leaders",0
	.align 4
	.db "Laboratory",0
	.align 4
	.db "X",0
	.align 4
	.db "My room",0
	.align 4
	.db "Free battle",0
	.align 4
	.db "---",0
	.align 4
	.db "Stadium",0
	.align 4
	.db "GB building",0
	.align 4
	.db "School",0
	.align 4
	.db "Gym leaders",0
	.align 4
	.db "Laboratory",0
	.align 4
	.db "X",0
	.align 4
	.db "Beat the rival",0
	.align 4
	.db "My room",0
	.align 4
	.db "Free battle",0
	.align 4
	.db "---",0
	.align 4
	.db "n_wis_wislif_END%d %d",0x0A,0
	.align 4

.incbin "baseromgs.n64",0x15e0fc,0x172320-0x15e0fc

GiftFarfetchdMoves:
	.db BATON_PASS
	.db AGILITY
	.db SWORDS_DANCE
	.db SLASH

GiftGligarMoves:
	.db EARTHQUAKE
	.db POISON_STING
	.db WING_ATTACK
	.db COUNTER

	.align 16

.incbin "baseromgs.n64",0x172330,0x3f4ca0-0x172330

StatLevelMultipliers:
        db 25, 100 ; 0.25×
        db 28, 100 ; 0.28×
        db 33, 100 ; 0.33×
        db 40, 100 ; 0.40×
        db 50, 100 ; 0.50×
        db 66, 100 ; 0.66×
        db  1,   1 ; 1.00×
        db 15,  10 ; 1.50×
        db  2,   1 ; 2.00×
        db 25,  10 ; 2.50×
        db  3,   1 ; 3.00×
        db 35,  10 ; 3.50×
        db  4,   1 ; 4.00×

	.align 4

AccuracyProbabilities:
	.db  33, 100 ;  33% −6
	.db  36, 100 ;  36% −5
	.db  43, 100 ;  43% −4
	.db  50, 100 ;  50% −3
	.db  60, 100 ;  60% −2
	.db  75, 100 ;  75% −1
	.db   1,   1 ; 100%  0
	.db 133, 100 ; 133% +1
	.db 166, 100 ; 166% +2
	.db   2,   1 ; 200% +3
	.db 233, 100 ; 233% +4
	.db 133,  50 ; 266% +5
	.db   3,   1 ; 300% +6

	.align 4

.incbin "baseromgs.n64",0x3f4cd8,0x3f4d0c-0x3f4cd8

CriticalMoves:
	.db KARATE_CHOP
	.db RAZOR_WIND
	.db RAZOR_LEAF
	.db CRABHAMMER
	.db SLASH
	.db AEROBLAST
	.db CROSS_CHOP
	.db -1

CriticalChances:
	.db 0x11 ; 6.25%
	.db 0x20 ; 12.1%
	.db 0x40 ; 24.6%
	.db 0x55 ; 33.2%
	.db 0x80 ; 49.6%
	.db 0x80 ; 49.6%
	.db 0x80 ; 49.6%

	.align 4

MetronomeExcepts:
	.db METRONOME
	.db STRUGGLE
	.db SKETCH
	.db MIMIC
	.db COUNTER
	.db MIRROR_COAT
	.db PROTECT
	.db DETECT
	.db ENDURE
	.db DESTINY_BOND
	.db SLEEP_TALK
	.db THIEF
	.db -1

	.align 4

ConsumableEffects:
	.db HELD_BERRY
	.db HELD_2
	.db HELD_5
	.db HELD_HEAL_POISON
	.db HELD_HEAL_FREEZE
	.db HELD_HEAL_BURN
	.db HELD_HEAL_SLEEP
	.db HELD_HEAL_PARALYZE
	.db HELD_HEAL_STATUS
	.db HELD_30
	.db HELD_ATTACK_UP
	.db HELD_DEFENSE_UP
	.db HELD_SPEED_UP
	.db HELD_SP_ATTACK_UP
	.db HELD_SP_DEFENSE_UP
	.db HELD_ACCURACY_UP
	.db HELD_EVASION_UP
	.db HELD_38
	.db HELD_71
	.db HELD_ESCAPE
	.db HELD_CRITICAL_UP
	.db -1

	.align 4

MoveGrammar0:
	.db SWORDS_DANCE
	.db GROWTH
	.db STRENGTH
	.db HARDEN
	.db MINIMIZE
	.db SMOKESCREEN
	.db WITHDRAW
	.db DEFENSE_CURL
	.db EGG_BOMB
	.db SMOG
	.db BONE_CLUB
	.db FLASH
	.db SPLASH
	.db ACID_ARMOR
	.db BONEMERANG
	.db REST
	.db SHARPEN
	.db SUBSTITUTE
	.db MIND_READER
	.db SNORE
	.db PROTECT
	.db SPIKES
	.db ENDURE
	.db ROLLOUT
	.db SWAGGER
	.db SLEEP_TALK
	.db HIDDEN_POWER
	.db PSYCH_UP
	.db EXTREMESPEED
	.db -1

	.align 4

MoveGrammar1:
	.db RECOVER
	.db TELEPORT
	.db BIDE
	.db SELFDESTRUCT
	.db AMNESIA
	.db FLAIL
	.db -1

	.align 4

MoveGrammar2:
	.db MEDITATE
	.db AGILITY
	.db MIMIC
	.db DOUBLE_TEAM
	.db BARRAGE
	.db TRANSFORM
	.db STRUGGLE
	.db SCARY_FACE
	.db -1

	.align 4

MoveGrammar3:
	.db POUND
	.db SCRATCH
	.db VICEGRIP
	.db WING_ATTACK
	.db FLY
	.db BIND
	.db SLAM
	.db HORN_ATTACK
	.db WRAP
	.db THRASH
	.db TAIL_WHIP
	.db LEER
	.db BITE
	.db GROWL
	.db ROAR
	.db SING
	.db PECK
	.db ABSORB
	.db STRING_SHOT
	.db EARTHQUAKE
	.db FISSURE
	.db DIG
	.db TOXIC
	.db SCREECH
	.db METRONOME
	.db LICK
	.db CLAMP
	.db CONSTRICT
	.db POISON_GAS
	.db BUBBLE
	.db SLASH
	.db SPIDER_WEB
	.db NIGHTMARE
	.db CURSE
	.db FORESIGHT
	.db CHARM
	.db ATTRACT
	.db ROCK_SMASH
	.db -1

	.align 4

BattleData0x03F4DA0: ; XXX what is this?
	.db 0x01
	.db 0x02
	.db 0x03
	.db 0x04
	.db 0x59
	.db 0x05
	.db 0x06
	.db 0x07
	.db 0xa1
	.db 0x08
	.db 0x09
	.db 0x0a
	.db 0x0b
	.db 0xa2
	.db 0x0c
	.db 0x0d
	.db 0x44
	.db -1

	.align 4

BattleData0x03F4DB4: ; XXX what is this?
	.db 0x01
	.db 0x02
	.db 0x07
	.db 0xA1
	.db 0x5C
	.db 0x0F
	.db -1

	.align 4

BattleData0x03F4DBC: ; XXX what is this?
	.db 0x01
	.db 0x02
	.db 0x03
	.db 0x04
	.db 0x59
	.db 0x05
	.db 0x06
	.db 0x07
	.db 0x87
	.db 0xa1
	.db 0x08
	.db 0x09
	.db 0x0a
	.db 0x0b
	.db 0xa2
	.db 0x0c
	.db 0x0d
	.db 0x0e
	.db -1

	.align 4

BattleData0x03F4DD0: ; XXX what is this?
	.db 0x01
	.db 0x02
	.db 0x03
	.db 0x04
	.db 0x59
	.db 0x05
	.db 0x06
	.db 0x07
	.db 0xa1
	.db 0x08
	.db 0x09
	.db 0x0a
	.db 0x0b
	.db 0xa2
	.db 0x10
	.db 0x0c
	.db 0x0d
	.db 0x44
	.db -1

	.align 4

BattleData0x03F4DE4: ; XXX what is this?
	.db 0x01
	.db 0x02
	.db 0x03
	.db 0x04
	.db 0x59
	.db 0x05
	.db 0x06
	.db 0x07
	.db 0x87
	.db 0xa1
	.db 0x08
	.db 0x09
	.db 0x0a
	.db 0x0b
	.db 0xa2
	.db 0x0c
	.db 0x0d
	.db 0x12
	.db -1

	.align 4

BattleData0x03F4DF8: ; XXX what is this?
	.db 0x01
	.db 0x02
	.db 0x03
	.db 0x04
	.db 0x59
	.db 0x05
	.db 0x06
	.db 0x07
	.db 0x87
	.db 0xa1
	.db 0x08
	.db 0x09
	.db 0x0a
	.db 0x0b
	.db 0xa2
	.db 0x0c
	.db 0x0d
	.db 0x13
	.db -1

	.align 4

BattleData0x03F4E0C: ; XXX what is this?
	.db 0x01
	.db 0x02
	.db 0x03
	.db 0x04
	.db 0x59
	.db 0x05
	.db 0x06
	.db 0x07
	.db 0x87
	.db 0xa1
	.db 0x08
	.db 0x09
	.db 0x0a
	.db 0x0b
	.db 0xa2
	.db 0x0c
	.db 0x0d
	.db 0x14
	.db -1

	.align 4

; arrays like the above continue in the same vein until 0x3f54cc
.incbin "baseromgs.n64",0x3f4e20,0x3f54cc-0x3f4e20

; XXX what is this?
; appears to be a repetitive array of 32-bit data?
.incbin "baseromgs.n64",0x3f54cc,0x3f59e0-0x3f54cc


.incbin "baseromgs.n64",0x3f59e0,0x3f9690-0x3f59e0

	.db "SearchTable",0x0A,0
	.align 4
	.db "fight_rnd",0x0A,0
	.align 4
	.db "lose_check",0x0A,0
	.align 4
	.db "SwapByte",0x0A,0
	.align 4
	.db "NSCheck",0x0A,0
	.align 4
	.db "critical_judge",0x0A,0
	.align 4
	.db "waza_param_set",0x0A,0
	.align 4
	.db "waza_restart",0x0A,0
	.align 4
	.db "next_search",0x0A,0
	.align 4
	.db "back_search",0x0A,0
	.align 4
	.db "kougeki_exit",0x0A,0
	.align 4
	.db "cond_param_set_single",0x0A,0
	.align 4
	.db "cond_param_set",0x0A,0
	.align 4
	.db "item_cure",0x0A,0
	.align 4
	.db "konran_cure",0x0A,0
	.align 4
	.db "chk_cond_up_down",0x0A,0
	.align 4
	.db "cond_up_down",0x0A,0
	.align 4
	.db "cond_up_down_self",0x0A,0
	.align 4
	.db "chk_hikae_ready",0x0A,0
	.align 4
	.db "chk_attack_order",0x0A,0
	.align 4
	.db "chk_type",0x0A,0
	.align 4
	.db "chk_have_waza",0x0A,0
	.align 4
	.db "chk_tame",0x0A,0
	.align 4
	.db "reset_renzoku",0x0A,0
	.align 4
	.db "kougeki_ng",0x0A,0
	.align 4
	.db "jibun_kougeki_c",0x0A,0
	.align 4
	.db "get_kougeki",0x0A,0
	.align 4
	.db "kezuru_per",0x0A,0
	.align 4
	.db "fuyasu_per",0x0A,0
	.align 4
	.db "hp_kezuru",0x0A,0
	.align 4
	.db "hp_fuyasu",0x0A,0
	.align 4
	.db "jibun_kougeki",0x0A,0
	.align 4
	.db "mons_ctrl_clr",0x0A,0
	.align 4
	.db "mons_cond_clr",0x0A,0
	.align 4
	.db "meromero_clr",0x0A,0
	.align 4
	.db "SippaiEFFandMSG",0x0A,0
	.align 4
	.db "SippaiEFFandMSG",0x0A,0
	.align 4
	.db "umakukimaran2",0x0A,0
	.align 4
	.db "umakukimaran2",0x0A,0
	.align 4
	.db "umakukimaran3",0x0A,0
	.align 4
	.db "kougeki_init",0x0A,0
	.align 4
	.db "attack_message",0x0A,0
	.align 4
	.db "pp_dec",0x0A,0
	.align 4
	.db "critical_check",0x0A,0
	.align 4
	.db "power_set",0x0A,0
	.align 4
	.db "zokusei_check",0x0A,0
	.align 4
	.db "power_rnd",0x0A,0
	.align 4
	.db "attack_avoid",0x0A,0
	.align 4
	.db "lockon_check",0x0A,0
	.align 4
	.db "kieteiru_check",0x0A,0
	.align 4
	.db "kaminari_check",0x0A,0
	.align 4
	.db "hitritsu_henka",0x0A,0
	.align 4
	.db "avoid_check",0x0A,0
	.align 4
	.db "avoid_msg_chk",0x0A,0
	.align 4
	.db "gaman_store",0x0A,0
	.align 4
	.db "hp_sub",0x0A,0
	.align 4
	.db "critical_message",0x0A,0
	.align 4
	.db "aisyou",0x0A,0
	.align 4
	.db "life_check",0x0A,0
	.align 4
	.db "special_check",0x0A,0
	.align 4
	.db "sp_add_poison",0x0A,0
	.align 4
	.db "sp_sleep_only",0x0A,0
	.align 4
	.db "sp_suck",0x0A,0
	.align 4
	.db "sp_yumekui",0x0A,0
	.align 4
	.db "sp_add_yakedo",0x0A,0
	.align 4
	.db "sp_add_ice",0x0A,0
	.align 4
	.db "sp_add_mahi",0x0A,0
	.align 4
	.db "jibaku_chk",0x0A,0
	.align 4
	.db "oumu_chk",0x0A,0
	.align 4
	.db "sp_nekonikoban",0x0A,0
	.align 4
	.db "chk_texture",0x0A,0
	.align 4
	.db "sp_texture",0x0A,0
	.align 4
	.db "sp_kuroikiri",0x0A,0
	.align 4
	.db "gaman_chk",0x0A,0
	.align 4
	.db "sp_gaman",0x0A,0
	.align 4
	.db "sp_fukitobashi",0x0A,0
	.align 4
	.db "sp_renzoku",0x0A,0
	.align 4
	.db "sp_add_kizetsu",0x0A,0
	.align 4
	.db "sp_sentoufunou",0x0A,0
	.align 4
	.db "sp_tosshin",0x0A,0
	.align 4
	.db "sp_effect_gird",0x0A,0
	.align 4
	.db "sp_kiaidame",0x0A,0
	.align 4
	.db "sp_konran",0x0A,0
	.align 4
	.db "sp_add_konran",0x0A,0
	.align 4
	.db "sp_jikosaisei",0x0A,0
	.align 4
	.db "sp_henshin",0x0A,0
	.align 4
	.db "sp_kabe",0x0A,0
	.align 4
	.db "sp_poison_only",0x0A,0
	.align 4
	.db "sp_mahi_only",0x0A,0
	.align 4
	.db "sp_migawari",0x0A,0
	.align 4
	.db "sp_katamaru",0x0A,0
	.align 4
	.db "chk_monomane",0x0A,0
	.align 4
	.db "sp_monomane",0x0A,0
	.align 4
	.db "chk_yubifuri",0x0A,0
	.align 4
	.db "sp_yubifuri",0x0A,0
	.align 4
	.db "sp_yadorigi",0x0A,0
	.align 4
	.db "sp_haneru",0x0A,0
	.align 4
	.db "sp_kanashibari",0x0A,0
	.align 4
	.db "sp_tame",0x0A,0
	.align 4
	.db "tame_chk",0x0A,0
	.align 4
	.db "sp_shimetsukeru",0x0A,0
	.align 4
	.db "sp_abareru",0x0A,0
	.align 4
	.db "abareru_chk",0x0A,0
	.align 4
	.db "kotei_damage",0x0A,0
	.align 4
	.db "sp_counter",0x0A,0
	.align 4
	.db "sp_encore",0x0A,0
	.align 4
	.db "sp_itamiwake",0x0A,0
	.align 4
	.db "ibiki_chk",0x0A,0
	.align 4
	.db "chk_texture2",0x0A,0
	.align 4
	.db "sp_texture2",0x0A,0
	.align 4
	.db "sp_lock_on",0x0A,0
	.align 4
	.db "sp_dubbing",0x0A,0
	.align 4
	.db "sp_atsukunaru",0x0A,0
	.align 4
	.db "chk_negoto",0x0A,0
	.align 4
	.db "allow_negoto",0x0A,0
	.align 4
	.db "sp_negoto",0x0A,0
	.align 4
	.db "sp_mitizure",0x0A,0
	.align 4
	.db "sp_kezuru",0x0A,0
	.align 4
	.db "sp_mineuti",0x0A,0
	.align 4
	.db "sp_tiryou",0x0A,0
	.align 4
	.db "sp_item_kizetsu",0x0A,0
	.align 4
	.db "sp_triple",0x0A,0
	.align 4
	.db "effect_cnt_inc",0x0A,0
	.align 4
	.db "sp_dorobou",0x0A,0
	.align 4
	.db "sp_stalker",0x0A,0
	.align 4
	.db "sp_akumu",0x0A,0
	.align 4
	.db "sp_kaenguruma",0x0A,0
	.align 4
	.db "sp_kugi",0x0A,0
	.align 4
	.db "mamoru_sub",0x0A,0
	.align 4
	.db "sp_mamoru",0x0A,0
	.align 4
	.db "sp_makibishi",0x0A,0
	.align 4
	.db "sp_miyaburu",0x0A,0
	.align 4
	.db "sp_horobi",0x0A,0
	.align 4
	.db "sp_sunaarashi",0x0A,0
	.align 4
	.db "sp_koraeru",0x0A,0
	.align 4
	.db "sp_korogaru_chk",0x0A,0
	.align 4
	.db "sp_korogaru",0x0A,0
	.align 4
	.db "sp_ibaru",0x0A,0
	.align 4
	.db "sp_renzokugiri",0x0A,0
	.align 4
	.db "chk_meromero",0x0A,0
	.align 4
	.db "sp_meromero",0x0A,0
	.align 4
	.db "sp_ongaeshi",0x0A,0
	.align 4
	.db "sp_present",0x0A,0
	.align 4
	.db "get_damage",0x0A,0
	.align 4
	.db "sp_yatsuatari",0x0A,0
	.align 4
	.db "sp_shinpi",0x0A,0
	.align 4
	.db "sp_shinpi_chk",0x0A,0
	.align 4
	.db "sp_magnitude",0x0A,0
	.align 4
	.db "sp_batontouch",0x0A,0
	.align 4
	.db "sp_oiuchi",0x0A,0
	.align 4
	.db "sp_kousokuspin",0x0A,0
	.align 4
	.db "hizashi_main",0x0A,0
	.align 4
	.db "sp_asanohizashi",0x0A,0
	.align 4
	.db "sp_kougousei",0x0A,0
	.align 4
	.db "sp_tsukinohikari",0x0A,0
	.align 4
	.db "sp_rndpower",0x0A,0
	.align 4
	.db "sp_amagoi",0x0A,0
	.align 4
	.db "sp_nihonbare",0x0A,0
	.align 4
	.db "sp_condup_a1",0x0A,0
	.align 4
	.db "sp_condup_d1",0x0A,0
	.align 4
	.db "sp_condup_q1",0x0A,0
	.align 4
	.db "sp_condup_sa1",0x0A,0
	.align 4
	.db "sp_condup_sd1",0x0A,0
	.align 4
	.db "sp_condup_h1",0x0A,0
	.align 4
	.db "sp_condup_k1",0x0A,0
	.align 4
	.db "sp_condup_a2",0x0A,0
	.align 4
	.db "sp_condup_d2",0x0A,0
	.align 4
	.db "sp_condup_q2",0x0A,0
	.align 4
	.db "sp_condup_sa2",0x0A,0
	.align 4
	.db "sp_condup_sd2",0x0A,0
	.align 4
	.db "sp_condup_h2",0x0A,0
	.align 4
	.db "sp_condup_k2",0x0A,0
	.align 4
	.db "sp_conddown_a1",0x0A,0
	.align 4
	.db "sp_conddown_d1",0x0A,0
	.align 4
	.db "sp_conddown_q1",0x0A,0
	.align 4
	.db "sp_conddown_sa1",0x0A,0
	.align 4
	.db "sp_conddown_sd1",0x0A,0
	.align 4
	.db "sp_conddown_h1",0x0A,0
	.align 4
	.db "sp_conddown_k1",0x0A,0
	.align 4
	.db "sp_conddown_a2",0x0A,0
	.align 4
	.db "sp_conddown_d2",0x0A,0
	.align 4
	.db "sp_conddown_q2",0x0A,0
	.align 4
	.db "sp_conddown_sa2",0x0A,0
	.align 4
	.db "sp_conddown_sd2",0x0A,0
	.align 4
	.db "sp_conddown_h2",0x0A,0
	.align 4
	.db "sp_conddown_k2",0x0A,0
	.align 4
	.db "up_seikou_msg",0x0A,0
	.align 4
	.db "down_seikou_msg",0x0A,0
	.align 4
	.db "condup_ng_msg",0x0A,0
	.align 4
	.db "conddown_ng_msg",0x0A,0
	.align 4
	.db "tsuika_check",0x0A,0
	.align 4
	.db "turn_change",0x0A,0
	.align 4
	.db "sp_kizetsu",0x0A,0
	.align 4
	.db "sp_haradaiko",0x0A,0
	.align 4
	.db "sp_jikoanji",0x0A,0
	.align 4
	.db "sp_ikari",0x0A,0
	.align 4
	.db "sp_tatsumaki",0x0A,0
	.align 4
	.db "sp_jishin",0x0A,0
	.align 4
	.db "sp_mirrorcoat",0x0A,0
	.align 4
	.db "sp_mirai_chk",0x0A,0
	.align 4
	.db "sp_mirai",0x0A,0
	.align 4
	.db "sp_fumitsuke",0x0A,0
	.align 4
	.db "sp_solar_chk",0x0A,0
	.align 4
	.db "sp_kaminari",0x0A,0
	.align 4
	.db "sp_teleport",0x0A,0
	.align 4
	.db "sp_fukuro",0x0A,0
	.align 4
	.db "ikari_power_up",0x0A,0
	.align 4
	.db "simple_zokusei",0x0A,0
	.align 4
	.db "sp_condup_all",0x0A,0
	.align 4
	.db "sippai_message",0x0A,0
	.align 4
	.db "fukuro_ng",0x0A,0
	.align 4
	.db "power_check",0x0A,0
	.align 4
	.db "sp_add3",0x0A,0
	.align 4
	.db "renzoku_aisyou",0x0A,0
	.align 4
	.db "renzoku_init",0x0A,0
	.align 4
	.db "sp_marukunaru",0x0A,0
	.align 4
	.db "mv_damage",0x0A,0
	.align 4
	.db "mv_renzoku_damage",0x0A,0
	.align 4
	.db "kougeki_main",0x0A,0
	.align 4
	.db "kougeki",0x0A,0
	.align 4
	.db "hakainoidenshi",0x0A,0
	.align 4
	.db "set_monsdata",0x0A,0
	.align 4
	.db "set_monsdata_from_cmd",0x0A,0
	.align 4
	.db "lifedoku_chk",0x0A,0
	.align 4
	.db "makibishi_check",0x0A,0
	.align 4
	.db "check_atosaki",0x0A,0
	.align 4
	.db "check_waza_turn",0x0A,0
	.align 4
	.db "normal_judge",0x0A,0
	.align 4
	.db "decide_turn",0x0A,0
	.align 4
	.db "both_life_chk",0x0A,0
	.align 4
	.db "miraiyochi_check",0x0A,0
	.align 4
	.db "weather_check",0x0A,0
	.align 4
	.db "shime_check",0x0A,0
	.align 4
	.db "horobi_check",0x0A,0
	.align 4
	.db "item_hp_add",0x0A,0
	.align 4
	.db "item_pp_add",0x0A,0
	.align 4
	.db "melt_check",0x0A,0
	.align 4
	.db "shinpi_check",0x0A,0
	.align 4
	.db "kabe_check",0x0A,0
	.align 4
	.db "item_power_up",0x0A,0
	.align 4
	.db "soubi_kaifuku",0x0A,0
	.align 4
	.db "encore_check",0x0A,0
	.align 4
	.db "oiuchi_check",0x0A,0
	.align 4
	.db "check_many",0x0A,0
	.align 4
	.db "kaisyuu",0x0A,0
	.align 4
	.db "syutsudou",0x0A,0
	.align 4
	.db "kuridashi_init",0x0A,0
	.align 4
	.db "kuri_fukitobashi",0x0A,0
	.align 4
	.db "kuridashi",0x0A,0
	.align 4
	.db "torikae",0x0A,0
	.align 4
	.db "kachi",0x0A,0
	.align 4
	.db "call_kougeki",0x0A,0
	.align 4
	.db "stat_check",0x0A,0
	.align 4
	.db "waza_select",0x0A,0
	.align 4
	.db "fight_init",0x0A,0
	.align 4
	.db "FightSequence",0x0A,0
	.align 4
	.db "fight_main",0x0A,0
	.align 4
	.db "CreateFightThread",0x0A,0
	.align 4
	.db "StartFightThread",0x0A,0
	.align 4
	.db "StartFightThread",0x0A,0
	.align 4
	.db "WaitFightThread",0x0A,0
	.align 4
	.db "SendFightThread",0x0A,0
	.align 4

.incbin "baseromgs.n64",0x3fa624,0x437450-0x3fa624

CarrieTeam1:
	.db 50
	.db TYPHLOSION
	.db FLAME_WHEEL
	.db SWIFT
	.db LEER
	.db SMOKESCREEN

	.db 50
	.db KINGLER
	.db CRABHAMMER
	.db VICEGRIP
	.db GUILLOTINE
	.db HARDEN

	.db 50
	.db ELECTRODE
	.db THUNDER
	.db SWIFT
	.db ROLLOUT
	.db LIGHT_SCREEN

	.db 50
	.db SCIZOR
	.db METAL_CLAW
	.db SLASH
	.db AGILITY
	.db FOCUS_ENERGY

	.db 50
	.db PORYGON2
	.db TRI_ATTACK
	.db PSYBEAM
	.db CONVERSION2
	.db SHARPEN

	.db 50
	.db LEDIAN
	.db SWIFT
	.db ICE_PUNCH
	.db DIG
	.db SAFEGUARD

CarrieTeam2:
	.db 50
	.db FERALIGATR
	.db WATER_GUN
	.db SLASH
	.db BITE
	.db SCREECH

	.db 50
	.db CROBAT
	.db WING_ATTACK
	.db BITE
	.db CONFUSE_RAY
	.db SCREECH

	.db 50
	.db HERACROSS
	.db HORN_ATTACK
	.db REVERSAL
	.db COUNTER
	.db ENDURE

	.db 50
	.db TANGELA
	.db MEGA_DRAIN
	.db SLAM
	.db STUN_SPORE
	.db GROWTH

	.db 50
	.db NIDOQUEEN
	.db BODY_SLAM
	.db BITE
	.db DOUBLE_KICK
	.db TAIL_WHIP

	.db 50
	.db GLIGAR
	.db SLASH
	.db FAINT_ATTACK
	.db GUILLOTINE
	.db SAND_ATTACK

CarrieTeam3:
	.db 50
	.db MEGANIUM
	.db RAZOR_LEAF
	.db BODY_SLAM
	.db REFLECT
	.db POISONPOWDER

	.db 50
	.db STANTLER
	.db TAKE_DOWN
	.db DREAM_EATER
	.db HYPNOSIS
	.db SAND_ATTACK

	.db 50
	.db XATU
	.db FLY
	.db NIGHT_SHADE
	.db FUTURE_SIGHT
	.db CONFUSE_RAY

	.db 50
	.db SCYTHER
	.db WING_ATTACK
	.db SLASH
	.db PURSUIT
	.db DOUBLE_TEAM

	.db 50
	.db POLITOED
	.db HYDRO_PUMP
	.db DOUBLESLAP
	.db HYPNOSIS
	.db PERISH_SONG

	.db 50
	.db MAROWAK
	.db BONEMERANG
	.db THRASH
	.db FOCUS_ENERGY
	.db GROWL

MysteryGiftItems:
	.db BERRY
	.db PRZCUREBERRY
	.db MINT_BERRY
	.db ICE_BERRY
	.db BURNT_BERRY
	.db PSNCUREBERRY
	.db GUARD_SPEC
	.db X_DEFEND
	.db X_ATTACK
	.db BITTER_BERRY
	.db DIRE_HIT
	.db X_SPECIAL
	.db X_ACCURACY
	.db EON_MAIL
	.db MORPH_MAIL
	.db MUSIC_MAIL
	.db MIRACLEBERRY
	.db GOLD_BERRY
	.db REVIVE
	.db GREAT_BALL
	.db SUPER_REPEL
	.db MAX_REPEL
	.db ELIXER
	.db ETHER
	.db WATER_STONE
	.db FIRE_STONE
	.db LEAF_STONE
	.db THUNDERSTONE
	.db MAX_ETHER
	.db MAX_ELIXER
	.db MAX_REVIVE
	.db SCOPE_LENS
	.db HP_UP
	.db PP_UP
	.db RARE_CANDY
	.db BLUESKY_MAIL
	.db MIRAGE_MAIL

	.align 4

MysteryGiftDecorations:
	.db PIKACHU_DOLL
	.db BULBASAUR_DOLL
	.db CHARMANDER_DOLL
	.db SQUIRTLE_DOLL
	.db POLIWAG_DOLL
	.db DIGLETT_DOLL
	.db STARMIE_DOLL
	.db MAGIKARP_DOLL
	.db ODDISH_DOLL
	.db GENGAR_DOLL
	.db CLEFAIRY_POSTER
	.db JIGGLYPUFF_POSTER
	.db SNES
	.db SHELLDER_DOLL
	.db VOLTORB_DOLL
	.db WEEDLE_DOLL
	.db MAGNAPLANT
	.db TROPICPLANT
	.db FAMICOM
	.db N64
	.db SURF_PIKACHU_DOLL
	.db JIGGLYPUFF_DOLL
	.db PINK_BED
	.db POLKADOT_BED
	.db RED_CARPET
	.db BLUE_CARPET
	.db YELLOW_CARPET
	.db GREEN_CARPET
	.db JUMBOPLANT
	.db VIRTUAL_BOY
	.db MACHOP_DOLL
	.db PIKACHU_POSTER
	.db TENTACOOL_DOLL
	.db BIG_ONIX_DOLL
	.db PIKACHU_BED
	.db GRIMER_DOLL
	.db UNOWN_DOLL

	.align 4

.incbin "baseromgs.n64",0x43750c,0x437750-0x43750c

; XXX what is this table?
.incbin "baseromgs.n64",0x437750,0x446e30-0x437750

.incbin "baseromgs.n64",0x446e30,0x4494c0-0x446e30

; XXX what is this table?
.incbin "baseromgs.n64",0x4494c0,0x47b920-0x4494c0

; XXX what is this table?
.incbin "baseromgs.n64",0x47b920,0x47d310-0x47b920

; XXX what is this table?
.incbin "baseromgs.n64",0x47d310,0x48b920-0x47d310

; XXX what is this table?
.incbin "baseromgs.n64",0x48b920,0x49b780-0x48b920

.incbin "baseromgs.n64",0x49b780,0x16061c0-0x49b780

; nothing (just 0xFF)
.incbin "baseromgs.n64",0x16061c0,0x1638000-0x16061c0

; stadium models table
.incbin "baseromgs.n64",0x1638000,0x1708000-0x1638000

; rosters table
.incbin "baseromgs.n64",0x1708000,0x1718000-0x1708000

; XXX what is this table?
.incbin "baseromgs.n64",0x1718000,0x1898000-0x1718000

; XXX what is this table?
.incbin "baseromgs.n64",0x1898000,0x1d70000-0x1898000

; texts table
.incbin "baseromgs.n64",0x1d70000,0x1e40000-0x1d70000

; XXX what is this table?
.incbin "baseromgs.n64",0x1e40000,0x1e70000-0x1e40000

; backgrounds table
.incbin "baseromgs.n64",0x1e70000,0x2000000-0x1e70000

; XXX what is this table?
.incbin "baseromgs.n64",0x2000000,0x2230000-0x2000000

; academy graphics table
.incbin "baseromgs.n64",0x2230000,0x2268000-0x2230000

; faces table
.incbin "baseromgs.n64",0x2268000,0x23a5000-0x2268000

Base0x23A5000:
	.dh (EndComparisonEntries - ComparisonEntries) / (ComparisonEntrySize - ComparisonEntries) ; number of comparison table entries
	.dh (EndGameBoyHeaders - GameBoyHeaders) / (GameBoyHeaderSize - GameBoyHeaders) ; number of header entries

	; Crystal ROM banks
ComparisonEntries:
	.dw (CrystalBank02 - Base0x23A5000) << 8
	.dh CrystalBank02End - CrystalBank02
ComparisonEntrySize:
	.dw (CrystalBank05 - Base0x23A5000) << 8
	.dh CrystalBank05End - CrystalBank05
	.dw (CrystalBank06 - Base0x23A5000) << 8
	.dh CrystalBank06End - CrystalBank06
	.dw (CrystalBank07 - Base0x23A5000) << 8
	.dh CrystalBank07End - CrystalBank07
	.dw (CrystalBank09 - Base0x23A5000) << 8
	.dh CrystalBank09End - CrystalBank09
	.dw (CrystalBank0a - Base0x23A5000) << 8
	.dh CrystalBank0aEnd - CrystalBank0a
	.dw (CrystalBank0b - Base0x23A5000) << 8
	.dh CrystalBank0bEnd - CrystalBank0b
	.dw (CrystalBank0c - Base0x23A5000) << 8
	.dh CrystalBank0cEnd - CrystalBank0c
	.dw (CrystalBank0e - Base0x23A5000) << 8
	.dh CrystalBank0eEnd - CrystalBank0e
	.dw (CrystalBank11 - Base0x23A5000) << 8
	.dh CrystalBank11End - CrystalBank11
	.dw (CrystalBank12 - Base0x23A5000) << 8
	.dh CrystalBank12End - CrystalBank12
	.dw (CrystalBank13 - Base0x23A5000) << 8
	.dh CrystalBank13End - CrystalBank13
	.dw (CrystalBank14 - Base0x23A5000) << 8
	.dh CrystalBank14End - CrystalBank14
	.dw (CrystalBank16 - Base0x23A5000) << 8
	.dh CrystalBank16End - CrystalBank16
	.dw (CrystalBank17 - Base0x23A5000) << 8
	.dh CrystalBank17End - CrystalBank17
	.dw (CrystalBank18 - Base0x23A5000) << 8
	.dh CrystalBank18End - CrystalBank18
	.dw (CrystalBank19 - Base0x23A5000) << 8
	.dh CrystalBank19End - CrystalBank19
	.dw (CrystalBank1a - Base0x23A5000) << 8
	.dh CrystalBank1aEnd - CrystalBank1a
	.dw (CrystalBank1b - Base0x23A5000) << 8
	.dh CrystalBank1bEnd - CrystalBank1b
	.dw (CrystalBank1d - Base0x23A5000) << 8
	.dh CrystalBank1dEnd - CrystalBank1d
	.dw (CrystalBank1e - Base0x23A5000) << 8
	.dh CrystalBank1eEnd - CrystalBank1e
	.dw (CrystalBank1f - Base0x23A5000) << 8
	.dh CrystalBank1fEnd - CrystalBank1f
	.dw (CrystalBank20 - Base0x23A5000) << 8
	.dh CrystalBank20End - CrystalBank20
	.dw (CrystalBank22 - Base0x23A5000) << 8
	.dh CrystalBank22End - CrystalBank22
	.dw (CrystalBank26 - Base0x23A5000) << 8
	.dh CrystalBank26End - CrystalBank26
	.dw (CrystalBank27 - Base0x23A5000) << 8
	.dh CrystalBank27End - CrystalBank27
	.dw (CrystalBank28 - Base0x23A5000) << 8
	.dh CrystalBank28End - CrystalBank28
	.dw (CrystalBank29 - Base0x23A5000) << 8
	.dh CrystalBank29End - CrystalBank29
	.dw (CrystalBank2a - Base0x23A5000) << 8
	.dh CrystalBank2aEnd - CrystalBank2a
	.dw (CrystalBank2b - Base0x23A5000) << 8
	.dh CrystalBank2bEnd - CrystalBank2b
	.dw (CrystalBank2c - Base0x23A5000) << 8
	.dh CrystalBank2cEnd - CrystalBank2c
	.dw (CrystalBank2e - Base0x23A5000) << 8
	.dh CrystalBank2eEnd - CrystalBank2e
	.dw (CrystalBank2f - Base0x23A5000) << 8
	.dh CrystalBank2fEnd - CrystalBank2f
	.dw (CrystalBank30 - Base0x23A5000) << 8
	.dh CrystalBank30End - CrystalBank30
	.dw (CrystalBank31 - Base0x23A5000) << 8
	.dh CrystalBank31End - CrystalBank31
	.dw (CrystalBank32 - Base0x23A5000) << 8
	.dh CrystalBank32End - CrystalBank32
	.dw (CrystalBank33 - Base0x23A5000) << 8
	.dh CrystalBank33End - CrystalBank33
	.dw (CrystalBank34 - Base0x23A5000) << 8
	.dh CrystalBank34End - CrystalBank34
	.dw (CrystalBank35 - Base0x23A5000) << 8
	.dh CrystalBank35End - CrystalBank35
	.dw (CrystalBank36 - Base0x23A5000) << 8
	.dh CrystalBank36End - CrystalBank36
	.dw (CrystalBank37 - Base0x23A5000) << 8
	.dh CrystalBank37End - CrystalBank37
	.dw (CrystalBank38 - Base0x23A5000) << 8
	.dh CrystalBank38End - CrystalBank38
	.dw (CrystalBank39 - Base0x23A5000) << 8
	.dh CrystalBank39End - CrystalBank39
	.dw (CrystalBank3a - Base0x23A5000) << 8
	.dh CrystalBank3aEnd - CrystalBank3a
	.dw (CrystalBank3b - Base0x23A5000) << 8
	.dh CrystalBank3bEnd - CrystalBank3b
	.dw (CrystalBank3d - Base0x23A5000) << 8
	.dh CrystalBank3dEnd - CrystalBank3d
	.dw (CrystalBank3e - Base0x23A5000) << 8
	.dh CrystalBank3eEnd - CrystalBank3e
	.dw (CrystalBank3f - Base0x23A5000) << 8
	.dh CrystalBank3fEnd - CrystalBank3f
	.dw (CrystalBank41 - Base0x23A5000) << 8
	.dh CrystalBank41End - CrystalBank41
	.dw (CrystalBank42 - Base0x23A5000) << 8
	.dh CrystalBank42End - CrystalBank42
	.dw (CrystalBank43 - Base0x23A5000) << 8
	.dh CrystalBank43End - CrystalBank43
	.dw (CrystalBank44 - Base0x23A5000) << 8
	.dh CrystalBank44End - CrystalBank44
	.dw (CrystalBank46 - Base0x23A5000) << 8
	.dh CrystalBank46End - CrystalBank46
	.dw (CrystalBank47 - Base0x23A5000) << 8
	.dh CrystalBank47End - CrystalBank47
	.dw (CrystalBank48 - Base0x23A5000) << 8
	.dh CrystalBank48End - CrystalBank48
	.dw (CrystalBank49 - Base0x23A5000) << 8
	.dh CrystalBank49End - CrystalBank49
	.dw (CrystalBank4a - Base0x23A5000) << 8
	.dh CrystalBank4aEnd - CrystalBank4a
	.dw (CrystalBank4b - Base0x23A5000) << 8
	.dh CrystalBank4bEnd - CrystalBank4b
	.dw (CrystalBank4c - Base0x23A5000) << 8
	.dh CrystalBank4cEnd - CrystalBank4c
	.dw (CrystalBank4d - Base0x23A5000) << 8
	.dh CrystalBank4dEnd - CrystalBank4d
	.dw (CrystalBank4e - Base0x23A5000) << 8
	.dh CrystalBank4eEnd - CrystalBank4e
	.dw (CrystalBank4f - Base0x23A5000) << 8
	.dh CrystalBank4fEnd - CrystalBank4f
	.dw (CrystalBank50 - Base0x23A5000) << 8
	.dh CrystalBank50End - CrystalBank50
	.dw (CrystalBank51 - Base0x23A5000) << 8
	.dh CrystalBank51End - CrystalBank51
	.dw (CrystalBank52 - Base0x23A5000) << 8
	.dh CrystalBank52End - CrystalBank52
	.dw (CrystalBank53 - Base0x23A5000) << 8
	.dh CrystalBank53End - CrystalBank53
	.dw (CrystalBank54 - Base0x23A5000) << 8
	.dh CrystalBank54End - CrystalBank54
	.dw (CrystalBank55 - Base0x23A5000) << 8
	.dh CrystalBank55End - CrystalBank55
	.dw (CrystalBank56 - Base0x23A5000) << 8
	.dh CrystalBank56End - CrystalBank56
	.dw (CrystalBank57 - Base0x23A5000) << 8
	.dh CrystalBank57End - CrystalBank57
	.dw (CrystalBank58 - Base0x23A5000) << 8
	.dh CrystalBank58End - CrystalBank58
	.dw (CrystalBank59 - Base0x23A5000) << 8
	.dh CrystalBank59End - CrystalBank59
	.dw (CrystalBank5a - Base0x23A5000) << 8
	.dh CrystalBank5aEnd - CrystalBank5a
	.dw (CrystalBank5b - Base0x23A5000) << 8
	.dh CrystalBank5bEnd - CrystalBank5b
	.dw (CrystalBank5c - Base0x23A5000) << 8
	.dh CrystalBank5cEnd - CrystalBank5c
	.dw (CrystalBank5d - Base0x23A5000) << 8
	.dh CrystalBank5dEnd - CrystalBank5d
	.dw (CrystalBank5e - Base0x23A5000) << 8
	.dh CrystalBank5eEnd - CrystalBank5e
	.dw (CrystalBank5f - Base0x23A5000) << 8
	.dh CrystalBank5fEnd - CrystalBank5f
	.dw (CrystalBank60 - Base0x23A5000) << 8
	.dh CrystalBank60End - CrystalBank60
	.dw (CrystalBank61 - Base0x23A5000) << 8
	.dh CrystalBank61End - CrystalBank61
	.dw (CrystalBank62 - Base0x23A5000) << 8
	.dh CrystalBank62End - CrystalBank62
	.dw (CrystalBank63 - Base0x23A5000) << 8
	.dh CrystalBank63End - CrystalBank63
	.dw (CrystalBank64 - Base0x23A5000) << 8
	.dh CrystalBank64End - CrystalBank64
	.dw (CrystalBank65 - Base0x23A5000) << 8
	.dh CrystalBank65End - CrystalBank65
	.dw (CrystalBank67 - Base0x23A5000) << 8
	.dh CrystalBank67End - CrystalBank67
	.dw (CrystalBank68 - Base0x23A5000) << 8
	.dh CrystalBank68End - CrystalBank68
	.dw (CrystalBank69 - Base0x23A5000) << 8
	.dh CrystalBank69End - CrystalBank69
	.dw (CrystalBank6b - Base0x23A5000) << 8
	.dh CrystalBank6bEnd - CrystalBank6b
	.dw (CrystalBank6c - Base0x23A5000) << 8
	.dh CrystalBank6cEnd - CrystalBank6c
	.dw (CrystalBank6d - Base0x23A5000) << 8
	.dh CrystalBank6dEnd - CrystalBank6d
	.dw (CrystalBank6e - Base0x23A5000) << 8
	.dh CrystalBank6eEnd - CrystalBank6e
	.dw (CrystalBank6f - Base0x23A5000) << 8
	.dh CrystalBank6fEnd - CrystalBank6f
	.dw (CrystalBank70 - Base0x23A5000) << 8
	.dh CrystalBank70End - CrystalBank70
	.dw (CrystalBank71 - Base0x23A5000) << 8
	.dh CrystalBank71End - CrystalBank71
	.dw (CrystalBank72 - Base0x23A5000) << 8
	.dh CrystalBank72End - CrystalBank72
	.dw (CrystalBank73 - Base0x23A5000) << 8
	.dh CrystalBank73End - CrystalBank73
	.dw (CrystalBank74 - Base0x23A5000) << 8
	.dh CrystalBank74End - CrystalBank74
	.dw (CrystalBank77 - Base0x23A5000) << 8
	.dh CrystalBank77End - CrystalBank77
	.dw (CrystalBank78 - Base0x23A5000) << 8
	.dh CrystalBank78End - CrystalBank78
	.dw (CrystalBank7d - Base0x23A5000) << 8
	.dh CrystalBank7dEnd - CrystalBank7d
	.dw (CrystalBank7e - Base0x23A5000) << 8
	.dh CrystalBank7eEnd - CrystalBank7e

	; Gold ROM banks
	.dw (GoldBank04 - Base0x23A5000) << 8
	.dh GoldBank04End - GoldBank04
	.dw (GoldBank05 - Base0x23A5000) << 8
	.dh GoldBank05End - GoldBank05
	.dw (GoldBank06 - Base0x23A5000) << 8
	.dh GoldBank06End - GoldBank06
	.dw (GoldBank07 - Base0x23A5000) << 8
	.dh GoldBank07End - GoldBank07
	.dw (GoldBank08 - Base0x23A5000) << 8
	.dh GoldBank08End - GoldBank08
	.dw (GoldBank09 - Base0x23A5000) << 8
	.dh GoldBank09End - GoldBank09
	.dw (GoldBank0a - Base0x23A5000) << 8
	.dh GoldBank0aEnd - GoldBank0a
	.dw (GoldBank0b - Base0x23A5000) << 8
	.dh GoldBank0bEnd - GoldBank0b
	.dw (GoldBank0e - Base0x23A5000) << 8
	.dh GoldBank0eEnd - GoldBank0e
	.dw ((CrystalBank11 - Base0x23A5000) << 8) + 1
	.dh CrystalBank11End - CrystalBank11
	.dw (GoldBank14 - Base0x23A5000) << 8
	.dh GoldBank14End - GoldBank14
	.dw (GoldBank15 - Base0x23A5000) << 8
	.dh GoldBank15End - GoldBank15
	.dw (GoldBank16 - Base0x23A5000) << 8
	.dh GoldBank16End - GoldBank16
	.dw (GoldBank17 - Base0x23A5000) << 8
	.dh GoldBank17End - GoldBank17
	.dw (GoldBank18 - Base0x23A5000) << 8
	.dh GoldBank18End - GoldBank18
	.dw (GoldBank19 - Base0x23A5000) << 8
	.dh GoldBank19End - GoldBank19
	.dw (GoldBank1a - Base0x23A5000) << 8
	.dh GoldBank1aEnd - GoldBank1a
	.dw (GoldBank1b - Base0x23A5000) << 8
	.dh GoldBank1bEnd - GoldBank1b
	.dw (GoldBank1c - Base0x23A5000) << 8
	.dh GoldBank1cEnd - GoldBank1c
	.dw (GoldBank1d - Base0x23A5000) << 8
	.dh GoldBank1dEnd - GoldBank1d
	.dw (GoldBank1e - Base0x23A5000) << 8
	.dh GoldBank1eEnd - GoldBank1e
	.dw (GoldBank1f - Base0x23A5000) << 8
	.dh GoldBank1fEnd - GoldBank1f
	.dw (GoldBank20 - Base0x23A5000) << 8
	.dh GoldBank20End - GoldBank20
	.dw (GoldBank21 - Base0x23A5000) << 8
	.dh GoldBank21End - GoldBank21
	.dw (GoldBank23 - Base0x23A5000) << 8
	.dh GoldBank23End - GoldBank23
	.dw (GoldBank24 - Base0x23A5000) << 8
	.dh GoldBank24End - GoldBank24
	.dw (GoldBank25 - Base0x23A5000) << 8
	.dh GoldBank25End - GoldBank25
	.dw (GoldBank26 - Base0x23A5000) << 8
	.dh GoldBank26End - GoldBank26
	.dw ((CrystalBank2a - Base0x23A5000) << 8) + 1
	.dh CrystalBank2aEnd - CrystalBank2a
	.dw ((CrystalBank2b - Base0x23A5000) << 8) + 1
	.dh CrystalBank2bEnd - CrystalBank2b
	.dw (GoldBank2e - Base0x23A5000) << 8
	.dh GoldBank2eEnd - GoldBank2e
	.dw ((CrystalBank31 - Base0x23A5000) << 8) + 1
	.dh CrystalBank31End - CrystalBank31
	.dw (GoldBank32 - Base0x23A5000) << 8
	.dh GoldBank32End - GoldBank32
	.dw (GoldBank33 - Base0x23A5000) << 8
	.dh GoldBank33End - GoldBank33
	.dw (GoldBank36 - Base0x23A5000) << 8
	.dh GoldBank36End - GoldBank36
	.dw (GoldBank3e - Base0x23A5000) << 8
	.dh GoldBank3eEnd - GoldBank3e
	.dw (GoldBank3f - Base0x23A5000) << 8
	.dh GoldBank3fEnd - GoldBank3f
	.dw (GoldBank40 - Base0x23A5000) << 8
	.dh GoldBank40End - GoldBank40
	.dw (GoldBank41 - Base0x23A5000) << 8
	.dh GoldBank41End - GoldBank41
	.dw (GoldBank42 - Base0x23A5000) << 8
	.dh GoldBank42End - GoldBank42
	.dw (GoldBank43 - Base0x23A5000) << 8
	.dh GoldBank43End - GoldBank43
	.dw (GoldBank44 - Base0x23A5000) << 8
	.dh GoldBank44End - GoldBank44
	.dw (GoldBank45 - Base0x23A5000) << 8
	.dh GoldBank45End - GoldBank45
	.dw (GoldBank46 - Base0x23A5000) << 8
	.dh GoldBank46End - GoldBank46
	.dw (GoldBank47 - Base0x23A5000) << 8
	.dh GoldBank47End - GoldBank47
	.dw (GoldBank48 - Base0x23A5000) << 8
	.dh GoldBank48End - GoldBank48
	.dw (GoldBank49 - Base0x23A5000) << 8
	.dh GoldBank49End - GoldBank49
	.dw (GoldBank4a - Base0x23A5000) << 8
	.dh GoldBank4aEnd - GoldBank4a
	.dw (GoldBank4c - Base0x23A5000) << 8
	.dh GoldBank4cEnd - GoldBank4c
	.dw (GoldBank4d - Base0x23A5000) << 8
	.dh GoldBank4dEnd - GoldBank4d
	.dw (GoldBank4e - Base0x23A5000) << 8
	.dh GoldBank4eEnd - GoldBank4e
	.dw (GoldBank4f - Base0x23A5000) << 8
	.dh GoldBank4fEnd - GoldBank4f
	.dw (GoldBank50 - Base0x23A5000) << 8
	.dh GoldBank50End - GoldBank50
	.dw (GoldBank51 - Base0x23A5000) << 8
	.dh GoldBank51End - GoldBank51
	.dw (GoldBank52 - Base0x23A5000) << 8
	.dh GoldBank52End - GoldBank52
	.dw (GoldBank53 - Base0x23A5000) << 8
	.dh GoldBank53End - GoldBank53
	.dw (GoldBank54 - Base0x23A5000) << 8
	.dh GoldBank54End - GoldBank54
	.dw (GoldBank55 - Base0x23A5000) << 8
	.dh GoldBank55End - GoldBank55
	.dw (GoldBank59 - Base0x23A5000) << 8
	.dh GoldBank59End - GoldBank59
	.dw (GoldBank5a - Base0x23A5000) << 8
	.dh GoldBank5aEnd - GoldBank5a
	.dw (GoldBank5c - Base0x23A5000) << 8
	.dh GoldBank5cEnd - GoldBank5c
	.dw (GoldBank5d - Base0x23A5000) << 8
	.dh GoldBank5dEnd - GoldBank5d
	.dw (GoldBank5f - Base0x23A5000) << 8
	.dh GoldBank5fEnd - GoldBank5f
	.dw (GoldBank60 - Base0x23A5000) << 8
	.dh GoldBank60End - GoldBank60
	.dw (GoldBank61 - Base0x23A5000) << 8
	.dh GoldBank61End - GoldBank61
	.dw (GoldBank62 - Base0x23A5000) << 8
	.dh GoldBank62End - GoldBank62
	.dw (GoldBank64 - Base0x23A5000) << 8
	.dh GoldBank64End - GoldBank64
	.dw (GoldBank65 - Base0x23A5000) << 8
	.dh GoldBank65End - GoldBank65
	.dw (GoldBank66 - Base0x23A5000) << 8
	.dh GoldBank66End - GoldBank66
	.dw (GoldBank68 - Base0x23A5000) << 8
	.dh GoldBank68End - GoldBank68
	.dw (GoldBank69 - Base0x23A5000) << 8
	.dh GoldBank69End - GoldBank69
	.dw (GoldBank6a - Base0x23A5000) << 8
	.dh GoldBank6aEnd - GoldBank6a
	.dw (GoldBank6b - Base0x23A5000) << 8
	.dh GoldBank6bEnd - GoldBank6b
	.dw (GoldBank6d - Base0x23A5000) << 8
	.dh GoldBank6dEnd - GoldBank6d
	.dw (GoldBank6e - Base0x23A5000) << 8
	.dh GoldBank6eEnd - GoldBank6e
	.dw (GoldBank70 - Base0x23A5000) << 8
	.dh GoldBank70End - GoldBank70

	; Silver ROM banks
	.dw ((GoldBank04 - Base0x23A5000) << 8) + 1
	.dh GoldBank04End - GoldBank04
	.dw ((GoldBank05 - Base0x23A5000) << 8) + 1
	.dh GoldBank05End - GoldBank05
	.dw ((GoldBank09 - Base0x23A5000) << 8) + 1
	.dh GoldBank09End - GoldBank09
	.dw ((GoldBank0a - Base0x23A5000) << 8) + 1
	.dh GoldBank0aEnd - GoldBank0a
	.dw ((GoldBank0b - Base0x23A5000) << 8) + 1
	.dh GoldBank0bEnd - GoldBank0b
	.dw ((CrystalBank11 - Base0x23A5000) << 8) + 2
	.dh CrystalBank11End - CrystalBank11
	.dw ((GoldBank14 - Base0x23A5000) << 8) + 1
	.dh GoldBank14End - GoldBank14
	.dw (SilverBank15 - Base0x23A5000) << 8
	.dh SilverBank15End - SilverBank15
	.dw (SilverBank16 - Base0x23A5000) << 8
	.dh SilverBank16End - SilverBank16
	.dw (SilverBank17 - Base0x23A5000) << 8
	.dh SilverBank17End - SilverBank17
	.dw (SilverBank18 - Base0x23A5000) << 8
	.dh SilverBank18End - SilverBank18
	.dw (SilverBank19 - Base0x23A5000) << 8
	.dh SilverBank19End - SilverBank19
	.dw (SilverBank1a - Base0x23A5000) << 8
	.dh SilverBank1aEnd - SilverBank1a
	.dw (SilverBank1b - Base0x23A5000) << 8
	.dh SilverBank1bEnd - SilverBank1b
	.dw (SilverBank1c - Base0x23A5000) << 8
	.dh SilverBank1cEnd - SilverBank1c
	.dw (SilverBank1d - Base0x23A5000) << 8
	.dh SilverBank1dEnd - SilverBank1d
	.dw (SilverBank1e - Base0x23A5000) << 8
	.dh SilverBank1eEnd - SilverBank1e
	.dw (SilverBank1f - Base0x23A5000) << 8
	.dh SilverBank1fEnd - SilverBank1f
	.dw (SilverBank20 - Base0x23A5000) << 8
	.dh SilverBank20End - SilverBank20
	.dw ((GoldBank21 - Base0x23A5000) << 8) + 1
	.dh GoldBank21End - GoldBank21
	.dw (SilverBank23 - Base0x23A5000) << 8
	.dh SilverBank23End - SilverBank23
	.dw ((GoldBank24 - Base0x23A5000) << 8) + 1
	.dh GoldBank24End - GoldBank24
	.dw ((GoldBank25 - Base0x23A5000) << 8) + 1
	.dh GoldBank25End - GoldBank25
	.dw ((GoldBank26 - Base0x23A5000) << 8) + 1
	.dh GoldBank26End - GoldBank26
	.dw (SilverBank2e - Base0x23A5000) << 8
	.dh SilverBank2eEnd - SilverBank2e
	.dw ((CrystalBank31 - Base0x23A5000) << 8) + 2
	.dh CrystalBank31End - CrystalBank31
	.dw ((GoldBank33 - Base0x23A5000) << 8) + 1
	.dh GoldBank33End - GoldBank33
	.dw ((GoldBank3f - Base0x23A5000) << 8) + 1
	.dh GoldBank3fEnd - GoldBank3f
	.dw ((GoldBank40 - Base0x23A5000) << 8) + 1
	.dh GoldBank40End - GoldBank40
	.dw (SilverBank68 - Base0x23A5000) << 8
	.dh SilverBank68End - SilverBank68
	.dw (SilverBank69 - Base0x23A5000) << 8
	.dh SilverBank69End - SilverBank69
	.dw (SilverBank6a - Base0x23A5000) << 8
	.dh SilverBank6aEnd - SilverBank6a
	.dw (SilverBank6b - Base0x23A5000) << 8
	.dh SilverBank6bEnd - SilverBank6b
	.dw ((GoldBank70 - Base0x23A5000) << 8) + 1
	.dh GoldBank70End - GoldBank70

	; Yellow ROM banks
	.dw (YellowBank07 - Base0x23A5000) << 8
	.dh YellowBank07End - YellowBank07
	.dw (YellowBank17 - Base0x23A5000) << 8
	.dh YellowBank17End - YellowBank17
	.dw (YellowBank18 - Base0x23A5000) << 8
	.dh YellowBank18End - YellowBank18
	.dw (YellowBank30 - Base0x23A5000) << 8
	.dh YellowBank30End - YellowBank30
	.dw (YellowBank32 - Base0x23A5000) << 8
	.dh YellowBank32End - YellowBank32
	.dw (YellowBank34 - Base0x23A5000) << 8
	.dh YellowBank34End - YellowBank34

	; Red/Blue ROM banks
	.dw (RedBank17 - Base0x23A5000) << 8
	.dh RedBank17End - RedBank17
	.dw (RedBank18 - Base0x23A5000) << 8
	.dh RedBank18End - RedBank18
	.dw (RedBank24 - Base0x23A5000) << 8
	.dh RedBank24End - RedBank24
	.dw (RedBank25 - Base0x23A5000) << 8
	.dh RedBank25End - RedBank25
	.dw (RedBank2a - Base0x23A5000) << 8
	.dh RedBank2aEnd - RedBank2a
	.dw (RedBank2c - Base0x23A5000) << 8
	.dh RedBank2cEnd - RedBank2c

	; Blue ROM banks
	.dw (BlueBank01 - Base0x23A5000) << 8
	.dh BlueBank01End - BlueBank01
	.dw (BlueBank08 - Base0x23A5000) << 8
	.dh BlueBank08End - BlueBank08

EndComparisonEntries:

	.align 4

GameBoyHeaders:
; game id
; ROM title
; region
; revision
; checksum
; four bytes from 0x9C001 in the ROM
; pointer to the checksum table
; flags?

JAPAN     EQU 0
NON_JAPAN EQU 1

POKEMON_RED     EQU 1
POKEMON_GREEN   EQU 2
POKEMON_BLUE    EQU 3
POKEMON_YELLOW  EQU 4
POKEMON_GOLD    EQU 5
POKEMON_SILVER  EQU 6
POKEMON_CRYSTAL EQU 7

COLOR_GEN EQU 0x0010

; no-intro: Pocket Monsters - Crystal Version (Japan)
	.db POKEMON_CRYSTAL
	.db "PM_CRYSTAL",0,"BXTJ"
	.db JAPAN
	.db 0
	.dh 0x9a40
	.dw 0x0d400000
	.dw CrystalJapan0Checksums - Base0x23A5000
	.dh 0x000b
	.align 4
GameBoyHeaderSize:

; no-intro: Pocket Monsters Gin (Japan) (Rev A)
	.db POKEMON_SILVER
	.db "POKEMON_SLVAAXJ"
	.db JAPAN
	.db 1
	.dh 0x1d34
	.dw 0x00520840
	.dw SilverJapan1Checksums - Base0x23A5000
	.dh 0x000b
	.align 4

; no-intro: Pocket Monsters Gin (Japan)
	.db POKEMON_SILVER
	.db "POKEMON_SLVAAXJ"
	.db JAPAN
	.db 0
	.dh 0x7691
	.dw 0x00520840
	.dw SilverJapan0Checksums - Base0x23A5000
	.dh 0x000b
	.align 4

; no-intro: Pocket Monsters Kin (Japan)
	.db POKEMON_GOLD
	.db "POKEMON_GLDAAUJ"
	.db JAPAN
	.db 0
	.dh 0x8a70
	.dw 0x00520840
	.dw GoldJapan0Checksums - Base0x23A5000
	.dh 0x000b
	.align 4

; no-intro: Pocket Monsters Kin (Japan) (Rev A)
	.db POKEMON_GOLD
	.db "POKEMON_GLDAAUJ"
	.db JAPAN
	.db 1
	.dh 0x8460
	.dw 0x00520840
	.dw GoldJapan1Checksums - Base0x23A5000
	.dh 0x000b
	.align 4

; no-intro: Pocket Monsters - Pikachu (Japan) (Rev D)
	.db POKEMON_YELLOW
	.db "POKEMON YELLOW",0
	.db JAPAN
	.db 3
	.dh 0xd984
	.dw 0x00000000
	.dw YellowJapan3Checksums - Base0x23A5000
	.dh 0x0006 | COLOR_GEN
	.align 4

; no-intro: Pocket Monsters - Pikachu (Japan) (Rev C)
	.db POKEMON_YELLOW
	.db "POKEMON YELLOW",0
	.db JAPAN
	.db 2
	.dh 0xedd9
	.dw 0x52fd2599
	.dw YellowJapan2Checksums - Base0x23A5000
	.dh 0x0006 | COLOR_GEN
	.align 4

; no-intro: Pocket Monsters - Pikachu (Japan) (Rev B)
	.db POKEMON_YELLOW
	.db "POKEMON YELLOW",0
	.db JAPAN
	.db 1
	.dh 0x8858
	.dw 0x5afd2d99
	.dw YellowJapan1Checksums - Base0x23A5000
	.dh 0x0006 | COLOR_GEN
	.align 4

; no-intro: Pocket Monsters - Pikachu (Japan) (Rev 0A)
	.db POKEMON_YELLOW
	.db "POKEMON YELLOW",0
	.db JAPAN
	.db 0
	.dh 0x9c29
	.dw 0xcef7dddb
	.dw YellowJapan0Checksums - Base0x23A5000
	.dh 0x0006 | COLOR_GEN
	.align 4

; no-intro: Pocket Monsters - Ao (Japan)
	.db POKEMON_BLUE
	.db "POKEMON BLUE",0,0,0
	.db JAPAN
	.db 0
	.dh 0xdc36
	.dw 0x00000000
	.dw BlueJapan0Checksums - Base0x23A5000
	.dh 0x0005 | COLOR_GEN
	.align 4

; no-intro: Pocket Monsters - Aka (Japan) (Rev A)
	.db POKEMON_RED
	.db "POKEMON RED",0,0,0,0
	.db JAPAN
	.db 1
	.dh 0xb866
	.dw 0x00000000
	.dw RedJapan1Checksums - Base0x23A5000
	.dh 0x0005 | COLOR_GEN
	.align 4

; no-intro: Pocket Monsters - Midori (Japan) (Rev A)
	.db POKEMON_GREEN
	.db "POKEMON GREEN",0,0
	.db JAPAN
	.db 1
	.dh 0xf547
	.dw 0x00000000
	.dw GreenJapan1Checksums - Base0x23A5000
	.dh 0x0006 | COLOR_GEN
	.align 4

; no-intro: Pocket Monsters - Midori (Japan)
	.db POKEMON_GREEN
	.db "POKEMON GREEN",0,0
	.db JAPAN
	.db 0
	.dh 0xddd5
	.dw 0x00000000
	.dw GreenJapan0Checksums - Base0x23A5000
	.dh 0x0006 | COLOR_GEN
	.align 4

; no-intro: Pocket Monsters - Aka (Japan)
	.db POKEMON_RED
	.db "POKEMON RED",0,0,0,0
	.db JAPAN
	.db 0
	.dh 0xa2c1
	.dw 0x00000000
	.dw RedJapan0Checksums - Base0x23A5000
	.dh 0x0005 | COLOR_GEN
	.align 4

; not in no-intro
	.db POKEMON_CRYSTAL
	.db "PM_CRYSTAL",0,"base"
	.db NON_JAPAN
	.db 0
	.dh 0x5e1c
	.dw 0x000c0000
	.dw CrystalUSAChecksums - Base0x23A5000
	.dh 0x000b
	.align 4

; no-intro: Pokemon - Gold Version (USA, Europe)
	.db POKEMON_GOLD
	.db "POKEMON_GLDAAUE"
	.db NON_JAPAN
	.db 0
	.dh 0x682d
	.dw 0x00000000
	.dw GoldUSAChecksums - Base0x23A5000
	.dh 0x000b
	.align 4

; no-intro: Pokemon - Silver Version (USA, Europe)
	.db POKEMON_SILVER
	.db "POKEMON_SLVAAXE"
	.db NON_JAPAN
	.db 0
	.dh 0x0dae
	.dw 0x00000000
	.dw SilverUSAChecksums - Base0x23A5000
	.dh 0x000b
	.align 4

; no-intro: Pokemon - Yellow Version - Special Pikachu Edition (USA, Europe)
	.db POKEMON_YELLOW
	.db "POKEMON YELLOW",0
	.db NON_JAPAN
	.db 0
	.dh 0x047c
	.dw 0x8f918492
	.dw YellowUSAChecksums - Base0x23A5000
	.dh 0x0008 | COLOR_GEN
	.align 4

; no-intro: Pokemon - Red Version (USA, Europe)
	.db POKEMON_RED
	.db "POKEMON RED",0,0,0,0
	.db NON_JAPAN
	.db 0
	.dh 0x91e6
	.dw 0x807faba8
	.dw RedUSAChecksums - Base0x23A5000
	.dh 0x0007 | COLOR_GEN
	.align 4

; no-intro: Pokemon - Blue Version (USA, Europe)
	.db POKEMON_BLUE
	.db "POKEMON BLUE",0,0,0
	.db NON_JAPAN
	.db 0
	.dh 0x9d0a
	.dw 0x807faba8
	.dw BlueUSAChecksums - Base0x23A5000
	.dh 0x0007 | COLOR_GEN
	.align 4

; no-intro: Pokemon - Version Jaune - Edition Speciale Pikachu (France)
	.db POKEMON_YELLOW
	.db "POKEMON YELAPSF"
	.db NON_JAPAN
	.db 0
	.dh 0xb7c1
	.dw 0x8f83869c
	.dw YellowFranceChecksums - Base0x23A5000
	.dh 0x0008 | COLOR_GEN
	.align 4

; no-intro: Pokemon - Version Rouge (France)
	.db POKEMON_RED
	.db "POKEMON RED",0,0,0,0
	.db NON_JAPAN
	.db 0
	.dh 0x7afc
	.dw 0x94ad7fda
	.dw RedFranceChecksums - Base0x23A5000
	.dh 0x0007 | COLOR_GEN
	.align 4

; no-intro: Pokemon - Version Bleue (France)
	.db POKEMON_BLUE
	.db "POKEMON BLUE",0,0,0
	.db NON_JAPAN
	.db 0
	.dh 0x56a4
	.dw 0x94ad7fda
	.dw BlueFranceChecksums - Base0x23A5000
	.dh 0x0007 | COLOR_GEN
	.align 4

; no-intro: Pokemon - Gelbe Edition - Special Pikachu Edition (Germany)
	.db POKEMON_YELLOW
	.db "POKEMON YELAPSD"
	.db NON_JAPAN
	.db 0
	.dh 0x66fb
	.dw 0x8f91c092
	.dw YellowGermanyChecksums - Base0x23A5000
	.dh 0x0008 | COLOR_GEN
	.align 4

; no-intro: Pokemon - Rote Edition (Germany)
	.db POKEMON_RED
	.db "POKEMON RED",0,0,0,0
	.db NON_JAPAN
	.db 0
	.dh 0x5cdc
	.dw 0x88a2a77f
	.dw RedGermanyChecksums - Base0x23A5000
	.dh 0x0007 | COLOR_GEN
	.align 4

; no-intro: Pokemon - Blaue Edition (Germany)
	.db POKEMON_BLUE
	.db "POKEMON BLUE",0,0,0
	.db NON_JAPAN
	.db 0
	.dh 0x2ebc
	.dw 0x88a2a77f
	.dw BlueGermanyChecksums - Base0x23A5000
	.dh 0x0007 | COLOR_GEN
	.align 4

; no-intro: Pokemon - Versione Gialla - Speciale Edizione Pikachu (Italy)
	.db POKEMON_YELLOW
	.db "POKEMON YELAPSI"
	.db NON_JAPAN
	.db 0
	.dh 0x4e8f
	.dw 0x8f918492
	.dw YellowItalyChecksums - Base0x23A5000
	.dh 0x0008 | COLOR_GEN
	.align 4

; no-intro: Pokemon - Versione Rossa (Italy)
	.db POKEMON_RED
	.db "POKEMON RED",0,0,0,0
	.db NON_JAPAN
	.db 0
	.dh 0x89d2
	.dw 0x95aea6ab
	.dw RedItalyChecksums - Base0x23A5000
	.dh 0x0007 | COLOR_GEN
	.align 4

; no-intro: Pokemon - Versione Blu (Italy)
	.db POKEMON_BLUE
	.db "POKEMON BLUE",0,0,0
	.db NON_JAPAN
	.db 0
	.dh 0x5e9c
	.dw 0x95aea6ab
	.dw BlueItalyChecksums - Base0x23A5000
	.dh 0x0007 | COLOR_GEN
	.align 4

; no-intro: Pokemon - Edicion Amarilla - Edicion Especial Pikachu (Spain)
	.db POKEMON_YELLOW
	.db "POKEMON YELAPSS"
	.db NON_JAPAN
	.db 0
	.dh 0x5637
	.dw 0x8f918492
	.dw YellowSpainChecksums - Base0x23A5000
	.dh 0x0008 | COLOR_GEN
	.align 4

; no-intro: Pokemon - Edicion Roja (Spain)
	.db POKEMON_RED
	.db "POKEMON RED",0,0,0,0
	.db NON_JAPAN
	.db 0
	.dh 0x384a
	.dw 0xe593a47f
	.dw RedSpainChecksums - Base0x23A5000
	.dh 0x0007 | COLOR_GEN
	.align 4

; no-intro: Pokemon - Edicion Azul (Spain)
	.db POKEMON_BLUE
	.db "POKEMON BLUE",0,0,0
	.db NON_JAPAN
	.db 0
	.dh 0x14d7
	.dw 0xe593a47f
	.dw BlueSpainChecksums - Base0x23A5000
	.dh 0x0007 | COLOR_GEN
	.align 4

EndGameBoyHeaders:

CrystalJapan0Checksums: ; Crystal Japan rev 0
.incbin "gameboy/00.bin"
SilverJapan1Checksums:  ; Silver Japan rev 1
.incbin "gameboy/01.bin"
SilverJapan0Checksums:  ; Silver Japan rev 0
.incbin "gameboy/02.bin"
GoldJapan0Checksums:    ; Gold Japan rev 0
.incbin "gameboy/03.bin"
GoldJapan1Checksums:    ; Gold Japan rev 1
.incbin "gameboy/04.bin"
YellowJapan3Checksums:  ; Yellow Japan rev 3
.incbin "gameboy/05.bin"
YellowJapan2Checksums:  ; Yellow Japan rev 2
.incbin "gameboy/06.bin"
YellowJapan1Checksums:  ; Yellow Japan rev 1
.incbin "gameboy/07.bin"
YellowJapan0Checksums:  ; Yellow Japan rev 0
.incbin "gameboy/08.bin"
BlueJapan0Checksums:    ; Blue Japan rev 0
.incbin "gameboy/09.bin"
RedJapan1Checksums:     ; Red Japan rev 1
.incbin "gameboy/0a.bin"
GreenJapan1Checksums:   ; Green Japan rev 1
.incbin "gameboy/0b.bin"
GreenJapan0Checksums:   ; Green Japan rev 0
.incbin "gameboy/0c.bin"
RedJapan0Checksums:     ; Red Japan rev 0
.incbin "gameboy/0d.bin"
CrystalUSAChecksums:    ; Crystal USA
.incbin "gameboy/0e.bin"
GoldUSAChecksums:       ; Gold USA
.incbin "gameboy/0f.bin"
SilverUSAChecksums:     ; Silver USA
.incbin "gameboy/10.bin"
YellowUSAChecksums:     ; Yellow USA
.incbin "gameboy/11.bin"
RedUSAChecksums:        ; Red USA
.incbin "gameboy/12.bin"
BlueUSAChecksums:       ; Blue USA
.incbin "gameboy/13.bin"
YellowFranceChecksums:  ; Yellow France
.incbin "gameboy/14.bin"
RedFranceChecksums:     ; Red France
.incbin "gameboy/15.bin"
BlueFranceChecksums:    ; Blue France
.incbin "gameboy/16.bin"
YellowGermanyChecksums: ; Yellow Germany
.incbin "gameboy/17.bin"
RedGermanyChecksums:    ; Red Germany
.incbin "gameboy/18.bin"
BlueGermanyChecksums:   ; Blue Germany
.incbin "gameboy/19.bin"
YellowItalyChecksums:   ; Yellow Italy
.incbin "gameboy/1a.bin"
RedItalyChecksums:      ; Red Italy
.incbin "gameboy/1b.bin"
BlueItalyChecksums:     ; Blue Italy
.incbin "gameboy/1c.bin"
YellowSpainChecksums:   ; Yellow Spain
.incbin "gameboy/1d.bin"
RedSpainChecksums:      ; Red Spain
.incbin "gameboy/1e.bin"
BlueSpainChecksums:     ; Blue Spain
.incbin "gameboy/1f.bin"

; Yay0‐compressed Game Boy ROM banks.
; Banks that are reused by multiple games may be followed by patches.

BlueBank01:
.incbin "baseromgs.n64",0x23add4c,0x3212
BlueBank01End:
	.align 4

CrystalBank02:
.incbin "baseromgs.n64",0x23b0f60,0x2705
CrystalBank02End:
	.align 4

GoldBank04:
.incbin "baseromgs.n64",0x23B3668,0x2B72
GoldBank04End:
.incbin "baseromgs.n64",0x23b61da,0x82
	.align 4

CrystalBank05:
.incbin "baseromgs.n64",0x23B625C,0x2939
CrystalBank05End:
	.align 4

GoldBank05:
.incbin "baseromgs.n64",0x23B8B98,0x2C0E
GoldBank05End:
.incbin "baseromgs.n64",0x23bb7a6,0x46
	.align 4

CrystalBank06:
.incbin "baseromgs.n64",0x23BB7EC,0x28C8
CrystalBank06End:
	.align 4

GoldBank06:
.incbin "baseromgs.n64",0x23BE0B4,0x1F2F
GoldBank06End:
	.align 4

CrystalBank07:
.incbin "baseromgs.n64",0x23BFFE4,0x2F6D
CrystalBank07End:
	.align 4

GoldBank07:
.incbin "baseromgs.n64",0x23C2F54,0x2CAB
GoldBank07End:
	.align 4

YellowBank07:
.incbin "baseromgs.n64",0x23C5C00,0x1DB8
YellowBank07End:
	.align 4

GoldBank08:
.incbin "baseromgs.n64",0x23C79B8,0x2AF3
GoldBank08End:
	.align 4

BlueBank08:
.incbin "baseromgs.n64",0x23CA4AC,0x2E63
BlueBank08End:
	.align 4

CrystalBank09:
.incbin "baseromgs.n64",0x23CD310,0x26C0
CrystalBank09End:
	.align 4

GoldBank09:
.incbin "baseromgs.n64",0x23CF9D0,0x2803
GoldBank09End:
.incbin "baseromgs.n64",0x23d21d3,0x11
	.align 4

CrystalBank0a:
.incbin "baseromgs.n64",0x23D21E4,0x2BA2
CrystalBank0aEnd:
	.align 4

GoldBank0a:
.incbin "baseromgs.n64",0x23D4D88,0x2ADC
GoldBank0aEnd:
.incbin "baseromgs.n64",0x23d7864,0x350
	.align 4

CrystalBank0b:
.incbin "baseromgs.n64",0x23D7BB4,0x1A67
CrystalBank0bEnd:
	.align 4

GoldBank0b:
.incbin "baseromgs.n64",0x23D961C,0x09C2
GoldBank0bEnd:
.incbin "baseromgs.n64",0x23d9fde,0x16
	.align 4

CrystalBank0c:
.incbin "baseromgs.n64",0x23D9FF4,0x24BB
CrystalBank0cEnd:
	.align 4

CrystalBank0e:
.incbin "baseromgs.n64",0x23DC4B0,0x2A12
CrystalBank0eEnd:
	.align 4

GoldBank0e:
.incbin "baseromgs.n64",0x23DEEC4,0x2709
GoldBank0eEnd:
	.align 4

CrystalBank11:
.incbin "baseromgs.n64",0x23E15D0,0x09A4
CrystalBank11End:
.incbin "baseromgs.n64",0x23e1f74,0xCA4
	.align 4

CrystalBank12:
.incbin "baseromgs.n64",0x23E2C18,0x221A
CrystalBank12End:
	.align 4

CrystalBank13:
.incbin "baseromgs.n64",0x23E4E34,0x26F2
CrystalBank13End:
	.align 4

CrystalBank14:
.incbin "baseromgs.n64",0x23E7528,0x2D77
CrystalBank14End:
	.align 4

GoldBank14:
.incbin "baseromgs.n64",0x23EA2A0,0x2B9E
GoldBank14End:
.incbin "baseromgs.n64",0x23ece3e,0x32
	.align 4

GoldBank15:
.incbin "baseromgs.n64",0x23ECE70,0x4403
GoldBank15End:
	.align 4

SilverBank15:
.incbin "baseromgs.n64",0x23F1274,0x43FC
SilverBank15End:
	.align 4

CrystalBank16:
.incbin "baseromgs.n64",0x23F5670,0x24B3
CrystalBank16End:
	.align 4

GoldBank16:
.incbin "baseromgs.n64",0x23F7B24,0x43F5
GoldBank16End:
	.align 4

SilverBank16:
.incbin "baseromgs.n64",0x23FBF1C,0x43C3
SilverBank16End:
	.align 4

CrystalBank17:
.incbin "baseromgs.n64",0x24002E0,0x2113
CrystalBank17End:
	.align 4

GoldBank17:
.incbin "baseromgs.n64",0x24023F4,0x435E
GoldBank17End:
	.align 4

SilverBank17:
.incbin "baseromgs.n64",0x2406754,0x434C
SilverBank17End:
	.align 4

YellowBank17:
.incbin "baseromgs.n64",0x240AAA0,0x1913
YellowBank17End:
	.align 4

RedBank17:
.incbin "baseromgs.n64",0x240C3B4,0x18F6
RedBank17End:
	.align 4

CrystalBank18:
.incbin "baseromgs.n64",0x240DCAC,0x2108
CrystalBank18End:
	.align 4

GoldBank18:
.incbin "baseromgs.n64",0x240FDB4,0x427B
GoldBank18End:
	.align 4

SilverBank18:
.incbin "baseromgs.n64",0x2414030,0x42DE
SilverBank18End:
	.align 4

YellowBank18:
.incbin "baseromgs.n64",0x2418310,0x1B8F
YellowBank18End:
	.align 4

RedBank18:
.incbin "baseromgs.n64",0x2419EA0,0x1A9F
RedBank18End:
	.align 4

CrystalBank19:
.incbin "baseromgs.n64",0x241B940,0x1C2F
CrystalBank19End:
	.align 4

GoldBank19:
.incbin "baseromgs.n64",0x241D570,0x4289
GoldBank19End:
.incbin "baseromgs.n64",0x24217f9,0x3
	.align 4

SilverBank19:
.incbin "baseromgs.n64",0x24217FC,0x42DC
SilverBank19End:
	.align 4

CrystalBank1a:
.incbin "baseromgs.n64",0x2425AD8,0x22FA
CrystalBank1aEnd:
	.align 4

GoldBank1a:
.incbin "baseromgs.n64",0x2427DD4,0x4309
GoldBank1aEnd:
	.align 4

SilverBank1a:
.incbin "baseromgs.n64",0x242C0E0,0x42D0
SilverBank1aEnd:
	.align 4

CrystalBank1b:
.incbin "baseromgs.n64",0x24303B0,0x2501
CrystalBank1bEnd:
	.align 4

GoldBank1b:
.incbin "baseromgs.n64",0x24328B4,0x42D2
GoldBank1bEnd:
	.align 4

SilverBank1b:
.incbin "baseromgs.n64",0x2436B88,0x42FD
SilverBank1bEnd:
	.align 4

GoldBank1c:
.incbin "baseromgs.n64",0x243AE88,0x42AC
GoldBank1cEnd:
	.align 4

SilverBank1c:
.incbin "baseromgs.n64",0x243F134,0x42CE
SilverBank1cEnd:
	.align 4

CrystalBank1d:
.incbin "baseromgs.n64",0x2443404,0x2298
CrystalBank1dEnd:
	.align 4

GoldBank1d:
.incbin "baseromgs.n64",0x244569C,0x41C8
GoldBank1dEnd:
	.align 4

SilverBank1d:
.incbin "baseromgs.n64",0x2449864,0x41A9
SilverBank1dEnd:
	.align 4

CrystalBank1e:
.incbin "baseromgs.n64",0x244DA10,0x25B3
CrystalBank1eEnd:
	.align 4

GoldBank1e:
.incbin "baseromgs.n64",0x244FFC4,0x41A7
GoldBank1eEnd:
	.align 4

SilverBank1e:
.incbin "baseromgs.n64",0x245416C,0x4192
SilverBank1eEnd:
	.align 4

CrystalBank1f:
.incbin "baseromgs.n64",0x2458300,0x2696
CrystalBank1fEnd:
	.align 4

GoldBank1f:
.incbin "baseromgs.n64",0x245A998,0x4454
GoldBank1fEnd:
	.align 4

SilverBank1f:
.incbin "baseromgs.n64",0x245EDEC,0x444C
SilverBank1fEnd:
	.align 4

CrystalBank20:
.incbin "baseromgs.n64",0x2463238,0x190C
CrystalBank20End:
	.align 4

GoldBank20:
.incbin "baseromgs.n64",0x2464B44,0x43AC
GoldBank20End:
	.align 4

SilverBank20:
.incbin "baseromgs.n64",0x2468EF0,0x43D4
SilverBank20End:
	.align 4

GoldBank21:
.incbin "baseromgs.n64",0x246D2C4,0x31A1
GoldBank21End:
.incbin "baseromgs.n64",0x2470465,0x3B
	.align 4

CrystalBank22:
.incbin "baseromgs.n64",0x24704A0,0x28C2
CrystalBank22End:
	.align 4

GoldBank23:
.incbin "baseromgs.n64",0x2472D64,0x2F74
GoldBank23End:
	.align 4

SilverBank23:
.incbin "baseromgs.n64",0x2475CD8,0x2F6F
SilverBank23End:
	.align 4

GoldBank24:
.incbin "baseromgs.n64",0x2478C48,0x310F
GoldBank24End:
.incbin "baseromgs.n64",0x247bd57,0x5
	.align 4

RedBank24:
.incbin "baseromgs.n64",0x247BD5C,0x18FE
RedBank24End:
	.align 4

GoldBank25:
.incbin "baseromgs.n64",0x247D65C,0x2F44
GoldBank25End:
.incbin "baseromgs.n64",0x24805a0,0x4C
	.align 4

RedBank25:
.incbin "baseromgs.n64",0x24805EC,0x1A51
RedBank25End:
	.align 4

CrystalBank26:
.incbin "baseromgs.n64",0x2482040,0x274C
CrystalBank26End:
	.align 4

GoldBank26:
.incbin "baseromgs.n64",0x248478C,0x0839
GoldBank26End:
.incbin "baseromgs.n64",0x2484fc5,0x50F
	.align 4

CrystalBank27:
.incbin "baseromgs.n64",0x24854D4,0x24C5
CrystalBank27End:
	.align 4

CrystalBank28:
.incbin "baseromgs.n64",0x248799C,0x1619
CrystalBank28End:
	.align 4

CrystalBank29:
.incbin "baseromgs.n64",0x2488FB8,0x1312
CrystalBank29End:
	.align 4

CrystalBank2a:
.incbin "baseromgs.n64",0x248A2CC,0x250C
CrystalBank2aEnd:
.incbin "baseromgs.n64",0x248c7d8,0xC8
	.align 4

RedBank2a:
.incbin "baseromgs.n64",0x248C8A0,0x0302
RedBank2aEnd:
	.align 4

CrystalBank2b:
.incbin "baseromgs.n64",0x248CBA4,0x263F
CrystalBank2bEnd:
.incbin "baseromgs.n64",0x248f1e3,0x6E5
	.align 4

CrystalBank2c:
.incbin "baseromgs.n64",0x248F8C8,0x1107
CrystalBank2cEnd:
	.align 4

RedBank2c:
.incbin "baseromgs.n64",0x24909D0,0x0561
RedBank2cEnd:
	.align 4

CrystalBank2e:
.incbin "baseromgs.n64",0x2490F34,0x18FB
CrystalBank2eEnd:
	.align 4

GoldBank2e:
.incbin "baseromgs.n64",0x2492830,0x286E
GoldBank2eEnd:
	.align 4

SilverBank2e:
.incbin "baseromgs.n64",0x24950A0,0x27E0
SilverBank2eEnd:
	.align 4

CrystalBank2f:
.incbin "baseromgs.n64",0x2497880,0x1ED1
CrystalBank2fEnd:
	.align 4

CrystalBank30:
.incbin "baseromgs.n64",0x2499754,0x2456
CrystalBank30End:
	.align 4

YellowBank30:
.incbin "baseromgs.n64",0x249BBAC,0x0D9F
YellowBank30End:
	.align 4

CrystalBank31:
.incbin "baseromgs.n64",0x249C94C,0x27F1
CrystalBank31End:
.incbin "baseromgs.n64",0x249f13d,0x55F
	.align 4

CrystalBank32:
.incbin "baseromgs.n64",0x249F69C,0x295A
CrystalBank32End:
	.align 4

GoldBank32:
.incbin "baseromgs.n64",0x24A1FF8,0x2926
GoldBank32End:
	.align 4

YellowBank32:
.incbin "baseromgs.n64",0x24A4920,0x1366
YellowBank32End:
	.align 4

CrystalBank33:
.incbin "baseromgs.n64",0x24A5C88,0x2C23
CrystalBank33End:
	.align 4

GoldBank33:
.incbin "baseromgs.n64",0x24A88AC,0x2BBF
GoldBank33End:
.incbin "baseromgs.n64",0x24ab46b,0x5
	.align 4

CrystalBank34:
.incbin "baseromgs.n64",0x24AB470,0x2A54
CrystalBank34End:
	.align 4

YellowBank34:
.incbin "baseromgs.n64",0x24ADEC4,0x118B
YellowBank34End:
	.align 4

CrystalBank35:
.incbin "baseromgs.n64",0x24AF050,0x166D
CrystalBank35End:
	.align 4

CrystalBank36:
.incbin "baseromgs.n64",0x24B06C0,0x11FB
CrystalBank36End:
	.align 4

GoldBank36:
.incbin "baseromgs.n64",0x24B18BC,0x0364
GoldBank36End:
	.align 4

CrystalBank37:
.incbin "baseromgs.n64",0x24B1C20,0x29A1
CrystalBank37End:
	.align 4

CrystalBank38:
.incbin "baseromgs.n64",0x24B45C4,0x2C03
CrystalBank38End:
	.align 4

CrystalBank39:
.incbin "baseromgs.n64",0x24B71C8,0x31D1
CrystalBank39End:
	.align 4

CrystalBank3a:
.incbin "baseromgs.n64",0x24BA39C,0x3243
CrystalBank3aEnd:
	.align 4

CrystalBank3b:
.incbin "baseromgs.n64",0x24BD5E0,0x3022
CrystalBank3bEnd:
	.align 4

CrystalBank3d:
.incbin "baseromgs.n64",0x24C0604,0x324F
CrystalBank3dEnd:
	.align 4

CrystalBank3e:
.incbin "baseromgs.n64",0x24C3854,0x212E
CrystalBank3eEnd:
	.align 4

GoldBank3e:
.incbin "baseromgs.n64",0x24C5984,0x21CD
GoldBank3eEnd:
	.align 4

CrystalBank3f:
.incbin "baseromgs.n64",0x24C7B54,0x0D68
CrystalBank3fEnd:
	.align 4

GoldBank3f:
.incbin "baseromgs.n64",0x24C88BC,0x1699
GoldBank3fEnd:
.incbin "baseromgs.n64",0x24c9f55,0xB
	.align 4

GoldBank40:
.incbin "baseromgs.n64",0x24C9F60,0x15C8
GoldBank40End:
.incbin "baseromgs.n64",0x24cb528,0xC
	.align 4

CrystalBank41:
.incbin "baseromgs.n64",0x24CB534,0x1E3D
CrystalBank41End:
	.align 4

GoldBank41:
.incbin "baseromgs.n64",0x24CD374,0x1339
GoldBank41End:
	.align 4

CrystalBank42:
.incbin "baseromgs.n64",0x24CE6B0,0x2184
CrystalBank42End:
	.align 4

GoldBank42:
.incbin "baseromgs.n64",0x24D0834,0x1599
GoldBank42End:
	.align 4

CrystalBank43:
.incbin "baseromgs.n64",0x24D1DD0,0x1CEA
CrystalBank43End:
	.align 4

GoldBank43:
.incbin "baseromgs.n64",0x24D3ABC,0x216E
GoldBank43End:
	.align 4

CrystalBank44:
.incbin "baseromgs.n64",0x24D5C2C,0x2E25
CrystalBank44End:
	.align 4

GoldBank44:
.incbin "baseromgs.n64",0x24D8A54,0x220A
GoldBank44End:
	.align 4

GoldBank45:
.incbin "baseromgs.n64",0x24DAC60,0x2047
GoldBank45End:
	.align 4

CrystalBank46:
.incbin "baseromgs.n64",0x24DCCA8,0x2822
CrystalBank46End:
	.align 4

GoldBank46:
.incbin "baseromgs.n64",0x24DF4CC,0x19ED
GoldBank46End:
	.align 4

CrystalBank47:
.incbin "baseromgs.n64",0x24E0EBC,0x27AF
CrystalBank47End:
	.align 4

GoldBank47:
.incbin "baseromgs.n64",0x24E366C,0x0979
GoldBank47End:
	.align 4

CrystalBank48:
.incbin "baseromgs.n64",0x24E3FE8,0x4592
CrystalBank48End:
	.align 4

GoldBank48:
.incbin "baseromgs.n64",0x24E857C,0x1AE1
GoldBank48End:
	.align 4

CrystalBank49:
.incbin "baseromgs.n64",0x24EA060,0x4528
CrystalBank49End:
	.align 4

GoldBank49:
.incbin "baseromgs.n64",0x24EE588,0x1701
GoldBank49End:
	.align 4

CrystalBank4a:
.incbin "baseromgs.n64",0x24EFC8C,0x44E9
CrystalBank4aEnd:
	.align 4

GoldBank4a:
.incbin "baseromgs.n64",0x24F4178,0x16D3
GoldBank4aEnd:
	.align 4

CrystalBank4b:
.incbin "baseromgs.n64",0x24F584C,0x44E4
CrystalBank4bEnd:
	.align 4

CrystalBank4c:
.incbin "baseromgs.n64",0x24F9D30,0x44C7
CrystalBank4cEnd:
	.align 4

GoldBank4c:
.incbin "baseromgs.n64",0x24FE1F8,0x1660
GoldBank4cEnd:
	.align 4

CrystalBank4d:
.incbin "baseromgs.n64",0x24FF858,0x448C
CrystalBank4dEnd:
	.align 4

GoldBank4d:
.incbin "baseromgs.n64",0x2503CE4,0x1676
GoldBank4dEnd:
	.align 4

CrystalBank4e:
.incbin "baseromgs.n64",0x250535C,0x447B
CrystalBank4eEnd:
	.align 4

GoldBank4e:
.incbin "baseromgs.n64",0x25097D8,0x18E0
GoldBank4eEnd:
	.align 4

CrystalBank4f:
.incbin "baseromgs.n64",0x250B0B8,0x4439
CrystalBank4fEnd:
	.align 4

GoldBank4f:
.incbin "baseromgs.n64",0x250F4F4,0x1A86
GoldBank4fEnd:
	.align 4

CrystalBank50:
.incbin "baseromgs.n64",0x2510F7C,0x43F5
CrystalBank50End:
	.align 4

GoldBank50:
.incbin "baseromgs.n64",0x2515374,0x122B
GoldBank50End:
	.align 4

CrystalBank51:
.incbin "baseromgs.n64",0x25165A0,0x4448
CrystalBank51End:
	.align 4

GoldBank51:
.incbin "baseromgs.n64",0x251A9E8,0x15CD
GoldBank51End:
	.align 4

CrystalBank52:
.incbin "baseromgs.n64",0x251BFB8,0x43C2
CrystalBank52End:
	.align 4

GoldBank52:
.incbin "baseromgs.n64",0x252037C,0x1446
GoldBank52End:
	.align 4

CrystalBank53:
.incbin "baseromgs.n64",0x25217C4,0x4339
CrystalBank53End:
	.align 4

GoldBank53:
.incbin "baseromgs.n64",0x2525B00,0x15B8
GoldBank53End:
	.align 4

CrystalBank54:
.incbin "baseromgs.n64",0x25270B8,0x4306
CrystalBank54End:
	.align 4

GoldBank54:
.incbin "baseromgs.n64",0x252B3C0,0x1326
GoldBank54End:
	.align 4

CrystalBank55:
.incbin "baseromgs.n64",0x252C6E8,0x42BE
CrystalBank55End:
	.align 4

GoldBank55:
.incbin "baseromgs.n64",0x25309A8,0x0FD9
GoldBank55End:
	.align 4

CrystalBank56:
.incbin "baseromgs.n64",0x2531984,0x429F
CrystalBank56End:
	.align 4

CrystalBank57:
.incbin "baseromgs.n64",0x2535C24,0x42D3
CrystalBank57End:
	.align 4

CrystalBank58:
.incbin "baseromgs.n64",0x2539EF8,0x4124
CrystalBank58End:
	.align 4

CrystalBank59:
.incbin "baseromgs.n64",0x253E01C,0x26D6
CrystalBank59End:
	.align 4

GoldBank59:
.incbin "baseromgs.n64",0x25406F4,0x167D
GoldBank59End:
	.align 4

CrystalBank5a:
.incbin "baseromgs.n64",0x2541D74,0x26D6
CrystalBank5aEnd:
	.align 4

GoldBank5a:
.incbin "baseromgs.n64",0x254444C,0x161E
GoldBank5aEnd:
	.align 4

CrystalBank5b:
.incbin "baseromgs.n64",0x2545A6C,0x0E8A
CrystalBank5bEnd:
	.align 4

CrystalBank5c:
.incbin "baseromgs.n64",0x25468F8,0x2565
CrystalBank5cEnd:
	.align 4

GoldBank5c:
.incbin "baseromgs.n64",0x2548E60,0x1021
GoldBank5cEnd:
	.align 4

CrystalBank5d:
.incbin "baseromgs.n64",0x2549E84,0x1D26
CrystalBank5dEnd:
	.align 4

GoldBank5d:
.incbin "baseromgs.n64",0x254BBAC,0x1570
GoldBank5dEnd:
	.align 4

CrystalBank5e:
.incbin "baseromgs.n64",0x254D11C,0x2215
CrystalBank5eEnd:
	.align 4

CrystalBank5f:
.incbin "baseromgs.n64",0x254F334,0x21FD
CrystalBank5fEnd:
	.align 4

GoldBank5f:
.incbin "baseromgs.n64",0x2551534,0x0DB8
GoldBank5fEnd:
	.align 4

CrystalBank60:
.incbin "baseromgs.n64",0x25522EC,0x206D
CrystalBank60End:
	.align 4

GoldBank60:
.incbin "baseromgs.n64",0x255435C,0x1A5C
GoldBank60End:
	.align 4

CrystalBank61:
.incbin "baseromgs.n64",0x2555DB8,0x1A4A
CrystalBank61End:
	.align 4

GoldBank61:
.incbin "baseromgs.n64",0x2557804,0x12BD
GoldBank61End:
	.align 4

CrystalBank62:
.incbin "baseromgs.n64",0x2558AC4,0x25C7
CrystalBank62End:
	.align 4

GoldBank62:
.incbin "baseromgs.n64",0x255B08C,0x0BD9
GoldBank62End:
	.align 4

CrystalBank63:
.incbin "baseromgs.n64",0x255BC68,0x24C8
CrystalBank63End:
	.align 4

CrystalBank64:
.incbin "baseromgs.n64",0x255E130,0x2537
CrystalBank64End:
	.align 4

GoldBank64:
.incbin "baseromgs.n64",0x2560668,0x140B
GoldBank64End:
	.align 4

CrystalBank65:
.incbin "baseromgs.n64",0x2561A74,0x25F8
CrystalBank65End:
	.align 4

GoldBank65:
.incbin "baseromgs.n64",0x256406C,0x124E
GoldBank65End:
	.align 4

GoldBank66:
.incbin "baseromgs.n64",0x25652BC,0x07B6
GoldBank66End:
	.align 4

CrystalBank67:
.incbin "baseromgs.n64",0x2565A74,0x2634
CrystalBank67End:
	.align 4

CrystalBank68:
.incbin "baseromgs.n64",0x25680A8,0x231A
CrystalBank68End:
	.align 4

GoldBank68:
.incbin "baseromgs.n64",0x256A3C4,0x124E
GoldBank68End:
	.align 4

SilverBank68:
.incbin "baseromgs.n64",0x256B614,0x1238
SilverBank68End:
	.align 4

CrystalBank69:
.incbin "baseromgs.n64",0x256C84C,0x2464
CrystalBank69End:
	.align 4

GoldBank69:
.incbin "baseromgs.n64",0x256ECB0,0x1336
GoldBank69End:
	.align 4

SilverBank69:
.incbin "baseromgs.n64",0x256FFE8,0x1341
SilverBank69End:
	.align 4

GoldBank6a:
.incbin "baseromgs.n64",0x257132C,0x1281
GoldBank6aEnd:
	.align 4

SilverBank6a:
.incbin "baseromgs.n64",0x25725B0,0x12E1
SilverBank6aEnd:
	.align 4

CrystalBank6b:
.incbin "baseromgs.n64",0x2573894,0x1D32
CrystalBank6bEnd:
	.align 4

GoldBank6b:
.incbin "baseromgs.n64",0x25755C8,0x11EF
GoldBank6bEnd:
	.align 4

SilverBank6b:
.incbin "baseromgs.n64",0x25767B8,0x118A
SilverBank6bEnd:
	.align 4

CrystalBank6c:
.incbin "baseromgs.n64",0x2577944,0x110D
CrystalBank6cEnd:
	.align 4

CrystalBank6d:
.incbin "baseromgs.n64",0x2578A54,0x158D
CrystalBank6dEnd:
	.align 4

GoldBank6d:
.incbin "baseromgs.n64",0x2579FE4,0x0E9B
GoldBank6dEnd:
	.align 4

CrystalBank6e:
.incbin "baseromgs.n64",0x257AE80,0x1221
CrystalBank6eEnd:
	.align 4

GoldBank6e:
.incbin "baseromgs.n64",0x257C0A4,0x0AE0
GoldBank6eEnd:
	.align 4

CrystalBank6f:
.incbin "baseromgs.n64",0x257CB84,0x137F
CrystalBank6fEnd:
	.align 4

CrystalBank70:
.incbin "baseromgs.n64",0x257DF04,0x12F8
CrystalBank70End:
	.align 4

GoldBank70:
.incbin "baseromgs.n64",0x257F1FC,0x119D
GoldBank70End:
.incbin "baseromgs.n64",0x2580399,0x1D7
	.align 4

CrystalBank71:
.incbin "baseromgs.n64",0x2580570,0x1378
CrystalBank71End:
	.align 4

CrystalBank72:
.incbin "baseromgs.n64",0x25818E8,0x1BBF
CrystalBank72End:
	.align 4

CrystalBank73:
.incbin "baseromgs.n64",0x25834A8,0x122B
CrystalBank73End:
	.align 4

CrystalBank74:
.incbin "baseromgs.n64",0x25846D4,0x1178
CrystalBank74End:
	.align 4

CrystalBank77:
.incbin "baseromgs.n64",0x258584C,0x1E65
CrystalBank77End:
	.align 4

CrystalBank78:
.incbin "baseromgs.n64",0x25876B4,0x03F5
CrystalBank78End:
	.align 4

CrystalBank7d:
.incbin "baseromgs.n64",0x2587AAC,0x1518
CrystalBank7dEnd:
	.align 4

CrystalBank7e:
.incbin "baseromgs.n64",0x2588FC4,0x042E
CrystalBank7eEnd:
	.align 4

	.align 16

; empty space
.incbin "baseromgs.n64",0x2589400,0x258d000-0x2589400

; XXX what is this table?
.incbin "baseromgs.n64",0x258d000,0x266b000-0x258d000

; XXX what is this table?
.incbin "baseromgs.n64",0x266b000,0x2675000-0x266b000

; XXX what is this table?
.incbin "baseromgs.n64",0x2675000,0x267d000-0x2675000

; XXX what is this table?
.incbin "baseromgs.n64",0x267d000,0x27ed000-0x267d000

; pokemon models table
.incbin "baseromgs.n64",0x27ed000,0x2d7d000-0x27ed000

; pokemon poses table
.incbin "baseromgs.n64",0x2d7d000,0x3fd5000-0x2d7d000

; XXX what is this table?
.incbin "baseromgs.n64",0x3fd5000,0x3fed000-0x3fd5000

.incbin "baseromgs.n64",0x3fed000

.close
