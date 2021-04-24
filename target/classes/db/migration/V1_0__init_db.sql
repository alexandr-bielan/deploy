CREATE TABLE IF NOT EXISTS Tournament (
                                          tournament_id SERIAL NOT NULL  PRIMARY KEY,
                                          version INT,
                                          name VARCHAR(32),
    number_Of_Participants INT,
    number_Of_Games INT,
    is_Active BOOLEAN);

CREATE TABLE IF NOT EXISTS Game (
                                    game_id SERIAL NOT NULL  PRIMARY KEY,
                                    version INT,
                                    start_Time time,
                                    finish_Time time,
                                    participant_One_Points INT,
                                    participant_Two_Points INT,
                                    tournament_fk_id INT NULL,
                                    FOREIGN KEY (tournament_fk_id) REFERENCES Tournament(tournament_id));

CREATE TABLE IF NOT EXISTS Participant (
                                           participant_id SERIAL NOT NULL PRIMARY KEY,
                                           version INT,
                                           name VARCHAR(32),
    game_fk_id INT NULL,
    tournament_fk_id INT NULL,
    FOREIGN KEY (game_fk_id) REFERENCES Game(game_id),
    FOREIGN KEY (tournament_fk_id) REFERENCES Tournament(tournament_id));



