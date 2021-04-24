INSERT INTO Tournament (name, number_Of_Participants,  number_Of_Games, is_Active, version)
VALUES ('football', 1, 1, TRUE, 1);

INSERT INTO Game (participant_One_Points, participant_Two_Points, tournament_fk_id, version)
VALUES ( 1, 1, 1, 1);

INSERT INTO Participant (name, game_fk_id, tournament_fk_id, version)
VALUES ('Tarzheman', 1, 1, 1);


