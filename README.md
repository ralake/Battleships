#Battle Ships#


For our second week at Makers, we have been asked to design a game called Battle Ships modulated on the board game, where there are two players and each player takes turns in trying to sink the opponent ships.
The winner is the player who sinks all of the opponent's ships. 


We are **_Team D_** and our members include:

- Shan Hasan
- Giorgia Amici
- Richard Lake
- Edward Byne
- Dale Stevens

==========================

Skills involved:
- Agile Method
- Ruby
- rspec


=========

##CRC Cards##

                                          Cell  

**Responsibility**                     
- Has coordinates                  
- Knows if its empty              
- Knows if it is full             
- Knows if its hit       
- Knows if not hit
- Can't be hit twice

========================

**Collaborators**
- Player
- Ship
- Board


========================


                                           Primary Board  

**Responsibility**        
- Is a fixed size       
- Is initiated empty   
- Will accept ships     

=========================

**Collaborators**
- Cell
- Board
- Player

====================================


                                           Tracking Board  
**Responsibility** 

- Is a fixed size 
- Is initiated empty 
- Will mark cells 

==============================================
**Collaborators**
- Cell
- Primary Board
- Player

===============================================

          
                                                 Ship  

**Responsibility**        
- It has a set size         
- Can be hit            
- Sinks when full hit    

=======================================
**Collaborators**
- Cell
- Board
- Player

===========================================

                                         
                                              Player  

**Responsibility**                  
- Set number of ships                
- Places ships on primary grid      
- Fires shots at tracking grid     
- Can win or loose                
- Takes turns to fire



=================================================
**Collaborators**
- Ship
- Board
- Cell


==========================================
