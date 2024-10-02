--I executed different queries into my club management system below are all the queries executed
--DDL Operations
--Query to create table clubs
CREATE TABLE Clubs (
    ClubID INT PRIMARY KEY, 
    ClubName VARCHAR(100) NOT NULL,
    EstablishedYear NUMBER(4) NOT NULL,
    Stadium VARCHAR(100),
    Country VARCHAR(50)
);

--query to create table players
CREATE TABLE Players (
    PlayerID NUMBER PRIMARY KEY,
    FirstName VARCHAR2(50) NOT NULL,
    LastName VARCHAR2(50) NOT NULL,
    Position VARCHAR2(20),
    DateOfBirth DATE,
    Nationality VARCHAR2(50),
    ClubID NUMBER,
    FOREIGN KEY (ClubID) REFERENCES Clubs(ClubID) ON DELETE SET NULL 
    --I used on delete set null so that when a club is deleted the player clubid is set to null as there can be players with no clubs
);

--query to create table coaches
CREATE TABLE Coaches (
    CoachID NUMBER PRIMARY KEY,
    FirstName VARCHAR2(50) NOT NULL,
    LastName VARCHAR2(50) NOT NULL,
    Nationality VARCHAR2(50),
    DateOfBirth DATE,
    HireDate DATE,
    ClubID NUMBER,
    FOREIGN KEY (ClubID) REFERENCES Clubs(ClubID) ON DELETE SET NULL
);

--query to create table matches
CREATE TABLE Matches (
    MatchID NUMBER PRIMARY KEY,
    HomeClubID NUMBER,
    AwayClubID NUMBER,
    MatchDate DATE,
    Stadium VARCHAR(100),
    HomeGoals NUMBER,
    AwayGoals NUMBER,
    FOREIGN KEY (HomeClubID) REFERENCES Clubs(ClubID) ON DELETE CASCADE,
    FOREIGN KEY (AwayClubID) REFERENCES Clubs(ClubID) ON DELETE CASCADE
    --I used on delete cascade because no match can be played with one team that way when one team is deleted the match is also deleted
);
--query to create table trophies
CREATE TABLE Trophies (
    TrophyID NUMBER PRIMARY KEY,
    TrophyName VARCHAR(100) NOT NULL,
    YearWon NUMBER(4) NOT NULL,
    ClubID NUMBER,
    FOREIGN KEY (ClubID) REFERENCES Clubs(ClubID) ON DELETE CASCADE
);
--DML OPerations
--Insert Data
--Insert Data into clubs table
INSERT ALL
    INTO Clubs (ClubID, ClubName, EstablishedYear, Stadium, Country) VALUES (1, 'Arsenal', 1886, 'Emirates Stadium', 'England')
    INTO Clubs (ClubID, ClubName, EstablishedYear, Stadium, Country) VALUES (2, 'Chelsea', 1905, 'Stamford Bridge', 'England')
    INTO Clubs (ClubID, ClubName, EstablishedYear, Stadium, Country) VALUES (3, 'Liverpool', 1892, 'Anfield', 'England')
    INTO Clubs (ClubID, ClubName, EstablishedYear, Stadium, Country) VALUES (4, 'Tottenham', 1882, 'Tottenham Hotspur Stadium', 'England')
    INTO Clubs (ClubID, ClubName, EstablishedYear, Stadium, Country) VALUES (5, 'Manchester City', 1880, 'Etihad Stadium', 'England')
    INTO Clubs (ClubID, ClubName, EstablishedYear, Stadium, Country) VALUES (6, 'Manchester United', 1878, 'Old Trafford', 'England')
SELECT * FROM dual;

--Insert Data into Players Table
INSERT ALL
    INTO Players (PlayerID, FirstName, LastName, Position, DateOfBirth, Nationality, ClubID) VALUES (1, 'Bukayo', 'Saka', 'Winger', TO_DATE('2001-09-05', 'YYYY-MM-DD'), 'England', 1)
    INTO Players (PlayerID, FirstName, LastName, Position, DateOfBirth, Nationality, ClubID) VALUES (2, 'Kai', 'Havertz', 'Midfielder', TO_DATE('1999-06-11', 'YYYY-MM-DD'), 'Germany', 2)
    INTO Players (PlayerID, FirstName, LastName, Position, DateOfBirth, Nationality, ClubID) VALUES (3, 'Mohamed', 'Salah', 'Forward', TO_DATE('1992-06-15', 'YYYY-MM-DD'), 'Egypt', 3)
    INTO Players (PlayerID, FirstName, LastName, Position, DateOfBirth, Nationality, ClubID) VALUES (4, 'Harry', 'Kane', 'Striker', TO_DATE('1993-07-28', 'YYYY-MM-DD'), 'England', 4)
    INTO Players (PlayerID, FirstName, LastName, Position, DateOfBirth, Nationality, ClubID) VALUES (5, 'Kevin', 'De Bruyne', 'Midfielder', TO_DATE('1991-06-28', 'YYYY-MM-DD'), 'Belgium', 5)
    INTO Players (PlayerID, FirstName, LastName, Position, DateOfBirth, Nationality, ClubID) VALUES (6, 'Marcus', 'Rashford', 'Forward', TO_DATE('1997-10-31', 'YYYY-MM-DD'), 'England', 6)
SELECT * FROM dual;

--Insert Data into Coaches Table
INSERT ALL
    INTO Coaches (CoachID, FirstName, LastName, Nationality, DateOfBirth, HireDate, ClubID) VALUES (1, 'Mikel', 'Arteta', 'Spain', TO_DATE('1982-03-26', 'YYYY-MM-DD'), TO_DATE('2019-12-20', 'YYYY-MM-DD'), 1)
    INTO Coaches (CoachID, FirstName, LastName, Nationality, DateOfBirth, HireDate, ClubID) VALUES (2, 'Mauricio', 'Pochettino', 'Argentina', TO_DATE('1972-03-02', 'YYYY-MM-DD'), TO_DATE('2023-07-01', 'YYYY-MM-DD'), 2)
    INTO Coaches (CoachID, FirstName, LastName, Nationality, DateOfBirth, HireDate, ClubID) VALUES (3, 'Jürgen', 'Klopp', 'Germany', TO_DATE('1967-06-16', 'YYYY-MM-DD'), TO_DATE('2015-10-08', 'YYYY-MM-DD'), 3)
    INTO Coaches (CoachID, FirstName, LastName, Nationality, DateOfBirth, HireDate, ClubID) VALUES (4, 'Angelos', 'Postecoglou', 'Australia', TO_DATE('1966-08-27', 'YYYY-MM-DD'), TO_DATE('2021-06-30', 'YYYY-MM-DD'), 4)
    INTO Coaches (CoachID, FirstName, LastName, Nationality, DateOfBirth, HireDate, ClubID) VALUES (5, 'Pep', 'Guardiola', 'Spain', TO_DATE('1971-01-18', 'YYYY-MM-DD'), TO_DATE('2016-02-01', 'YYYY-MM-DD'), 5)
    INTO Coaches (CoachID, FirstName, LastName, Nationality, DateOfBirth, HireDate, ClubID) VALUES (6, 'Erik', 'Ten Hag', 'Netherlands', TO_DATE('1970-02-02', 'YYYY-MM-DD'), TO_DATE('2022-04-21', 'YYYY-MM-DD'), 6)
SELECT * FROM dual;

--Insert Data into Matches Table
INSERT ALL
    INTO Matches (MatchID, HomeClubID, AwayClubID, MatchDate, Stadium, HomeGoals, AwayGoals) VALUES (1, 1, 2, TO_DATE('2023-08-13', 'YYYY-MM-DD'), 'Emirates Stadium', 2, 1)
    INTO Matches (MatchID, HomeClubID, AwayClubID, MatchDate, Stadium, HomeGoals, AwayGoals) VALUES (2, 3, 4, TO_DATE('2023-08-14', 'YYYY-MM-DD'), 'Anfield', 3, 2)
    INTO Matches (MatchID, HomeClubID, AwayClubID, MatchDate, Stadium, HomeGoals, AwayGoals) VALUES (3, 5, 6, TO_DATE('2023-08-15', 'YYYY-MM-DD'), 'Etihad Stadium', 1, 1)
    INTO Matches (MatchID, HomeClubID, AwayClubID, MatchDate, Stadium, HomeGoals, AwayGoals) VALUES (4, 2, 1, TO_DATE('2023-08-16', 'YYYY-MM-DD'), 'Stamford Bridge', 1, 2)
    INTO Matches (MatchID, HomeClubID, AwayClubID, MatchDate, Stadium, HomeGoals, AwayGoals) VALUES (5, 4, 3, TO_DATE('2023-08-17', 'YYYY-MM-DD'), 'Tottenham Hotspur Stadium', 2, 2)
    INTO Matches (MatchID, HomeClubID, AwayClubID, MatchDate, Stadium, HomeGoals, AwayGoals) VALUES (6, 6, 5, TO_DATE('2023-08-18', 'YYYY-MM-DD'), 'Old Trafford', 0, 1)
SELECT * FROM dual;

--Insert Data into trophies Table
INSERT ALL
    INTO Trophies (TrophyID, ClubID, TrophyName, YearWon) VALUES (1, 1, 'Premier League', 1998)
    INTO Trophies (TrophyID, ClubID, TrophyName, YearWon) VALUES (2, 2, 'UEFA Champions League', 2012)
    INTO Trophies (TrophyID, ClubID, TrophyName, YearWon) VALUES (3, 3, 'FA Cup', 2006)
    INTO Trophies (TrophyID, ClubID, TrophyName, YearWon) VALUES (4, 4, 'League Cup', 2008)
    INTO Trophies (TrophyID, ClubID, TrophyName, YearWon) VALUES (5, 5, 'Premier League', 2022)
    INTO Trophies (TrophyID, ClubID, TrophyName, YearWon) VALUES (6, 6, 'FA Cup', 2016)
SELECT * FROM dual;
--Performing Inner Join to get players first name,last name and club name
SELECT 
    Players.FirstName, 
    Players.LastName, 
    Clubs.ClubName 
FROM 
    Players 
INNER JOIN 
    Clubs ON Players.ClubID = Clubs.ClubID;
--performing outer join to get clubs and their coaches including clubs with no coaches
SELECT 
    Clubs.ClubName, 
    Coaches.FirstName, 
    Coaches.LastName 
FROM 
    Clubs 
LEFT JOIN 
    Coaches ON Clubs.ClubID = Coaches.ClubID;
--Inserting New Player
INSERT INTO Players (PlayerID, FirstName, LastName, Position, DateOfBirth, Nationality, ClubID) 
VALUES (7, 'Cole', 'Palmer', 'Midfielder', TO_DATE('2002-05-06', 'YYYY-MM-DD'), 'English', 2);

--updating a player who changed clubs
UPDATE Players 
SET ClubID = 1 
WHERE PlayerID = 5;

--deleting a player
DELETE FROM Players 
WHERE PlayerID = 6;


