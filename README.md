Battleships
===========
[![Code Climate](https://codeclimate.com/github/ralake/Battleships/badges/gpa.svg)](https://codeclimate.com/github/ralake/Battleships)

Makers Academy Week 2 Exercise

Brief
-----
Create a version of the classic Battleships game in Ruby. This was done as a team of four consistently swapping pair partners. Battleships is a **game** of two **players** who each have a **board** onto which they can place 5 different **ships**. The board is constructed of a grid containing one hundred **cells** which in turn 'contain' **water**. The players take turns to fire at their enemies board until the winner has sunk the last of the losers ships.

Our team broke this out into six classes...
 
1. Player
---------

| Responsibilities | Collaborators |
-------------------|---------------|
| Can place a ship on the board | Board |
| Can fire at a co-ordinate on the board | Cell |
| Can win or lose | Ship |
| Waits there turn to fire |

2. Game
--------

| Responsibilities | Collaborators |
-------------------|---------------|
| Can have two players | Player |
| Can have ships | Ship |
| Knows whose turn it is | Board |
| Can switch turns | |
| Knows when the game is ready to play | |
| Knows when a player has won or lost | |


3. Board
--------

| Responsibilities | Collaborators |
-------------------|---------------|
| Has a fixed size | Cell |  
| Is initialized empty | Player |
| Allows ships to be placed | Ships |
| marks cells as hit when they are fired upon | |    

4. Cell
-------

| Responsibilities | Collaborators |
-------------------|--------------
| Knows its contents | Player |          
| Knows if it has been hit | Ship |
| | Board |


5. Ship
-------

| Responsibilities | Collaborators |
-------------------|---------------|
| Can vary in size | Cell |
| Can be hit | Board |
| Can be sunk | Player |

6. Water
--------

| Responsibilities | Collaborators |
-------------------|---------------|
| Can be hit | Cell |
| Knows if it has been hit | |

Skills Learned
--------------
This was a great challenge for getting to grips with Ruby's array and hash methods and implementing more complex logic into my programs. The board class was conceptually challenging to code and was initially quite large and messy. Refactoring it was really straight forward as the tests were in place to check that each change was not damaging the program.

How to use
----------
```shell
irb
require './lib/battleships'
```



