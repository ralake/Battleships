Battleships
===========
[![Code Climate](https://codeclimate.com/github/ralake/Battleships/badges/gpa.svg)](https://codeclimate.com/github/ralake/Battleships)

Makers Academy Week 2 Exercise
 
Player
------

| Responsibilities | Collaborators |
-------------------|---------------|
| Can place a ship on the board | Board |
| Can fire at a co-ordinate on the board | Cell |
| Can win or lose | Ship |
| Waits there turn to fire |

Game
-----

| Responsibilities | Collaborators |
-------------------|---------------|
| Can have two players | Player |
| Can have ships | Ship |
| Knows whose turn it is | Board |
| Can switch turns | |
| Knows when the game is ready to play | |
| Knows when a player has won or lost | |


Board
-----

| Responsibilities | Collaborators |
-------------------|---------------|
| Is a fixed size | Cell |  
| Is initiated empty | Player |
| Allows ships to be placed | Ships |
| marks cells as hit | |    

Cell
----

| Responsibilities | Collaborators |
-------------------|--------------
| Knows its contents | Player |          
| Knows if it has been hit | Ship |
| | Board |


Ship
----

| Responsibilities | Collaborators |
-------------------|---------------|
| Can vary in size | Cell |
| Can be hit | Board |
| Can be sunk | Player |

Water
-----

| Responsibilities | Collaborators |
-------------------|---------------|
| Can be hit | Cell |
| Knows if it has been hit | |



