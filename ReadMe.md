# Football Club Management Database

## Problem Statement

The system manages football clubs, addressing the need for efficient tracking of clubs,
players, coaches, matches, and trophies. Managing these aspects manually becomes 
overwhelming as the data grows, especially for league organizers, club administrators,
and analysts. The database provides a structured and scalable solution for storing and
retrieving information related to:

- **Clubs**: Details about football clubs including their stadiums and establishment years.
- **Players**: Player information such as name, position, nationality, and club association.
- **Coaches**: Records of coaches and their assigned clubs.
- **Matches**: Information on matches played between clubs, including scores and stadiums.
- **Trophies**: Details of trophies won by the clubs, such as the year and competition name.

##Connecting to database
![Screenshot of connecting to database](images/connection.png)

##Conceptual Diagram
![Screenshot of conceptual diagram](images/conceptualdiagramscreenshot.png)
![Image of conceptual diagram from sql developer](images/Club_Management%20Model.png)

## SQL Commands Executed

The SQL commands executed in this project include creating tables for managing football clubs, 
inserting data for clubs, players, coaches, matches, and trophies, and performing various 
operations like updating and deleting records. Key SQL operations used in this project:

- **DDL (Data Definition Language)**: Creating tables such as `Clubs`, `Players`, `Coaches`, `Matches`, and `Trophies`.
- **DML (Data Manipulation Language)**: Inserting, updating, and deleting records in the tables.
- **DCL (Data Control Language)**: Granting privileges to users.
- **TCL (Transaction Control Language)**: Managing transactions to ensure data integrity.

### Example SQL Commands

-- Creating tables
![Screenshot of creating table coaches](images/createcoaches.png)
![Screenshot of creating table players](images/createplayers.png)

--Inserting Data into tables
--Table Clubs
![Screenshot of inserting into table clubs](images/insertintoclubs.png)
![Screenshot after inserting into table clubs](images/clubsdata.png)
--Table Players
![Screenshot of inserting into table players](images/insertintoplayers.png)
![Screenshot after inserting into table players](images/playerssdata.png)

--DML operations on table players
![Screenshot of inserting new player](images/insertnewplayer.png)
![Screenshot after updating existing player](images/updateplayer.png)
![Screenshot of deleting existing player](images/deleteplayer.png)
![Screenshot of player data after dml operations](images/newplayersdata.png)

--Performing Inner Join to get players first name,last name and club name
![Screenshot after Inner Join](images/innerjoin.png)

--performing outer join to get clubs and their coaches including clubs with no coaches
![Screenshot after Outer Join](images/leftjoin.png)
![Screenshot after Outer Join](images/leftjoin2.png)

[def]: images/Club_ManagementModel.png