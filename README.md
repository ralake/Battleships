Battleships
===========
[![Code Climate](https://codeclimate.com/github/ralake/Battleships/badges/gpa.svg)](https://codeclimate.com/github/ralake/Battleships)

Makers Academy Week 2 Exercise



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
