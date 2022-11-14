settings {
    "main": {
        "description": "<fg00cc66ff>The original Enhanced Ana Paintball mode\r\nby Jinko!</fg>\r\n1DMTZ V2.2.1\r\n\r\n<fgFF88F0ff>• 7 maps with jump pads\r\n   & teleporters to move around!\r\n• The final kill can only be secured\r\n    with a Sleep Dart!\r\n• Killstreaks, shutdo﻿wns etc\r\n   are tracked and announced!\r\nAnd much more!</fg>\r\nAll details on <fg00cc66ff>workshop.codes/1DMTZ</fg>\r\n\r\nBattleTag: Jinko#2838 - Discord: Jinko#2154",
        "modeName": "<fgFF88F0ff>Ana Paintball</fg>"
    },
    "lobby": {
        "allowPlayersInQueue": true,
        "mapRotation": "afterGame",
        "ffaSlots": 9,
        "spectatorSlots": 12,
        "returnToLobby": "never",
        "swapTeamsAfterMatch": false
    },
    "gamemodes": {
        "ffa": {
            "enabledMaps": [
                "blackForestWinter",
                "chateauGuillardHalloween",
                "ecopointAntarctica",
                "eichenwalde",
                "kanezaka",
                "malevento",
                "petra"
            ]
        },
        "general": {
            "enableHeroSwitching": false,
            "enableEnemyHealthBars": false,
            "gamemodeStartTrigger": "immediately",
            "enableKillCam": false,
            "respawnTime%": 0,
            "scoreToWin": 25,
            "enableSelfInitiatedRespawn": false,
            "spawnHealthPacks": "disabled"
        }
    },
    "heroes": {
        "allTeams": {
            "ana": {
                "enableAbility2": false,
                "ability1Cooldown%": 20,
                "combatUltGen%": 0,
                "passiveUltGen%": 0
            },
            "enabledHeroes": [
                "ana"
            ],
            "general": {
                "enableInfiniteUlt": true,
                "ultGen%": 10,
                "combatUltGen%": 0,
                "passiveUltGen%": 0
            }
        }
    }
}

#Global variables

globalvar MapList 0
globalvar __currentMap___ 1


#Player variables

playervar KillStreak 1
playervar SleepLock 2
playervar RespawnDelay 4
playervar Nanoscore 5
playervar OofText 6


#Activated extensions

#!extension buffStatusEffects
#!extension buffAndDebuffSounds
#!extension energyExplosionEffects
#!extension explosionSounds
#!extension buffStatusEffects
#!extension buffStatusEffects
#!extension explosionSounds
#!extension explosionSounds
#!extension explosionSounds
#!extension buffStatusEffects
#!extension buffAndDebuffSounds
#!extension energyExplosionEffects
#!extension explosionSounds


rule "OverPy Map Detection":
    if getCurrentMap() in [Map.AYUTTHAYA, Map.BLACK_FOREST, Map.BLACK_FOREST, Map.BLIZZ_WORLD, Map.BLIZZ_WORLD, Map.BUSAN, Map.BUSAN, Map.BUSAN, Map.CASTILLO, Map.CHATEAU_GUILLARD, Map.CHATEAU_GUILLARD, Map.CIRCUIT_ROYAL, Map.COLOSSEO, Map.DORADO, Map.ECOPOINT_ANTARCTICA, Map.EICHENWALDE, Map.EICHENWALDE, Map.ESPERANCA, Map.HANAMURA, Map.HANAMURA, Map.HAVANA, Map.HOLLYWOOD, Map.HORIZON_LUNAR_COLONY, Map.ILIOS, Map.ILIOS, Map.ILIOS, Map.ILIOS, Map.JUNKENSTEIN, Map.JUNKERTOWN, Map.KANEZAKA, Map.KINGS_ROW, Map.KINGS_ROW, Map.LIJIANG_CONTROL_CENTER, Map.LIJIANG_CONTROL_CENTER, Map.LIJIANG_GARDEN, Map.LIJIANG_GARDEN, Map.LIJIANG_NIGHT_MARKET, Map.LIJIANG_NIGHT_MARKET, Map.LIJIANG_TOWER, Map.LIJIANG_TOWER, Map.MALEVENTO, Map.MIDTOWN, Map.NECROPOLIS, Map.NEPAL, Map.NEPAL, Map.NEPAL, Map.NEPAL, Map.NEW_QUEEN_STREET, Map.NUMBANI, Map.OASIS, Map.OASIS, Map.OASIS, Map.OASIS, Map.PARAISO, Map.PARIS, Map.PETRA, Map.PRACTICE_RANGE, Map.RIALTO, Map.ROUTE66, Map.TEMPLE_OF_ANUBIS, Map.VOLSKAYA, Map.WATCHPOINT_GIBRALTAR, Map.WORKSHOP_CHAMBER, Map.WORKSHOP_EXPANSE, Map.WORKSHOP_EXPANSE, Map.WORKSHOP_GREEN_SCREEN, Map.WORKSHOP_ISLAND, Map.WORKSHOP_ISLAND]:
        __currentMap___ = getCurrentMap()
        return
    __currentMap___ = raycast(vect(500, 100, 500), vect(-500, -100, -500), null, null, false).getHitPosition()
    if __currentMap___ == vect(0, 0, 0) or __currentMap___ == vect(-500, -100, -500):
        __currentMap___ = raycast(vect(30, 5, 0), vect(-30, -10, -10), null, null, false).getHitPosition()
        if __currentMap___ == vect(-30, -10, -10):
            __currentMap___ = raycast(vect(200, 20, 100), vect(100, -100, -100), null, null, false).getHitPosition()
            if __currentMap___ == vect(100, -100, -100):
                __currentMap___ = raycast(vect(300, 20, -100), vect(300, -100, 100), null, null, false).getHitPosition()
                if __currentMap___ == vect(300, -100, 100):
                    __currentMap___ = raycast(vect(50, 100, -150), vect(-50, -100, -160), null, null, false).getHitPosition()
                    if __currentMap___ == vect(-50, -100, -160):
                        __currentMap___ = raycast(vect(0, 300, 340), vect(0, -100, -300), null, null, false).getHitPosition()
                        if __currentMap___ == vect(0, -100, -300):
                            __currentMap___ = raycast(vect(140, 10, -240), vect(200, -10, -300), null, null, false).getHitPosition()
                            if __currentMap___ == vect(200, -10, -300):
                                __currentMap___ = raycast(vect(-180, 30, 60), vect(-180, -50, -60), null, null, false).getHitPosition()
    __currentMap___ = 100 * ceil(__currentMap___.y) + 10 * round(__currentMap___.x) + floor(__currentMap___.z)
    if __currentMap___ == 10121:
        __currentMap___ = raycast(vect(-60, 20, -60), vect(60, -10, 60), null, null, false).getHitPosition()
        if __currentMap___ == vect(60, -10, 60):
            __currentMap___ = raycast(vect(-180, -70, 60), vect(-180, -100, -60), null, null, false).getHitPosition()
        __currentMap___ = 100 * ceil(__currentMap___.y) + 10 * round(__currentMap___.x) + floor(__currentMap___.z)


rule "Disable game completion, display HUD":
    disableGamemodeCompletion()
    hudSubtext(getAllPlayers(), "{0} your last kill can only be a {1} sleep !".format(iconString(Icon.WARNING), abilityIconString(Hero.ANA, Button.ABILITY_1)), HudPosition.TOP, 1, Color.YELLOW, HudReeval.VISIBILITY, SpecVisibility.DEFAULT)
    hudSubtext(getAllPlayers(), "1DMTZ V2.2.1", HudPosition.RIGHT, 1, Color.WHITE, HudReeval.VISIBILITY, SpecVisibility.DEFAULT)


rule "Start match sooner":
    @Condition isAssemblingHeroes() == true
    
    wait(1)
    setMatchTime(20)
    wait(20.1)
    setMatchTime(261)
    wait()
    pauseMatchTime()


rule "Everything deals 0.0001 damage":
    @Event eachPlayer
    
    eventPlayer.setDamageDealt(0)


rule "Declare Nanoscore":
    @Event eachPlayer
    
    eventPlayer.Nanoscore = 24


rule "While score < nanoscore, allow all buttons":
    @Event eachPlayer
    @Condition eventPlayer.getScore() < eventPlayer.Nanoscore
    @Condition eventPlayer.isAlive() == true
    
    wait(0.2)
    eventPlayer.allowButton(Button.PRIMARY_FIRE)
    eventPlayer.allowButton(Button.SECONDARY_FIRE)
    eventPlayer.allowButton(Button.MELEE)
    eventPlayer.allowButton(Button.RELOAD)
    eventPlayer.stopForcingButton(Button.ULTIMATE)


rule "Random message to each players when they first spawn":
    @Event eachPlayer
    @Condition eventPlayer.hasSpawned() == true
    @Condition eventPlayer.getNumberOfDeaths() == 0
    
    wait(0.1)
    smallMessage(eventPlayer, "    Mode by Jinko")
    wait(0.1)
    smallMessage(eventPlayer, random.choice(["    {0} Jump pads make your movements predictable!".format(abilityIconString(Hero.WINSTON, Button.ABILITY_1)), "    {0} There are 7 maps available!".format(abilityIconString(Hero.KIRIKO, Button.JUMP)), "    {0} Some maps have teleporters!".format(abilityIconString(Hero.SYMMETRA, Button.ABILITY_2)), "    {0} Don't sleep-lock other players...".format(iconString(Icon.EYE)), "    {0} Shutdowns are announced to everyone!".format(abilityIconString(Hero.TRACER, Button.ABILITY_2)), "    {0} Killstreaks are announced to everyone!".format(iconString(Icon.FLAG)), "    {0} There are many jump pads around!".format(abilityIconString(Hero.BAPTISTE, Button.CROUCH)), "    {0} 4 kills without dying = on fire!".format(iconString(Icon.FIRE)), "    {0} 10 kills without dying = Rampage!".format(abilityIconString(Hero.JUNKER_QUEEN, Button.ULTIMATE)), "    {0} Nanoboosted players can only use Sleep Dart!".format(abilityIconString(Hero.ANA, Button.ULTIMATE)), "    {0}  Melee only kills sleeping players!".format(abilityIconString(Hero.ANA, Button.MELEE)), "    {0}  Thanks for playing!".format(iconString(Icon.HEART)), "    Good luck, have fun!"]))


rule "Hardscope messages":
    @Event eachPlayer
    @Condition eventPlayer.isFiringSecondaryFire() == true
    @Condition eventPlayer.isFiringPrimaryFire() == false
    
    wait(4, Wait.ABORT_WHEN_FALSE)
    smallMessage(eventPlayer, random.choice(["    Nice hardscope", "    We got a hardscope champion", "    1 year of hardscoping later...", "    that's a LONG hardscope"]))
    goto RULE_START


rule "If player melees an awake player, display explanation":
    @Event playerDealtDamage
    @Condition eventAbility == Button.MELEE
    @Condition victim.hasStatusEffect(Status.ASLEEP) == false
    
    smallMessage(eventPlayer, "    {0}  Melee only kills sleeping players!  {0}".format(iconString(Icon.NO)))


rule "RAMPAGE EFFECT":
    @Event eachPlayer
    
    createEffect([eventPlayer.KillStreak >= 10], Effect.ECHO_CLONING, Color.TEAM_1, eventPlayer, 1, EffectReeval.VISIBILITY_POSITION_AND_RADIUS)
    createEffect([eventPlayer.KillStreak >= 10], Effect.MERCY_DAMAGE_BOOSTED, Color.TEAM_1, eventPlayer, 1, EffectReeval.VISIBILITY_POSITION_AND_RADIUS)


rule "Reset player's variables & effects upon death":
    @Event playerDied
    
    wait(1)
    eventPlayer.RespawnDelay = 0
    eventPlayer.KillStreak = 0
    eventPlayer.SleepLock = 0
    eventPlayer.clearStatusEffect(Status.BURNING)
    eventPlayer.setMoveSpeed(100)
    wait(2.1)
    eventPlayer.RespawnDelay = 1


rule "RIFLE hit = kill, killer: KillStreak +1":
    @Event playerDealtDamage
    @Condition eventAbility == Button.PRIMARY_FIRE
    
    kill(victim, attacker)
    attacker.KillStreak += 1


rule "MELEE kills sleeping players":
    @Event playerDealtDamage
    @Condition victim.hasStatusEffect(Status.ASLEEP) == true
    @Condition eventAbility == Button.MELEE
    
    kill(victim, attacker)
    playEffect(getAllPlayers(), DynamicEffect.SIGMA_ACCRETION_IMPACT_SOUND, Color.WHITE, eventPlayer.getPosition(), 100)
    attacker.KillStreak += 1
    wait(0.2)
    smallMessage(attacker, random.choice(["    {0}{1}  Sleep-punched {2}!".format(abilityIconString(Hero.ANA, Button.MELEE), abilityIconString(Hero.ANA, Button.ABILITY_1), victim), "    {0}{1}  Relaxed {2}!".format(abilityIconString(Hero.ANA, Button.MELEE), abilityIconString(Hero.ANA, Button.ABILITY_1), victim), "    {0}{1}  slammed {2}!".format(abilityIconString(Hero.ANA, Button.MELEE), abilityIconString(Hero.ANA, Button.ABILITY_1), victim), "    {0}{1}  Gave {2} nightmares!".format(abilityIconString(Hero.ANA, Button.MELEE), abilityIconString(Hero.ANA, Button.ABILITY_1), victim)]))


rule "When 4 kills streak: start burning, announce it":
    @Event playerEarnedElimination
    @Condition eventPlayer.KillStreak == 4
    @Condition eventPlayer.isAlive() == true
    
    eventPlayer.setStatusEffect(null, Status.BURNING, 9999)
    playEffect(getAllPlayers(), DynamicEffect.BRIGITTE_REPAIR_PACK_ARMOR_SOUND, Color.WHITE, eventPlayer.getPosition(), 100)
    smallMessage(getAllPlayers().exclude(eventPlayer), "    {0}  {1} is on fire!  {2}".format(iconString(Icon.SKULL), eventPlayer, iconString(Icon.SKULL)))
    wait(1, Wait.ABORT_WHEN_FALSE)
    smallMessage(eventPlayer, random.choice(["    {0}  You are stomping!".format(iconString(Icon.FIRE)), "    {0}  Woooow!".format(iconString(Icon.FIRE)), "    {0}  Damn, you're owning!".format(iconString(Icon.FIRE)), "    {0}  Is this easy mode?".format(heroIcon(Hero.ANA)), "    {0}  Looking for worthy opponents...".format(heroIcon(Hero.BASTION)), "    {0}  Error: no challenger".format(iconString(Icon.WARNING))]))


rule "Announce 4 to 8 killstreak shutdo﻿wn":
    @Event playerDied
    @Condition eventWasEnvironment == false
    @Condition eventPlayer.KillStreak >= 4
    @Condition eventPlayer.KillStreak < 9
    @Condition eventPlayer.SleepLock < 1
    
    smallMessage(attacker, "    {0}  Ended {1}'s {2} Killstreak!".format(abilityIconString(Hero.TRACER, Button.ABILITY_2), eventPlayer, eventPlayer.KillStreak))
    smallMessage(getAllPlayers().exclude([eventPlayer, attacker]), "    {0}  {1} has shut {2} down!".format(abilityIconString(Hero.TRACER, Button.ABILITY_2), attacker, eventPlayer))


rule "When RAMPAGE announce it":
    @Event playerEarnedElimination
    @Condition eventPlayer.KillStreak == 10
    
    smallMessage(getAllPlayers().exclude(eventPlayer), "    {0}  {1} is on a rampage!".format(abilityIconString(Hero.JUNKER_QUEEN, Button.ULTIMATE), eventPlayer))
    playEffect(getAllPlayers(), DynamicEffect.DOOMFIST_RISING_UPPERCUT_LEAP_SOUND, Color.WHITE, eventPlayer.getPosition(), 999)
    wait(1, Wait.ABORT_WHEN_FALSE)
    smallMessage(eventPlayer, random.choice(["    {0}  You are on a rampage!".format(abilityIconString(Hero.JUNKER_QUEEN, Button.ULTIMATE)), "    {0}  10 in a row!".format(abilityIconString(Hero.JUNKER_QUEEN, Button.ULTIMATE)), "    {0}  10 kills without dying!".format(abilityIconString(Hero.JUNKER_QUEEN, Button.ULTIMATE)), "    {0}  Rampage!".format(abilityIconString(Hero.JUNKER_QUEEN, Button.ULTIMATE)), "    You are unbeatable!"]))


rule "Announce when RAMPAGE ends":
    @Event playerDied
    @Condition eventWasEnvironment == false
    @Condition eventPlayer.KillStreak >= 9
    @Condition eventPlayer.SleepLock < 1
    
    smallMessage(attacker, "    {0}  Ended {1}'s {2} kills rampage!".format(abilityIconString(Hero.DOOMFIST, Button.ABILITY_1), eventPlayer, eventPlayer.KillStreak))
    smallMessage(getAllPlayers().exclude([eventPlayer, attacker]), "    {0}  {1}'s {2} kills rampage ended!".format(abilityIconString(Hero.TRACER, Button.ABILITY_2), eventPlayer, eventPlayer.KillStreak))


rule "Environement death":
    @Event playerDied
    @Condition eventWasEnvironment == true
    
    wait(1)
    smallMessage(eventPlayer, random.choice(["    {0}  Unlucky.".format(iconString(Icon.SAD)), "    {0}  Watch your step!".format(iconString(Icon.WARNING)), "    {0}  Everybody saw that...".format(iconString(Icon.SAD)), "    {0}  Don't tell anyone.".format(iconString(Icon.SAD)), "    {0}  Happens to the best of us.".format(iconString(Icon.CHECKMARK)), "    {0}  Lakitu got you!".format(iconString(Icon.HAPPY)), "    {0}  Awkward.".format(iconString(Icon.SAD)), "    Was it cool down there?", "    {0}  Poor legs...".format(iconString(Icon.SAD))]))
    eventPlayer.KillStreak = 0
    eventPlayer.SleepLock = 0


rule "Long distance kills OOF":
    @Event playerTookDamage
    @Condition attacker.isAlive() == true
    @Condition distance(attacker, victim) >= 40
    @Condition eventWasEnvironment == false
    
    smallMessage(attacker, random.choice(["    {0} Long shot!".format(abilityIconString(Hero.MCCREE, Button.ULTIMATE)), "    {0}  Nice shot.".format(heroIcon(Hero.WIDOWMAKER)), "    {0}  Nice shot!".format(heroIcon(Hero.MCCREE))]))
    createInWorldText(getAllPlayers(), "Oof", eventPlayer, 1, Clip.SURFACES, WorldTextReeval.VISIBILITY_POSITION_AND_STRING, Color.SKY_BLUE, SpecVisibility.DEFAULT)
    eventPlayer.OofText = getLastCreatedText()
    wait(0.5)
    destroyInWorldText(eventPlayer.OofText)


rule "Sleeping an already sleeping player adds 1 to your SleepLock":
    @Event playerDealtDamage
    @Condition eventAbility == Button.ABILITY_1
    @Condition victim.hasStatusEffect(Status.ASLEEP) == true
    
    eventPlayer.SleepLock += 1


rule "If SleepLock = 2, execute attacker, wake victim, reset attacker SleepLock and KillStreak":
    @Event playerDealtDamage
    @Condition eventAbility == Button.ABILITY_1
    @Condition victim.hasStatusEffect(Status.ASLEEP) == true
    @Condition eventPlayer.SleepLock == 2
    
    kill(eventPlayer, eventPlayer)
    eventPlayer.setScore(eventPlayer.getScore() - 1)
    smallMessage(victim, "    Executed {0} for sleep-locking you".format(eventPlayer))
    wait(1)
    smallMessage(eventPlayer, "    Executed for sleep-locking {0}".format(victim))
    damage(victim, attacker, 1)


rule "Sleep-lock resets after 5s without sleeping anyone":
    @Event playerDealtDamage
    @Condition eventAbility == Button.ABILITY_1
    @Condition eventPlayer.SleepLock > 0
    
    wait(5, Wait.ABORT_WHEN_FALSE)
    eventPlayer.SleepLock = 0


rule "NANOBOOST EFFECT":
    @Event eachPlayer
    
    createEffect([eventPlayer.getScore() == eventPlayer.Nanoscore and eventPlayer.isAlive() and eventPlayer.RespawnDelay == 1], Effect.ANA_NANO_BOOSTED, Color.TEAM_1, eventPlayer, 0 if eventPlayer.isUsingUltimate() else 1, EffectReeval.VISIBILITY_POSITION_AND_RADIUS)
    createEffect([eventPlayer.getScore() == eventPlayer.Nanoscore and eventPlayer.isAlive() and eventPlayer.RespawnDelay == 1], Effect.ANA_NANO_BOOSTED_SOUND, Color.TEAM_1, eventPlayer, 0 if eventPlayer.isUsingUltimate() else 100, EffectReeval.VISIBILITY_POSITION_AND_RADIUS)


rule "If score = 24, disable all except sleep dart, warn other players, display objective":
    @Event eachPlayer
    @Condition eventPlayer.getScore() == eventPlayer.Nanoscore
    
    eventPlayer.disallowButton(Button.PRIMARY_FIRE)
    eventPlayer.disallowButton(Button.SECONDARY_FIRE)
    eventPlayer.disallowButton(Button.MELEE)
    eventPlayer.disallowButton(Button.RELOAD)
    smallMessage(getAllPlayers().exclude(eventPlayer), "    {0}  {1} is 1 kill away from winning!".format(iconString(Icon.SKULL), eventPlayer))
    bigMessage(eventPlayer, "    {0} Sleep someone to win! {0}".format(iconString(Icon.WARNING)))


rule "When score = 24, nanoboost self continously":
    @Event playerEarnedElimination
    @Condition eventPlayer.getScore() == eventPlayer.Nanoscore
    
    wait(0.2)
    eventPlayer.setUltCharge(100)
    eventPlayer.forceButtonPress(Button.ULTIMATE)


rule "When score = 24 and died, nanoboost self again":
    @Event playerDied
    @Condition eventPlayer.getScore() == eventPlayer.Nanoscore
    @Condition eventPlayer.isUsingUltimate() == false
    
    wait(2.2, Wait.ABORT_WHEN_FALSE)
    eventPlayer.setUltCharge(100)
    eventPlayer.forceButtonPress(Button.ULTIMATE)


rule "DECLARE MAP LIST":
    MapList = [Map.EICHENWALDE, 565, Map.PETRA, Map.ECOPOINT_ANTARCTICA, Map.CHATEAU_GUILLARD, 3439, Map.MALEVENTO, Map.KANEZAKA, 2148]


rule "Warning HUD if current map is not in MAP LIST":
    @Condition __currentMap___ in MapList == false
    
    hudSubtext(getAllPlayers(), "{0} This map isn't enhanced by this mode yet".format(iconString(Icon.WARNING)), HudPosition.LEFT, 0, Color.ORANGE, HudReeval.VISIBILITY, SpecVisibility.DEFAULT)


rule "Game ending if current map is not in MAP LIST":
    @Event playerDealtDamage
    @Condition eventAbility == Button.ABILITY_1
    @Condition eventPlayer.getScore() == eventPlayer.Nanoscore
    @Condition (not __currentMap___ in MapList or __currentMap___ == Map.KANEZAKA or __currentMap___ == 2148) == true
    
    getAllPlayers().startCamera(raycast(victim, victim + vect(5, 5, 5), getAllPlayers(), null, true).getHitPosition(), victim, 5)
    eventPlayer.setAimSpeed(10)
    eventPlayer.setScore(25)
    enableGamemodeCompletion()
    declarePlayerVictory(eventPlayer)
    wait(1.5)
    playEffect(getAllPlayers(), DynamicEffect.DVA_SELF_DESTRUCT_EXPLOSION, Color.TEAM_1, victim, 1)
    playEffect(getAllPlayers(), DynamicEffect.DVA_SELF_DESTRUCT_EXPLOSION_SOUND, Color.TEAM_1, victim, 200)


rule "DAY create all effects":
    @Condition __currentMap___ == Map.EICHENWALDE
    
    createEffect(getAllPlayers(), Effect.SPHERE, Color.PURPLE, vect(47.05, 2.91, -75.46), 3.9, EffectReeval.VISIBILITY_POSITION_AND_RADIUS)
    createEffect(getAllPlayers(), Effect.SPHERE, Color.PURPLE, vect(60.91, 8.9, -58.98), 3.1, EffectReeval.VISIBILITY_POSITION_AND_RADIUS)
    createEffect(getAllPlayers(), Effect.SPHERE, Color.PURPLE, vect(67.98, 11.05, -104.86), 1.8, EffectReeval.VISIBILITY_POSITION_AND_RADIUS)
    createEffect(getAllPlayers(), Effect.SPHERE, Color.PURPLE, vect(97.15, 11.16, -77.68), 1.8, EffectReeval.VISIBILITY_POSITION_AND_RADIUS)
    createEffect(getAllPlayers(), Effect.GOOD_AURA, Color.YELLOW, vect(93, 19.92, -66.891), 0.5, EffectReeval.VISIBILITY_POSITION_AND_RADIUS)


rule "HALLOWEEN create all effects":
    @Condition __currentMap___ == 565
    
    createEffect(getAllPlayers(), Effect.SPHERE, Color.BLUE, vect(47.05, 2.91, -75.46), 3.9, EffectReeval.VISIBILITY_POSITION_AND_RADIUS)
    createEffect(getAllPlayers(), Effect.SPHERE, Color.BLUE, vect(60.91, 8.9, -58.98), 3.1, EffectReeval.VISIBILITY_POSITION_AND_RADIUS)
    createEffect(getAllPlayers(), Effect.SPHERE, Color.BLUE, vect(67.98, 11.05, -104.86), 1.8, EffectReeval.VISIBILITY_POSITION_AND_RADIUS)
    createEffect(getAllPlayers(), Effect.SPHERE, Color.BLUE, vect(97.15, 11.16, -77.68), 1.8, EffectReeval.VISIBILITY_POSITION_AND_RADIUS)
    createEffect(getAllPlayers(), Effect.GOOD_AURA, Color.YELLOW, vect(93, 19.92, -66.891), 0.5, EffectReeval.VISIBILITY_POSITION_AND_RADIUS)


rule "JUMP PAD main":
    @Event eachPlayer
    @Condition distance(eventPlayer, vect(47.05, 2.91, -75.46)) <= 3.9
    @Condition (__currentMap___ == Map.EICHENWALDE or __currentMap___ == 565) == true
    
    playEffect(getAllPlayers(), DynamicEffect.RING_EXPLOSION_SOUND, Color.WHITE, eventPlayer, 30)
    eventPlayer.applyImpulse(Vector.UP, 23.5, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)


rule "JUMP PAD staircase":
    @Event eachPlayer
    @Condition distance(eventPlayer, vect(60.91, 8.9, -58.98)) <= 3.1
    @Condition (__currentMap___ == Map.EICHENWALDE or __currentMap___ == 565) == true
    
    eventPlayer.applyImpulse(Vector.UP, 15, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)
    playEffect(getAllPlayers(), DynamicEffect.RING_EXPLOSION_SOUND, Color.WHITE, eventPlayer, 30)


rule "JUMP PAD overpa﻿ss":
    @Event eachPlayer
    @Condition distance(eventPlayer, vect(67.98, 11.05, -104.86)) <= 1.8
    @Condition (__currentMap___ == Map.EICHENWALDE or __currentMap___ == 565) == true
    
    eventPlayer.applyImpulse(Vector.UP, 17, Relativity.TO_PLAYER, Impulse.CANCEL_CONTRARY_MOTION)
    playEffect(getAllPlayers(), DynamicEffect.RING_EXPLOSION_SOUND, Color.WHITE, eventPlayer, 30)


rule "JUMP PAD castle":
    @Event eachPlayer
    @Condition distance(eventPlayer, vect(97.15, 11.16, -77.68)) <= 1.8
    @Condition (__currentMap___ == Map.EICHENWALDE or __currentMap___ == 565) == true
    
    eventPlayer.applyImpulse(Vector.UP, 12, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)
    playEffect(getAllPlayers(), DynamicEffect.RING_EXPLOSION_SOUND, Color.WHITE, eventPlayer, 30)


rule "LAUNCHER gates":
    @Event eachPlayer
    @Condition distance(eventPlayer, vect(93, 19.92, -66.891)) <= 1.5
    @Condition (__currentMap___ == Map.EICHENWALDE or __currentMap___ == 565) == true
    
    eventPlayer.applyImpulse(eventPlayer.getVelocity() * -1, sqrt(dotProduct(eventPlayer.getVelocity(), eventPlayer.getVelocity())), Relativity.TO_WORLD, Impulse.INCORPORATE_CONTRARY_MOTION)
    eventPlayer.applyImpulse(vect(-0.92, -0.153, -0.361), 100, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)
    eventPlayer.applyImpulse(Vector.UP, 20, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)
    eventPlayer.setStatusEffect(null, Status.ROOTED, 1.6)
    playEffect(getAllPlayers(), DynamicEffect.DEBUFF_IMPACT_SOUND, Color.WHITE, eventPlayer, 40)
    eventPlayer.D = 1.5
    chase(eventPlayer.D, 0, rate=1, ChaseReeval.DESTINATION_AND_RATE)


rule "LOCKED ZONE":
    @Event eachPlayer
    @Condition distance(eventPlayer, vect(36.01, 15.79, -79.28)) <= 4.4
    @Condition (__currentMap___ == Map.EICHENWALDE or __currentMap___ == 565) == true
    
    playEffect(eventPlayer, DynamicEffect.DEBUFF_IMPACT_SOUND, Color.WHITE, eventPlayer, 30)
    eventPlayer.applyImpulse(vectorTowards(eventPlayer, vect(58.779, 19.298, -77.287)), 10, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)
    eventPlayer.applyImpulse(Vector.UP, 1, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)
    smallMessage(eventPlayer, "    {0} Locked zone {0}".format(iconString(Icon.NO)))
    eventPlayer.setStatusEffect(null, Status.KNOCKED_DOWN, 0.016)
    wait(0.5)
    if RULE_CONDITION:
        goto RULE_START


rule "end cam":
    @Event playerDealtDamage
    @Condition eventAbility == Button.ABILITY_1
    @Condition eventPlayer.getScore() == eventPlayer.Nanoscore
    @Condition (__currentMap___ == Map.EICHENWALDE or __currentMap___ == 565) == true
    
    eventPlayer.setScore(25)
    getAllPlayers().setAimSpeed(10)
    getAllPlayers().setMoveSpeed(10)
    getDeadPlayers(Team.ALL).resurrect()
    getAllPlayers().applyImpulse(eventPlayer.getVelocity() * -1, 0.001, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION_XYZ)
    wait()
    getAllPlayers().applyImpulse(Vector.DOWN, 100000, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)
    getAllPlayers().disallowButton(Button.PRIMARY_FIRE)
    getAllPlayers().disallowButton(Button.SECONDARY_FIRE)
    getAllPlayers().disallowButton(Button.MELEE)
    getAllPlayers().disallowButton(Button.ABILITY_1)
    getAllPlayers().setStatusEffect(null, Status.ROOTED, 9999)
    victim.setStatusEffect(null, Status.ASLEEP, 9999)
    eventPlayer.teleport(vect(12.78, 9.71, -40.62))
    victim.teleport(vect(11.47, 9.71, -40.29))
    setSlowMotion(50)
    wait(0.1)
    eventPlayer.setFacing(directionTowards(eventPlayer, vect(9.53, 9.85, -39.86)), Relativity.TO_WORLD)
    victim.setFacing(directionTowards(eventPlayer, victim), Relativity.TO_WORLD)
    wait()
    getAllPlayers().startCamera(vect(9.53, 9.85, -39.86), eventPlayer, 0)
    wait()
    getAllPlayers().startCamera(vect(10.54, 11.51, -40.11), victim, 0.5)
    enableGamemodeCompletion()
    declarePlayerVictory(eventPlayer)


rule "create all effects":
    @Condition __currentMap___ == Map.PETRA
    
    createEffect(getAllPlayers(), Effect.SPHERE, Color.PURPLE, vect(2.051, -4.5, -19.133), 1.3, EffectReeval.VISIBILITY_POSITION_AND_RADIUS)
    createEffect(getAllPlayers(), Effect.SPHERE, Color.PURPLE, vect(1.91, -16.7, 46.1), 3.9, EffectReeval.VISIBILITY_POSITION_AND_RADIUS)
    createEffect(getAllPlayers(), Effect.SPHERE, Color.PURPLE, vect(-4.1, -11.48, 17.62), 2, EffectReeval.VISIBILITY_POSITION_AND_RADIUS)
    createEffect(getAllPlayers(), Effect.SPHERE, Color.PURPLE, vect(14.18, -1.6, 14.6), 1, EffectReeval.VISIBILITY_POSITION_AND_RADIUS)
    createEffect(getAllPlayers(), Effect.SPHERE, Color.PURPLE, vect(-15.33, -10.7, 30.07), 2, EffectReeval.VISIBILITY_POSITION_AND_RADIUS)
    createEffect(getAllPlayers(), Effect.SPHERE, Color.PURPLE, vect(-38.52, -15.72, 18.04), 3.5, EffectReeval.VISIBILITY_POSITION_AND_RADIUS)
    createEffect(getAllPlayers(), Effect.SPHERE, Color.PURPLE, vect(-18.84, -8, 52.38), 2, EffectReeval.VISIBILITY_POSITION_AND_RADIUS)


rule "JUMP PAD hole in ground":
    @Event eachPlayer
    @Condition distance(eventPlayer, vect(2.051, -4.5, -19.133)) <= 1.3
    @Condition __currentMap___ == Map.PETRA
    
    eventPlayer.applyImpulse(vectorTowards(eventPlayer, vect(1.998, 8, -13.868)), 13, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)
    playEffect(getAllPlayers(), DynamicEffect.RING_EXPLOSION_SOUND, Color.WHITE, eventPlayer, 30)


rule "JUMP PAD big boy":
    @Event eachPlayer
    @Condition distance(eventPlayer, vect(1.91, -16.7, 46.1)) <= 3.9
    @Condition __currentMap___ == Map.PETRA
    
    eventPlayer.applyImpulse(Vector.UP, 22.2, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)
    playEffect(getAllPlayers(), DynamicEffect.RING_EXPLOSION_SOUND, Color.WHITE, eventPlayer, 30)


rule "JUMP PAD mid":
    @Event eachPlayer
    @Condition distance(eventPlayer, vect(-4.1, -11.48, 17.62)) <= 2
    @Condition __currentMap___ == Map.PETRA
    
    eventPlayer.applyImpulse(Vector.UP, 19, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)
    playEffect(getAllPlayers(), DynamicEffect.RING_EXPLOSION_SOUND, Color.WHITE, eventPlayer, 30)


rule "JUMP PAD flying mid":
    @Event eachPlayer
    @Condition distance(eventPlayer, vect(14.18, -1.6, 14.6)) <= 2
    @Condition __currentMap___ == Map.PETRA
    
    eventPlayer.applyImpulse(Vector.UP, 16.5, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)
    playEffect(getAllPlayers(), DynamicEffect.RING_EXPLOSION_SOUND, Color.WHITE, eventPlayer, 30)


rule "JUMP PAD staircase":
    @Event eachPlayer
    @Condition distance(eventPlayer, vect(-15.33, -10.7, 30.07)) <= 2
    @Condition __currentMap___ == Map.PETRA
    
    eventPlayer.applyImpulse(Vector.UP, 19, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)
    playEffect(getAllPlayers(), DynamicEffect.RING_EXPLOSION_SOUND, Color.WHITE, eventPlayer, 30)


rule "JUMP PAD s﻿anctuary":
    @Event eachPlayer
    @Condition distance(eventPlayer, vect(-38.52, -15.72, 18.04)) <= 3.5
    @Condition __currentMap___ == Map.PETRA
    
    eventPlayer.applyImpulse(Vector.UP, 18.5, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)
    playEffect(getAllPlayers(), DynamicEffect.RING_EXPLOSION_SOUND, Color.WHITE, eventPlayer, 30)


rule "JUMP PAD rocks":
    @Event eachPlayer
    @Condition distance(eventPlayer, vect(-18.84, -8, 52.38)) <= 2
    @Condition __currentMap___ == Map.PETRA
    
    eventPlayer.applyImpulse(Vector.UP, 13, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)
    playEffect(getAllPlayers(), DynamicEffect.RING_EXPLOSION_SOUND, Color.WHITE, eventPlayer, 30)


rule "end cam":
    @Event playerDealtDamage
    @Condition eventAbility == Button.ABILITY_1
    @Condition eventPlayer.getScore() == eventPlayer.Nanoscore
    @Condition __currentMap___ == Map.PETRA
    
    eventPlayer.setScore(25)
    getAllPlayers().setStatusEffect(null, Status.INVINCIBLE, 9999)
    eventPlayer.setStatusEffect(null, Status.ROOTED, 1.5)
    getAllPlayers().startCamera(vect(33.32, -9.636, 43.515), vect(33.32, -10, 43.515), 0)
    eventPlayer.startForcingButton(Button.ABILITY_1)
    eventPlayer.applyImpulse(eventPlayer.getVelocity() * -1, sqrt(dotProduct(eventPlayer.getVelocity(), eventPlayer.getVelocity())), Relativity.TO_WORLD, Impulse.INCORPORATE_CONTRARY_MOTION)
    getDeadPlayers(Team.ALL).resurrect()
    getAllPlayers().teleport(vect(-35.036, -10.928, 11.688))
    victim.setStatusEffect(null, Status.STUNNED, 9999)
    getAllPlayers().disallowButton(Button.PRIMARY_FIRE)
    victim.teleport(vect(29.572, -9.674, 35.794))
    eventPlayer.teleport(vect(29.073, -9.681, 35.178))
    eventPlayer.startForcingHero(Hero.REINHARDT)
    victim.setFacing(vectorTowards(victim, vect(33.714, -9.555, 41.499)), Relativity.TO_WORLD)
    eventPlayer.setAimSpeed(10)
    eventPlayer.setMoveSpeed(50)
    wait()
    getAllPlayers().startCamera(vect(33.32, -9.636, 43.515), eventPlayer, 5)
    eventPlayer.setFacing(vectorTowards(eventPlayer, vect(33.714, -9.556, 41.499)), Relativity.TO_WORLD)
    setSlowMotion(25)
    enableGamemodeCompletion()
    declarePlayerVictory(eventPlayer)


rule "create all effects":
    @Condition __currentMap___ == Map.ECOPOINT_ANTARCTICA
    
    createEffect(getAllPlayers(), Effect.SPHERE, Color.PURPLE, vect(-6.1, 4.7, 17), 2.6, EffectReeval.VISIBILITY_POSITION_AND_RADIUS)
    createEffect(getAllPlayers(), Effect.SPHERE, Color.PURPLE, vect(-6.1, 4.7, -17), 2.6, EffectReeval.VISIBILITY_POSITION_AND_RADIUS)
    createEffect(getAllPlayers(), Effect.SPHERE, Color.PURPLE, vect(10.35, 2.18, 0), 2.3, EffectReeval.VISIBILITY_POSITION_AND_RADIUS)
    createEffect(getAllPlayers(), Effect.SPHERE, Color.PURPLE, vect(-15, 4.85, 0), 2.9, EffectReeval.VISIBILITY_POSITION_AND_RADIUS)
    createEffect(getAllPlayers(), Effect.BAD_AURA, Color.BLUE, vect(-5.35, 8, -54.66), 1.5, EffectReeval.VISIBILITY_POSITION_AND_RADIUS)
    createEffect(getAllPlayers(), Effect.SPARKLES, Color.LIME_GREEN, vect(-5.35, 8, -54.66), 1.5, EffectReeval.VISIBILITY_POSITION_AND_RADIUS)
    createEffect(getAllPlayers(), Effect.BEACON_SOUND, Color.BLUE, vect(-5.35, 8, -54.66), 100, EffectReeval.VISIBILITY_POSITION_AND_RADIUS)
    createEffect(getAllPlayers(), Effect.BAD_AURA, Color.BLUE, vect(-13.8, 8, 43.57), 1.5, EffectReeval.VISIBILITY_POSITION_AND_RADIUS)
    createEffect(getAllPlayers(), Effect.SPARKLES, Color.LIME_GREEN, vect(-13.8, 8, 43.57), 1.5, EffectReeval.VISIBILITY_POSITION_AND_RADIUS)
    createEffect(getAllPlayers(), Effect.BEACON_SOUND, Color.BLUE, vect(-13.8, 8, 43.57), 100, EffectReeval.VISIBILITY_POSITION_AND_RADIUS)
    createEffect(getAllPlayers(), Effect.BAD_AURA, Color.BLUE, vect(-25, 31.5, -11.36), 0.5, EffectReeval.VISIBILITY_POSITION_AND_RADIUS)
    createEffect(getAllPlayers(), Effect.BAD_AURA, Color.BLUE, vect(-25, 31.5, 16.5), 0.5, EffectReeval.VISIBILITY_POSITION_AND_RADIUS)


rule "JUMP PADS sides":
    @Event eachPlayer
    @Condition (distance(eventPlayer, vect(-6.1, 4.7, 17)) <= 2.6 or distance(eventPlayer, vect(-6.1, 4.7, -17)) <= 2.6) == true
    @Condition __currentMap___ == Map.ECOPOINT_ANTARCTICA
    
    eventPlayer.applyImpulse(Vector.UP, 16, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)
    playEffect(getAllPlayers(), DynamicEffect.RING_EXPLOSION_SOUND, Color.WHITE, eventPlayer, 25)


rule "JUMP PAD mid":
    @Event eachPlayer
    @Condition distance(eventPlayer, vect(10.35, 2.18, 0)) <= 2.3
    @Condition __currentMap___ == Map.ECOPOINT_ANTARCTICA
    
    eventPlayer.applyImpulse(Vector.UP, 15.5, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)
    playEffect(getAllPlayers(), DynamicEffect.RING_EXPLOSION_SOUND, Color.WHITE, eventPlayer, 30)


rule "JUMP PAD garage":
    @Event eachPlayer
    @Condition distance(eventPlayer, vect(-15, 4.85, 0)) <= 2.9
    @Condition __currentMap___ == Map.ECOPOINT_ANTARCTICA
    
    eventPlayer.applyImpulse(Vector.UP, 15, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)
    playEffect(getAllPlayers(), DynamicEffect.RING_EXPLOSION_SOUND, Color.WHITE, eventPlayer, 25)


rule "TELEPORTER 1":
    @Event eachPlayer
    @Condition distance(eventPlayer, vect(-7.78, 8, -57.05)) <= 4.8
    @Condition __currentMap___ == Map.ECOPOINT_ANTARCTICA
    
    playEffect(getAllPlayers(), DynamicEffect.EXPLOSION_SOUND, Color.WHITE, eventPlayer, 150)
    wait()
    eventPlayer.L = 1.5
    chase(eventPlayer.L, 0, rate=1, ChaseReeval.DESTINATION_AND_RATE)
    eventPlayer.A = eventPlayer.getFacingDirection().y
    eventPlayer.teleport(vect(-25, 31.5, -11.36))
    eventPlayer.setFacing(normalize(vect(5, eventPlayer.getPosition().y, -23) - eventPlayer.getPosition()) + vect(0, eventPlayer.A, 0), Relativity.TO_WORLD)
    eventPlayer.startAcceleration(Vector.UP, 20, 20, Relativity.TO_WORLD, AccelReeval.DIRECTION_RATE_AND_MAX_SPEED)
    eventPlayer.applyImpulse(vect(0, 0, 0), 2, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)
    eventPlayer.applyImpulse(Vector.DOWN, 3, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)
    wait(0.5)
    eventPlayer.stopAcceleration()


rule "TELEPORTER 2":
    @Event eachPlayer
    @Condition distance(eventPlayer, vect(-16.3, 8, 41)) <= 4.9
    @Condition __currentMap___ == Map.ECOPOINT_ANTARCTICA
    
    playEffect(getAllPlayers(), DynamicEffect.EXPLOSION_SOUND, Color.WHITE, eventPlayer, 150)
    wait()
    eventPlayer.L = 1.5
    chase(eventPlayer.L, 0, rate=1, ChaseReeval.DESTINATION_AND_RATE)
    eventPlayer.A = eventPlayer.getFacingDirection().y
    eventPlayer.teleport(vect(-25, 31.5, 16.5))
    eventPlayer.setFacing(normalize(vect(0, eventPlayer.getPosition().y, 28) - eventPlayer.getPosition()) + vect(0, eventPlayer.A, 0), Relativity.TO_WORLD)
    eventPlayer.startAcceleration(Vector.UP, 20, 20, Relativity.TO_WORLD, AccelReeval.DIRECTION_RATE_AND_MAX_SPEED)
    eventPlayer.applyImpulse(vect(0, 0, 0), 2, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)
    eventPlayer.applyImpulse(Vector.DOWN, 3, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)
    wait(0.5)
    eventPlayer.stopAcceleration()


rule "end cam":
    @Event playerDealtDamage
    @Condition eventAbility == Button.ABILITY_1
    @Condition eventPlayer.getScore() == eventPlayer.Nanoscore
    @Condition __currentMap___ == Map.ECOPOINT_ANTARCTICA
    
    kill(getAllPlayers(), null)
    wait()
    getDeadPlayers(Team.ALL).resurrect()
    getAllPlayers().disallowButton(Button.PRIMARY_FIRE)
    getAllPlayers().disallowButton(Button.SECONDARY_FIRE)
    getAllPlayers().disallowButton(Button.MELEE)
    getAllPlayers().disallowButton(Button.ABILITY_1)
    eventPlayer.setScore(25)
    getAllPlayers().setAimSpeed(10)
    getAllPlayers().setMoveSpeed(10)
    wait()
    eventPlayer.teleport(vect(-8.43, 7, -49.6))
    getAllPlayers().exclude(eventPlayer).teleport(vect(-13.25, 7, -52.77))
    wait(0.1)
    eventPlayer.setFacing(directionTowards(eventPlayer, vect(-13.25, 8, -52.77)), Relativity.TO_WORLD)
    victim.setFacing(directionTowards(victim, eventPlayer), Relativity.TO_WORLD)
    wait()
    getAllPlayers().exclude(eventPlayer).setStatusEffect(eventPlayer, Status.FROZEN, 9999)
    eventPlayer.setStatusEffect(null, Status.ROOTED, 9999)
    getAllPlayers().startCamera(vect(-9.58, 8.75, -47.75), vect(-9, 8.75, -51), 0)
    wait()
    getAllPlayers().startCamera(vect(-9.58, 8.75, -47.75), vect(-10.98, 8.4, -49.13), 0.5)
    enableGamemodeCompletion()


rule "DAY create all effects":
    @Condition __currentMap___ == Map.CHATEAU_GUILLARD
    
    createEffect(getAllPlayers(), Effect.SPHERE, Color.PURPLE, vect(229.49, 0.38, 83.1), 2.3, EffectReeval.VISIBILITY_POSITION_AND_RADIUS)
    createEffect(getAllPlayers(), Effect.SPHERE, Color.PURPLE, vect(187.32, -0.6, 69.5), 2, EffectReeval.VISIBILITY_POSITION_AND_RADIUS)
    createEffect(getAllPlayers(), Effect.SPHERE, Color.PURPLE, vect(218.55, 10.44, 47.06), 2, EffectReeval.VISIBILITY_POSITION_AND_RADIUS)


rule "HALLOWEEN create all effects":
    @Condition __currentMap___ == 3439
    
    createEffect(getAllPlayers(), Effect.SPHERE, Color.BLUE, vect(229.49, 0.38, 83.1), 2.3, EffectReeval.VISIBILITY_POSITION_AND_RADIUS)
    createEffect(getAllPlayers(), Effect.SPHERE, Color.BLUE, vect(187.32, -0.6, 69.5), 2, EffectReeval.VISIBILITY_POSITION_AND_RADIUS)
    createEffect(getAllPlayers(), Effect.SPHERE, Color.BLUE, vect(218.55, 10.44, 47.06), 2, EffectReeval.VISIBILITY_POSITION_AND_RADIUS)


rule "jump pads":
    @Event eachPlayer
    @Condition (distance(eventPlayer, vect(229.49, 0.38, 83.1)) <= 2.3 or distance(eventPlayer, vect(187.32, -0.6, 69.5)) <= 2 or distance(eventPlayer, vect(218.55, 10.44, 47.06)) <= 2) == true
    @Condition (__currentMap___ == Map.CHATEAU_GUILLARD or __currentMap___ == 3439) == true
    
    eventPlayer.applyImpulse(Vector.UP, 17.5, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)
    playEffect(getAllPlayers(), DynamicEffect.RING_EXPLOSION_SOUND, Color.WHITE, eventPlayer, 25)


rule "end cam":
    @Event playerDealtDamage
    @Condition eventAbility == Button.ABILITY_1
    @Condition eventPlayer.getScore() == eventPlayer.Nanoscore
    @Condition (__currentMap___ == Map.CHATEAU_GUILLARD or __currentMap___ == 3439) == true
    
    eventPlayer.setScore(25)
    getAllPlayers().setStatusEffect(null, Status.INVINCIBLE, 9999)
    eventPlayer.applyImpulse(eventPlayer.getVelocity() * -1, sqrt(dotProduct(eventPlayer.getVelocity(), eventPlayer.getVelocity())), Relativity.TO_WORLD, Impulse.INCORPORATE_CONTRARY_MOTION)
    getAllPlayers().startCamera(vect(196.587, 17.748, 55.701), vect(196.636, 17.748, 46.619), 0)
    getAllPlayers().disallowButton(Button.JUMP)
    getAllPlayers().disallowButton(Button.PRIMARY_FIRE)
    getDeadPlayers(Team.ALL).resurrect()
    getAllPlayers().teleport(vect(189.096, 9.252, 97.505))
    wait(0.02)
    eventPlayer.teleport(vect(196.636, 17.748, 46.619))
    victim.teleport(vect(196.642, 17.748, 47.68))
    eventPlayer.setAimSpeed(10)
    eventPlayer.setMoveSpeed(10)
    victim.setFacing(Vector.UP, Relativity.TO_WORLD)
    eventPlayer.setFacing(vectorTowards(eventPlayer.getEyePosition(), vect(196.555, 17.748, 51.982)), Relativity.TO_WORLD)
    victim.setStatusEffect(null, Status.KNOCKED_DOWN, 9999)
    getAllPlayers().startCamera(vect(196.496, 17.748, 47.437), vect(196.485, 17.748, 46.288), 0.7)
    wait(0.5)
    declarePlayerVictory(eventPlayer)


rule "endcam tbag":
    @Event eachPlayer
    @Condition eventPlayer.getScore() > eventPlayer.Nanoscore
    @Condition (__currentMap___ == Map.CHATEAU_GUILLARD or __currentMap___ == 3439) == true
    
    eventPlayer.allowButton(Button.CROUCH)
    eventPlayer.startForcingButton(Button.CROUCH)
    wait(0.3)
    eventPlayer.disallowButton(Button.CROUCH)
    wait(0.3)
    goto RULE_START


rule "Create all effects":
    @Condition __currentMap___ == Map.MALEVENTO
    
    createEffect(getAllPlayers(), Effect.SPHERE, Color.PURPLE, vect(-29.65, -4.57, -8), 2, EffectReeval.VISIBILITY_POSITION_AND_RADIUS)
    createEffect(getAllPlayers(), Effect.SPHERE, Color.PURPLE, vect(0, -2.62, -7.23), 2, EffectReeval.VISIBILITY_POSITION_AND_RADIUS)
    createEffect(getAllPlayers(), Effect.SPHERE, Color.PURPLE, vect(11.72, 0, 9.65), 3.7, EffectReeval.VISIBILITY_POSITION_AND_RADIUS)
    createEffect(getAllPlayers(), Effect.SPHERE, Color.PURPLE, vect(0, -1.78, 34.06), 4, EffectReeval.VISIBILITY_POSITION_AND_RADIUS)


rule "JUMP PAD bridge":
    @Event eachPlayer
    @Condition distance(eventPlayer, vect(-29.65, -4.57, -8)) <= 2
    @Condition __currentMap___ == Map.MALEVENTO
    
    eventPlayer.applyImpulse(Vector.UP, 17, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)
    playEffect(getAllPlayers(), DynamicEffect.RING_EXPLOSION_SOUND, Color.WHITE, eventPlayer, 30)


rule "JUMP PAD woman statue":
    @Event eachPlayer
    @Condition distance(eventPlayer, vect(0, -2.62, -7.23)) <= 2
    @Condition __currentMap___ == Map.MALEVENTO
    
    eventPlayer.applyImpulse(Vector.UP, 20.9, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)
    playEffect(getAllPlayers(), DynamicEffect.RING_EXPLOSION_SOUND, Color.WHITE, eventPlayer, 30)


rule "JUMP PAD big boy":
    @Event eachPlayer
    @Condition distance(eventPlayer, vect(11.72, 0, 9.65)) <= 3.7
    @Condition __currentMap___ == Map.MALEVENTO
    
    eventPlayer.applyImpulse(Vector.UP, 15, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)
    playEffect(getAllPlayers(), DynamicEffect.RING_EXPLOSION_SOUND, Color.WHITE, eventPlayer, 30)


rule "JUMP PAD over green pad":
    @Event eachPlayer
    @Condition distance(eventPlayer, vect(0, -1.78, 34.06)) <= 4.1
    @Condition __currentMap___ == Map.MALEVENTO
    
    eventPlayer.applyImpulse(Vector.UP, 26, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)
    playEffect(getAllPlayers(), DynamicEffect.RING_EXPLOSION_SOUND, Color.WHITE, eventPlayer, 30)


rule "end cam":
    @Event playerDealtDamage
    @Condition eventAbility == Button.ABILITY_1
    @Condition eventPlayer.getScore() == eventPlayer.Nanoscore
    @Condition __currentMap___ == Map.MALEVENTO
    
    eventPlayer.setScore(25)
    getAllPlayers().setAimSpeed(10)
    getAllPlayers().setMoveSpeed(10)
    getDeadPlayers(Team.ALL).resurrect()
    getAllPlayers().applyImpulse(eventPlayer.getVelocity() * -1, 0.001, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION_XYZ)
    wait()
    getAllPlayers().applyImpulse(Vector.DOWN, 100000, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)
    getAllPlayers().disallowButton(Button.PRIMARY_FIRE)
    getAllPlayers().disallowButton(Button.SECONDARY_FIRE)
    getAllPlayers().disallowButton(Button.MELEE)
    getAllPlayers().disallowButton(Button.ABILITY_1)
    getAllPlayers().exclude([eventPlayer, victim]).setStatusEffect(null, Status.ASLEEP, 9999)
    eventPlayer.setStatusEffect(null, Status.ROOTED, 9999)
    eventPlayer.teleport(vect(0, 10.25, 26.75))
    eventPlayer.setFacing(directionTowards(eventPlayer, vect(0, 9, 27.2)), Relativity.TO_WORLD)
    getAllPlayers().exclude(eventPlayer).teleport(vect(0, 6.5, 29))
    enableGamemodeCompletion()
    wait(0.1)
    getAllPlayers().startCamera(vect(0, 12, 29), eventPlayer.getEyePosition(), 0)
    wait(0.7)
    getAllPlayers().startCamera(vect(0, 12, 32), vect(0, 8.5, 27.2), 75)


rule "Create all effects":
    @Condition __currentMap___ == Map.KANEZAKA
    
    createEffect(getAllPlayers(), Effect.SPHERE, Color.PURPLE, vect(-26.7, 4, 26.5), 2, EffectReeval.VISIBILITY_POSITION_AND_RADIUS)
    createEffect(getAllPlayers(), Effect.SPHERE, Color.PURPLE, vect(-20.9, 5.2, -35.3), 2, EffectReeval.VISIBILITY_POSITION_AND_RADIUS)
    createEffect(getAllPlayers(), Effect.SPHERE, Color.PURPLE, vect(-15.5, 4.16, -13.3), 2, EffectReeval.VISIBILITY_POSITION_AND_RADIUS)
    createEffect(getAllPlayers(), Effect.SPHERE, Color.PURPLE, vect(-17, 4, 6), 2, EffectReeval.VISIBILITY_POSITION_AND_RADIUS)
    createEffect(getAllPlayers(), Effect.SPHERE, Color.PURPLE, vect(-33, 4, 13.72), 1.96, EffectReeval.VISIBILITY_POSITION_AND_RADIUS)


rule "JUMP PAD overpa﻿ss":
    @Event eachPlayer
    @Condition distance(eventPlayer, vect(-26.7, 4, 27)) <= 2
    @Condition __currentMap___ == Map.KANEZAKA
    
    eventPlayer.applyImpulse(Vector.UP, 15, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)
    playEffect(getAllPlayers(), DynamicEffect.RING_EXPLOSION_SOUND, Color.WHITE, eventPlayer, 30)


rule "JUMP PAD castle entrance":
    @Event eachPlayer
    @Condition distance(eventPlayer, vect(-20.9, 5.2, -35.3)) <= 2
    @Condition __currentMap___ == Map.KANEZAKA
    
    eventPlayer.applyImpulse(Vector.UP, 12, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)
    playEffect(getAllPlayers(), DynamicEffect.RING_EXPLOSION_SOUND, Color.WHITE, eventPlayer, 30)


rule "JUMP PAD mid corridor":
    @Event eachPlayer
    @Condition distance(eventPlayer, vect(-15.5, 4.16, -13.3)) <= 2
    @Condition __currentMap___ == Map.KANEZAKA
    
    eventPlayer.applyImpulse(Vector.UP, 14, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)
    playEffect(getAllPlayers(), DynamicEffect.RING_EXPLOSION_SOUND, Color.WHITE, eventPlayer, 30)


rule "JUMP PAD Vending machines":
    @Event eachPlayer
    @Condition distance(eventPlayer, vect(-17, 4, 6)) <= 2
    @Condition __currentMap___ == Map.KANEZAKA
    
    eventPlayer.applyImpulse(Vector.UP, 14, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)
    playEffect(getAllPlayers(), DynamicEffect.RING_EXPLOSION_SOUND, Color.WHITE, eventPlayer, 30)


rule "JUMP PAD platforms":
    @Event eachPlayer
    @Condition distance(eventPlayer, vect(-33, 4, 13.72)) <= 1.96
    @Condition __currentMap___ == Map.KANEZAKA
    
    eventPlayer.applyImpulse(Vector.UP, 12, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)
    playEffect(getAllPlayers(), DynamicEffect.RING_EXPLOSION_SOUND, Color.WHITE, eventPlayer, 30)


rule "Create all effects":
    @Condition __currentMap___ == 2148
    
    createEffect(getAllPlayers(), Effect.BAD_AURA, Color.ROSE, vect(-32, 13, 8), 1.3, EffectReeval.VISIBILITY_POSITION_AND_RADIUS)
    createEffect(getAllPlayers(), Effect.SPARKLES, Color.PURPLE, vect(-32, 13, 8), 1.3, EffectReeval.VISIBILITY_POSITION_AND_RADIUS)
    createEffect(getAllPlayers(), Effect.BEACON_SOUND, Color.BLUE, vect(-32, 13, 8), 100, EffectReeval.VISIBILITY_POSITION_AND_RADIUS)
    createEffect(getAllPlayers(), Effect.SPHERE, Color.PURPLE, vect(4.6, 10, 5), 2.8, EffectReeval.VISIBILITY_POSITION_AND_RADIUS)
    createEffect(getAllPlayers(), Effect.SPHERE, Color.PURPLE, vect(0, 10.82, 24.24), 2, EffectReeval.VISIBILITY_POSITION_AND_RADIUS)
    createEffect(getAllPlayers(), Effect.SPHERE, Color.PURPLE, vect(0, 10.84, -14.87), 2, EffectReeval.VISIBILITY_POSITION_AND_RADIUS)
    createEffect(getAllPlayers(), Effect.SPHERE, Color.PURPLE, vect(-20.55, 11.4, -11), 2, EffectReeval.VISIBILITY_POSITION_AND_RADIUS)
    createEffect(getAllPlayers(), Effect.SPHERE, Color.PURPLE, vect(-20.55, 11.4, 22), 2, EffectReeval.VISIBILITY_POSITION_AND_RADIUS)
    createEffect(getAllPlayers(), Effect.SPHERE, Color.PURPLE, vect(21.4, 9.5, -8.7), 2, EffectReeval.VISIBILITY_POSITION_AND_RADIUS)
    createEffect(getAllPlayers(), Effect.SPHERE, Color.PURPLE, vect(21.4, 9.6, 19.16), 2, EffectReeval.VISIBILITY_POSITION_AND_RADIUS)


rule "JUMP PAD mill":
    @Event eachPlayer
    @Condition distance(eventPlayer, vect(4.6, 10, 5)) <= 2.8
    @Condition __currentMap___ == 2148
    
    eventPlayer.applyImpulse(Vector.UP, 15, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)
    playEffect(getAllPlayers(), DynamicEffect.RING_EXPLOSION_SOUND, Color.WHITE, eventPlayer, 30)


rule "JUMP PAD Mansions (2)":
    @Event eachPlayer
    @Condition (distance(eventPlayer, vect(0, 10.82, 24.24)) <= 2 or distance(eventPlayer, vect(0, 10.84, -14.87)) <= 2) == true
    @Condition __currentMap___ == 2148
    
    eventPlayer.applyImpulse(Vector.UP, 15, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)
    playEffect(getAllPlayers(), DynamicEffect.RING_EXPLOSION_SOUND, Color.WHITE, eventPlayer, 30)


rule "JUMP PADS mid (2)":
    @Event eachPlayer
    @Condition (distance(eventPlayer, vect(-20.55, 11.4, -11)) <= 2 or distance(eventPlayer, vect(-20.55, 11.4, 22)) <= 2) == true
    @Condition __currentMap___ == 2148
    
    eventPlayer.applyImpulse(Vector.UP, 15, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)
    playEffect(getAllPlayers(), DynamicEffect.RING_EXPLOSION_SOUND, Color.WHITE, eventPlayer, 30)


rule "JUMP PADS overpa﻿sses (2)":
    @Event eachPlayer
    @Condition (distance(eventPlayer, vect(21.4, 9.5, -8.7)) <= 2 or distance(eventPlayer, vect(21.4, 9.6, 19.16)) <= 2) == true
    @Condition __currentMap___ == 2148
    
    eventPlayer.applyImpulse(Vector.UP, 15, Relativity.TO_WORLD, Impulse.CANCEL_CONTRARY_MOTION)
    playEffect(getAllPlayers(), DynamicEffect.RING_EXPLOSION_SOUND, Color.WHITE, eventPlayer, 30)


rule "TELEPORTER":
    @Event eachPlayer
    @Condition distance(eventPlayer, vect(-32, 13, 8)) <= 2
    @Condition __currentMap___ == 2148
    
    playEffect(getAllPlayers(), DynamicEffect.EXPLOSION_SOUND, Color.WHITE, eventPlayer, 100)
    playEffect(getAllPlayers().exclude(eventPlayer), DynamicEffect.EXPLOSION_SOUND, Color.WHITE, vect(-32, 13, 8), 30)
    wait()
    eventPlayer.L = 1.5
    chase(eventPlayer.L, 0, rate=1, ChaseReeval.DESTINATION_AND_RATE)
    eventPlayer.A = eventPlayer.getFacingDirection().y
    eventPlayer.teleport(vect(29, 11, 5))
    eventPlayer.setFacing(normalize(vect(0, eventPlayer.getPosition().y, 0) - eventPlayer.getPosition()) + vect(0, eventPlayer.A, 0), Relativity.TO_WORLD)
    wait(0.75)
    eventPlayer.stopAcceleration()


