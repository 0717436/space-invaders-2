# Project Overview

this game is heavily inspired by Space Invaders. the theme of the game is a classic alien vs spacecraft

the space craft is a blue spacecraft with simalar looks to the original space invaders. the aliens are a red one-eyed alien that has similar looks to the "Doom" cacodemon. with a space background

![Blue Spaceship](Images/SpaceShip.png)

blue Space Craft

![Alien](Images/alienHeads.png)

Alien
## New Gameplay

### Level System
A level system will be implemented inside of the game. there will be 100 levels with enemies getting harder to defeat. when the player defeats level 100 the player will be greeted with a win scene. if the player loses to a level the player will be directed to a lose screen and have to restart the entire game.
### Boss Battles
There will be a boss battle every 10 levels. Each boss battle will be unique and use different weapons against the player.
### In game currency 
After the player complete a game session, the player will earn points. the amount of points depends on the amount of enemies defeated and levels passed.
### New Weapons and Weapon Shop
There will be a shop button on the main menu. it leads to a menu of different weapons which can be bought with points. when the player starts the game they will be equipped with the generic laser. then will be able to buy weapons like rocket launchers (shoots explosion and takes out enemies), bomb (like rocket launcher but slower and more impactful), speed lasers (shoots faster then generic laser), shotgun laser (shoot out laser in burst), and an AK-47 (Insta-kills anything)
### Emeny Types
There will be different types of enemies in the main game. each with their different abilities. one of them will have higher speed than usual but have less health. another alien will be slower but bigger health.
### Enemy Health

# Behaviour - User Journey

```mermaid
journey
title Full Game Experience
    section Menu
        Press Start: 5
    section Start Game
        Level starts:5
        Shoot enemies:5
        Level Ends:5
        Repeat:5
    section Lose
        Game Over Screen:5
        Shop Menu:5
        Back To Start:5
    section Quit
        Close Game:5
```
# Planning Diagram

```mermaid
gantt
    title Space Invaders Plan
dateFormat DD-MM-YY
axisFormat %d-%B
tickInterval 1week

section Design
Project Overview: 24-04-23, 26-04-23
Project Plan: 24-04-23, 27-04-23
Behaviours: 29-04-23, 1d
Programming Logic: 30-04-23, 1d 

section Implementation
Ui: 30-04-23, 04-05-23
Level system: 04-05-23, 11-05-23
Enemy types: 11-05-23, 18-05-23
Shop Menu: 18-05-23, 25-05-23
Boss Battles: 25-05-23, 7d

section testing
Playtesing: 30-04-23, 07-06-23

section sumbit
Sumbit: 07-06-23, 1d
```
