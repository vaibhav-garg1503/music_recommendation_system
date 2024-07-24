create database music_system;
use music_system;

-- Music recommendation database system

CREATE TABLE Users (
    user_id INT PRIMARY KEY,
    username VARCHAR(50),
    email VARCHAR(100),
    password_hash VARCHAR(20),
    registration_date DATE
);

DESC Users;

INSERT INTO Users (user_id, username, email, password_hash, registration_date)
VALUES 
    (1, 'Ananya', 'ananya@example.com', 'Ananya@1', '2024-04-25'),
    (2, 'Aarav', 'aarav@example.com', 'Aarav@2', '2024-04-25'),
    (3, 'Advait', 'advait@example.com', 'Advait@3', '2024-04-25'),
    (4, 'Ayesha', 'ayesha@example.com', 'Ayesha@4', '2024-04-25'),
    (5, 'Dhruv', 'dhruv@example.com', 'Dhruv@5', '2024-04-25'),
    (6, 'Ishaan', 'ishaan@example.com', 'Ishaan@6', '2024-04-25'),
    (7, 'Kavya', 'kavya@example.com', 'Kavya@7', '2024-04-25'),
    (8, 'Neha', 'neha@example.com', 'Neha@8', '2024-04-25'),
    (9, 'Nikhil', 'nikhil@example.com', 'Nikhil@9', '2024-04-25'),
    (10, 'Priya', 'priya@example.com', 'Priya@10', '2024-04-25'),
    (11, 'Rahul', 'rahul@example.com', 'Rahul@11', '2024-04-25'),
    (12, 'Sahil', 'sahil@example.com', 'Sahil@12', '2024-04-25'),
    (13, 'Tanvi', 'tanvi@example.com', 'Tanvi@13', '2024-04-25'),
    (14, 'Yash', 'yash@example.com', 'Yash@14', '2024-04-25'),
    (15, 'Aaradhya', 'aaradhya@example.com', 'Aaradhya@15', '2024-04-25'),
    (16, 'Arjun', 'arjun@example.com', 'Arjun@16', '2024-04-25'),
    (17, 'Avani', 'avani@example.com', 'Avani@17', '2024-04-25'),
    (18, 'Devika', 'devika@example.com', 'Devika@18', '2024-04-25'),
    (19, 'Ishika', 'ishika@example.com', 'Ishika@19', '2024-04-25'),
    (20, 'Kabir', 'kabir@example.com', 'Kabir@20', '2024-04-25'),
    (21, 'Meera', 'meera@example.com', 'Meera@21', '2024-04-25'),
    (22, 'Rishi', 'rishi@example.com', 'Rishi@22', '2024-04-25'),
    (23, 'Ria', 'ria@example.com', 'Ria@23', '2024-04-25'),
    (24, 'Rohan', 'rohan@example.com', 'Rohan@24', '2024-04-25'),
    (25, 'Sanya', 'sanya@example.com', 'Sanya25', '2024-04-25'),
    (26, 'Shiv', 'shiv@example.com', 'Shiv@26', '2024-04-25'),
    (27, 'Tara', 'tara@example.com', 'Tara@27', '2024-04-25'),
    (28, 'Aryan', 'aryan@example.com', 'Aryan@28', '2024-04-25'),
    (29, 'Avni', 'avni@example.com', 'Anvi@29', '2024-04-25'),
    (30, 'Vihaan', 'vihaan@example.com', 'Vihaan@30', '2024-04-25');
    
select * from Users;

CREATE TABLE Artists (
    artist_id INT PRIMARY KEY,
    artist_name VARCHAR(100),
    genre VARCHAR(50)
);

DESC Artists;

INSERT INTO Artists (artist_id, artist_name, genre)
VALUES 
    (1, 'Arijit Singh', 'Bollywood'),
    (2, 'Shreya Ghoshal', 'Bollywood'),
    (3, 'A.R. Rahman', 'Bollywood'),
    (4, 'Atif Aslam', 'Bollywood'),
    (5, 'Sunidhi Chauhan', 'Bollywood'),
    (6, 'Neha Kakkar', 'Bollywood'),
    (7, 'Sonu Nigam', 'Bollywood'),
    (8, 'Lata Mangeshkar', 'Bollywood'),
    (9, 'Armaan Malik', 'Bollywood'),
    (10, 'Nusrat Fateh Ali Khan', 'Sufi'),
    (11, 'Rahat Fateh Ali Khan', 'Sufi'),
    (12, 'Amit Trivedi', 'Bollywood'),
    (13, 'Mohit Chauhan', 'Bollywood'),
    (14, 'Shaan', 'Bollywood'),
    (15, 'Udit Narayan', 'Bollywood'),
    (16, 'Javed Ali', 'Bollywood'),
    (17, 'K.K.', 'Bollywood'),
    (18, 'Asees Kaur', 'Bollywood'),
    (19, 'Pritam', 'Bollywood'),
    (20, 'Ankit Tiwari', 'Bollywood');
    
    select * from Artists;


CREATE TABLE Songs (
    song_id INT PRIMARY KEY,
    song_title VARCHAR(255),
    duration TIME,
    artist_id INT,
    FOREIGN KEY (artist_id) REFERENCES Artists(artist_id)
);

DESC Songs;

INSERT INTO Songs (song_id, song_title, duration, artist_id)
VALUES 
    (1, 'Tum Hi Ho', '00:04:24', 1),
    (2, 'Channa Mereya', '00:04:49', 1),
    (3, 'Kal Ho Naa Ho', '00:05:21', 2),
    (4, 'Gerua', '00:04:47', 3),
    (5, 'Jeene Laga Hoon', '00:03:52', 4),
    (6, 'Tera Ban Jaunga', '00:03:56', 5),
    (7, 'Dil Diyan Gallan', '00:04:21', 4),
    (8, 'Dilbar', '00:02:45', 6),
    (9, 'Mere Sapno Ki Rani', '00:04:46', 7),
    (10, 'Suraj Hua Maddham', '00:07:05', 3),
    (11, 'Tera Ghata', '00:02:44', 8),
    (12, 'Tujhe Kitna Chahne Lage', '00:04:42', 1),
    (13, 'Tum Se Hi', '00:04:35', 9),
    (14, 'Iktara', '00:04:13', 10),
    (15, 'Afreen Afreen', '00:06:45', 11),
    (16, 'Pehli Nazar Mein', '00:05:27', 12),
    (17, 'Zara Zara', '00:05:30', 13),
    (18, 'Bol Do Na Zara', '00:04:53', 14),
    (19, 'Janam Janam', '00:03:59', 15),
    (20, 'Tum Mile', '00:05:33', 16);
    
    select * from songs;

CREATE TABLE Albums (
    album_id INT PRIMARY KEY,
    album_title VARCHAR(100),
    release_date DATE,
    artist_id INT,
    FOREIGN KEY (artist_id) REFERENCES Artists(artist_id)
);

DESC Albums;

INSERT INTO Albums (album_id, album_title, release_date, artist_id)
VALUES 
    (1, 'Aashiqui 2', '2013-04-25', 1),
    (2, 'Ae Dil Hai Mushkil', '2016-10-28', 2),
    (3, 'Kal Ho Naa Ho', '2003-11-27', 3),
    (4, 'Dilwale', '2015-12-18', 3),
    (5, 'Ram-Leela', '2013-11-15', 4),
    (6, 'Kabir Singh', '2019-06-21', 5),
    (7, 'Tiger Zinda Hai', '2017-12-22', 4),
    (8, 'Satyameva Jayate', '2018-08-15', 6),
    (9, 'Aradhana', '1969-09-27', 7),
    (10, 'Kabhi Khushi Kabhie Gham', '2001-12-14', 3),
    (11, 'Lost Stories', '2012-04-30', 8),
    (12, 'Bajrangi Bhaijaan', '2015-07-17', 4),
    (13, 'Rockstar', '2011-11-11', 9),
    (14, 'Wake Up Sid', '2009-10-02', 10),
    (15, 'Raees', '2017-01-25', 11),
    (16, 'Rehnaa Hai Terre Dil Mein', '2001-10-19', 12),
    (17, 'Jab We Met', '2007-10-26', 13),
    (18, 'Azhar', '2016-05-13', 14),
    (19, 'Phir Hera Pheri', '2006-06-09', 15),
    (20, 'Yeh Jawaani Hai Deewani', '2013-05-31', 16);
    
select * from Albums;

CREATE TABLE User_Playlists (
    playlist_id INT PRIMARY KEY,
    user_id INT,
    playlist_name VARCHAR(255),
    creation_date DATE,
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);
DESC User_Playlists;

INSERT INTO User_Playlists (playlist_id, user_id, playlist_name, creation_date)
VALUES 
    (1, 1, 'Favorites', '2024-04-25'),
    (2, 2, 'Chill Playlist', '2024-04-25'),
    (3, 3, 'Road Trip Mix', '2024-04-25'),
    (4, 4, 'Morning Vibes', '2024-04-25'),
    (5, 5, 'Workout Jams', '2024-04-25'),
    (6, 6, 'Relaxation Station', '2024-04-25'),
    (7, 7, 'Study Beats', '2024-04-25'),
    (8, 8, 'Party Playlist', '2024-04-25'),
    (9, 9, 'Throwback Hits', '2024-04-25'),
    (10, 10, 'Rainy Day Melodies', '2024-04-25'),
    (11, 11, 'Romantic Ballads', '2024-04-25'),
    (12, 12, 'Feel-Good Tunes', '2024-04-25'),
    (13, 13, 'Travel Playlist', '2024-04-25'),
    (14, 14, 'Emotional Rollercoaster', '2024-04-25'),
    (15, 15, 'Groovy Funk', '2024-04-25'),
    (16, 16, 'Indie Vibes', '2024-04-25'),
    (17, 17, 'Summer Anthems', '2024-04-25'),
    (18, 18, 'Late Night Jazz', '2024-04-25'),
    (19, 19, 'Soulful Rhythms', '2024-04-25'),
    (20, 20, 'EDM Extravaganza', '2024-04-25');
    
    select * from User_Playlists;

CREATE TABLE Recommendations (
    recommendation_id INT PRIMARY KEY,
    user_id INT,
    song_id INT,
    recommendation_date DATE,
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (song_id) REFERENCES Songs(song_id)
);
DESC Recommendations;
INSERT INTO Recommendations (recommendation_id, user_id, song_id, recommendation_date)
VALUES 
    (1, 1, 1, '2024-04-25'),
    (2, 1, 2, '2024-04-25'),
    (3, 2, 3, '2024-04-25'),
    (4, 2, 4, '2024-04-25'),
    (5, 3, 5, '2024-04-25'),
    (6, 3, 6, '2024-04-25'),
    (7, 4, 7, '2024-04-25'),
    (8, 4, 8, '2024-04-25'),
    (9, 5, 9, '2024-04-25'),
    (10, 5, 10, '2024-04-25'),
    (11, 6, 11, '2024-04-25'),
    (12, 6, 12, '2024-04-25'),
    (13, 7, 13, '2024-04-25'),
    (14, 7, 14, '2024-04-25'),
    (15, 8, 15, '2024-04-25'),
    (16, 8, 16, '2024-04-25'),
    (17, 9, 17, '2024-04-25'),
    (18, 9, 18, '2024-04-25'),
    (19, 10, 19, '2024-04-25'),
    (20, 10, 20, '2024-04-25');
    
    select * from Recommendations;
    
  -- SUB QUERIES Questions   

-- 1. Find the username of the user who registered first:
SELECT user_id, username, email,registration_date FROM Users WHERE registration_date = (SELECT MIN(registration_date)FROM Users);

-- 2. Retrieve the title of the album with the highest-rated song
SELECT album_id, album_title, release_date FROM Albums WHERE album_id = ( SELECT album_id FROM Songs WHERE song_id = (SELECT song_id FROM Recommendations
GROUP BY song_id ORDER BY COUNT(*) DESC LIMIT 1));


-- 3.Retrieve the names of users who have not received any recommendations:
SELECT username FROM Users WHERE user_id NOT IN (SELECT DISTINCT user_id FROM Recommendations);

-- 4.Find all users who have created playlists
SELECT user_id, username FROM Users WHERE user_id IN (SELECT DISTINCT user_id FROM User_Playlists);

        
-- 5.Find all songs released by artists who belong to a specific genre:    
SELECT song_title FROM Songs WHERE artist_id IN (SELECT artist_id FROM Artists WHERE genre = 'Bollywood');


-- 6.Find the names of users who have not created any playlists.
SELECT username, user_id FROM Users WHERE user_id NOT IN (SELECT user_id FROM User_Playlists);

-- JOINS Questios 

-- 1.List all songs with their corresponding artists:
SELECT Songs.song_title, Artists.artist_name FROM Songs
INNER JOIN Artists ON Songs.artist_id = Artists.artist_id;

-- 2.Retrieve all songs, including those without an associated album.
SELECT Songs.song_id, Songs.song_title, Songs.duration, Songs.artist_id, Albums.album_id
FROM Songs
LEFT JOIN Albums ON Songs.song_id = Albums.album_id;

-- 3.Show all recommendations made to users, including recommendations where the associated user has been deleted.
SELECT Recommendations.recommendation_id, Recommendations.user_id, Recommendations.song_id, Recommendations.recommendation_date
FROM Users
Right JOIN Recommendations ON Users.user_id=Recommendations.user_id; 

-- 4.Retrieve all songs and their corresponding artists' names, including songs without an associated artist and artists without any songs
SELECT Songs.song_id, Songs.song_title, Artists.artist_name
FROM Songs
left JOIN Artists ON Songs.artist_id = Artists.artist_id
union
SELECT Songs.song_id, Songs.song_title, Artists.artist_name
FROM Songs
Right JOIN Artists ON Songs.artist_id = Artists.artist_id;

-- 5.Generate a list of all possible combinations of songs and artists, regardless of whether they are related or not.
SELECT Songs.song_title, Artists.artist_name FROM Songs CROSS JOIN Artists;

-- OTHER Question 

-- 1.Retrieve all artists whose names start with a certain letter or letters
SELECT * FROM Artists WHERE artist_name LIKE 'A%';

-- 2.Find all songs with titles containing a specific word or phrase
SELECT * FROM Songs WHERE song_title LIKE 'T%';

-- 3.Retrieve all songs with durations between two specific values:
SELECT * FROM Songs WHERE duration BETWEEN '00:03:00' AND '00:05:00';























        







