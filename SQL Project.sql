create database project;

use project;

show databases;

CREATE TABLE Users (
  user_id INT PRIMARY KEY,
  username VARCHAR(50),
  email VARCHAR(100),
  password VARCHAR(100),
  registration_date DATE
); 

show tables;

CREATE TABLE Playlists (
  playlist_id INT PRIMARY KEY,
  playlist_name VARCHAR(100),
  user_id INT,
  created_at DATE,
  FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

CREATE TABLE Tracks (
  track_id INT PRIMARY KEY,
  track_name VARCHAR(100),
  artist_name VARCHAR(100),
  album_name VARCHAR(100),
  duration INT,
  release_date DATE
);

CREATE TABLE PlaylistTracks (
  playlist_id INT,
  track_id INT,
  position INT,
  FOREIGN KEY (playlist_id) REFERENCES Playlists(playlist_id),
  FOREIGN KEY (track_id) REFERENCES Tracks(track_id)
);

INSERT INTO Users (user_id, username, email, password, registration_date)
VALUES
  (1, 'Riyan', 'Riyan@gmail.com', 'password123', '2022-01-10'),
  (2, 'Sanjay', 'Sanjay@yahoo.com', 'password456', '2022-02-15'),
  (3, 'Amit', 'Amit@gmail.com', 'password789', '2022-03-20'),
  (4, 'Sheetal', 'Sheetal@yahoo.com', 'password12', '2022-04-25'),
  (5, 'Maahir', 'Maahir@gmail.com', 'password34', '2022-05-30'),
  (6, 'Prayan', 'Prayan@gmail.com', 'password56', '2022-06-05'),
  (7, 'Samarth', 'Samarth@yahoo.com', 'password78', '2022-07-10'),
  (8, 'Briti', 'Briti@yahoo.com', 'password90', '2022-08-15'),
  (9, 'Aabheri', 'Aabheri@gmail.com', 'password123', '2022-09-20'),
  (10, 'Anvika', 'Anvika@yahoo.com', 'password12', '2022-10-25');

INSERT INTO Playlists (playlist_id, playlist_name, user_id, created_at)
VALUES
  (1, 'My Favorites', 1, '2022-01-15'),
  (2, 'Road Trip Mix', 2, '2022-02-20'),
  (3, 'Party Hits', 3, '2022-03-25'),
  (4, 'Relaxing Melodies', 4, '2022-04-30'),
  (5, 'Late Night Vibes', 5, '2022-05-05'),
  (6, 'Workout Pump', 6, '2022-06-10'),
  (7, 'Chill Beats', 7, '2022-07-15'),
  (8, 'Study Jams', 8, '2022-08-20'),
  (9, 'Throwback Tunes', 9, '2022-09-25'),
  (10, 'Weekend Grooves', 10, '2022-10-30');

INSERT INTO Tracks (track_id, track_name, artist_name, album_name, duration, release_date)
VALUES
  (1, 'Shape of You', 'Ed Sheeran', 'Ã· (Divide)', 233, '2017-01-06'),
  (2, 'Blinding Lights', 'The Weeknd', 'After Hours', 200, '2019-11-29'),
  (3, 'Dance Monkey', 'Tones and I', 'The Kids Are Coming', 209, '2019-08-29'),
  (4, 'Bad Guy', 'Billie Eilish', 'When We All Fall Asleep, Where Do We Go?', 194, '2019-03-29'),
  (5, 'Rockstar', 'Post Malone ft. 21 Savage', 'Beerbongs & Bentleys', 218, '2017-09-15'),
  (6, 'Happier', 'Ed Sheeran', 'Ã· (Divide)', 207, '2017-01-06'),
  (7, 'Save Your Tears', 'The Weeknd', 'After Hours', 223, '2019-11-29'),
  (8, 'Never Seen the Rain', 'Tones and I', 'The Kids Are Coming', 186, '2019-08-29'),
  (9, "When the Party's Over", 'Billie Eilish', 'When We All Fall Asleep', 194, '2019-03-29'),
  (10, 'Circles', 'Post Malone', "Hollywood's Bleeding", 215, '2019-09-03'),
  (11, 'Thinking Out Loud', 'Ed Sheeran', 'x', 281, '2014-06-20'),
  (12, "Can't Feel My Fac", 'The Weeknd', 'Beauty Behind the Madness', 213, '2015-06-08'),
  (13, 'Dance Monkey', 'Tones and I', 'The Kids Are Coming', 209, '2019-08-29'),
  (14, 'Ocean Eyes', 'Billie Eilish', "Don't Smile at Me", 180, '2016-11-18'),
  (15, 'Sunflower', 'Post Malone ft. Swae Lee', 'Spider-Man: Into the Spider-Verse', 158, '2018-10-18'),
  (16, 'Photograph', 'Ed Sheeran', 'x', 258, '2014-06-20'),
  (17, 'Starboy', 'The Weeknd ft. Daft Punk', 'Starboy', 230, '2016-11-24'),
  (18, 'Dance Monkey', 'Tones and I', 'The Kids Are Coming', 209, '2019-08-29'),
  (19, 'Lovely', 'Billie Eilish ft. Khalid', '13 Reasons Why (Season 2)', 200, '2018-04-19'),
  (20, 'Better Now', 'Post Malone', 'Beerbongs & Bentleys', 231, '2018-04-27');

INSERT INTO PlaylistTracks (playlist_id, track_id, position)
VALUES
  (1, 1, 1),
  (1, 2, 2),
  (1, 3, 3),
  (1, 11, 4),
  (1, 13, 5),
  (2, 4, 1),
  (2, 5, 2),
  (2, 12, 3),
  (2, 14, 4),
  (3, 1, 1),
  (3, 3, 2),
  (3, 5, 3),
  (4, 2, 1),
  (4, 4, 2),
  (5, 1, 1),
  (5, 3, 2),
  (5, 5, 3),
  (5, 15, 4),
  (5, 16, 5),
  (5, 17, 6),
  (6, 2, 1),
  (6, 4, 2),
  (7, 1, 1),
  (7, 5, 2),
  (7, 18, 3),
  (8, 3, 1),
  (8, 4, 2),
  (9, 1, 1),
  (9, 2, 2),
  (9, 3, 3),
  (9, 4, 4),
  (9, 5, 5),
  (9, 19, 6),
  (9, 20, 7),
  (10, 1, 1),
  (10, 3, 2),
  (10, 5, 3);

select * from users;

select * from Playlists;

select * from Tracks;

select * from PlaylistTracks;

# Basic Level 

1. Find all the distinct album names.

select distinct album_name 
from Tracks;


2. Who is the artist of song 'Never Seen the Rain'?

select artist_name
from Tracks
where track_name = 'Never Seen the Rain';


3. Name all the user & email, who have registered with gmail id.

select username, email
from Users
where email like '%@gmail.com';


4. List the name of users along with registration date, who have registered after April-22.

select username, registration_date
from Users
where registration_date>'2022-04-30;'


5. Extract the name of tracks, artists, albums and release dates for tracks released in year 2017

select track_name, artist_name, album_name, release_date
from Tracks
where year(release_date) = 2017;


6. Find the details of the users who have registed in between may and august.

select * 
from Users
where registration_date between '2022-05-01' and '2022-08-31';


7. Count the number of playlists created by each user.

select u.username, count(p.playlist_id) as total_playlists
from Users u
left join Playlists p on u.user_id = p.user_id
group by u.username;


8. Find the track names and their durations for a specific album in the Tracks table.

select track_name, duration
from Tracks
where album_name = 'After Hours';


9. Calculate the average duration of tracks in the Tracks table.

select avg(duration) as AVG_Duration
from Tracks;


10. How many users have registered with yahoo.com id?

select count(*)
from Users
where email  like '%@yahoo.com';


# Intermadiate Level

1. Find the playlist names and the number of tracks in each playlist created by users whose email addresses end with '@gmail.com'.

select p.playlist_name, count(pt.track_id) as total_tracks
from Playlists p
join users u on p.user_id = u.user_id
join PlaylistTracks pt on p.playlist_id = pt.playlist_id
where u.email like '%gmail.com'
group by p.playlist_name;


2. Write a query to retrieve the usernames and email addresses of users who have created playlists with more than 5 tracks and
an average track duration greater than 200 seconds.

select u.username, u.email
from Users u 
join Playlists p on u.user_id = p.user_id
join PlaylistTracks pt on p.playlist_id = pt.playlist_id
join Tracks t on pt.track_id = t.track_id
group by u.username, u.email
having count(t.track_id)>5 and Avg(t.duration)>200;


3. Find the track and artist names of the tracks that have a duration greater than the average duration of all tracks in the 'Tracks' table.

select track_name, artist_name
from Tracks
where duration > (select avg(duration) from Tracks);


4. Find the users who have created playlists with tracks from all albums released in a specific year.

select distinct u.username
from Users u 
join Playlists p on u.user_id = p.user_id
join PlaylistTracks pt on p.playlist_id = pt.playlist_id
join Tracks t on pt.track_id = t.track_id
where year(t.release_date)= 2019;


5. Name of playlist and their total durations, sorted by the number of tracks in descending order.

select p.playlist_name, sum(t.duration) as Total_Duration
from Playlists p 
join PlaylistTracks pt on p.playlist_id = pt.playlist_id
join Tracks t on pt.track_id = t.track_id
group by p.playlist_name
order by total_duration desc;


6. Find the playlists that have tracks with a duration longer than the average duration of all tracks.

select distinct p.playlist_name
from Playlists p 
join PlaylistTracks pt on p.playlist_id = pt.playlist_id
join Tracks t on pt.track_id = t.track_id
where t.duration > (select avg(duration) from Tracks);


7. Find the top 3 playlists with the most tracks.

select p.playlist_name, count(pt.track_id) as Total_Tracks
from Playlists p 
join PlaylistTracks pt on p.playlist_id = pt.playlist_id
group by p.playlist_name
order by total_tracks desc 
limit 3;


8. Calculate the average track duration for each user and display the results in descending order.

select u.username, avg(t.duration) as Avg_Duration
from Users u 
join Playlists p on u.user_id = p.user_id
join PlaylistTracks pt on p.playlist_id = pt.playlist_id
join Tracks t on pt.track_id = t.track_id
group by u.username
order by avg_duration desc;


9. Find the track names and artist names of the tracks that are included in at least two different playlists.

select t.track_name, t.artist_name
from Tracks t
join PlaylistTracks pt on t.track_id = pt.track_id
group by t.track_id, t.track_name, t.artist_name
having count(distinct pt.playlist_id) >=2;


10. Find the playlist names and the total duration of each playlist. Include only the playlists created by users who registered in the year 2022.

select p.playlist_name, sum(t.duration) as Total_Duration
from Playlists p 
join Users u on p.user_id = u.user_id
join PlaylistTracks pt on p.playlist_id = pt.playlist_id
join Tracks t on pt.track_id = t.track_id
where year(u.registration_date) = 2022
group by p.playlist_name;


# Advanced Level 

1. Find the track names and artist names of the tracks that are included in playlists created by users who registered before 
the average registration date of all users.

select t.track_name, t.artist_name
from Tracks t 
join PlaylistTracks pt on t.track_id = pt.track_id
join Playlists p on pt.playlist_id = p.playlist_id
join Users u on p.user_id = u.user_id
where u.registration_date < (select avg(registration_date) from Users);


2. Use subquery to retrieve the names of users who have created playlists containing tracks from both the album 'After Hours' by
The Weeknd and the album 'When We All Fall Asleep, Where Do We Go?' by Billie Eilish.

select u.username
from Users u
join Playlists p on u.user_id = p.user_id
join PlaylistTracks pt on p.playlist_id = pt.playlist_id
join Tracks t on pt.track_id = t.track_id
where t.album_name in ('After Hours','When We All Fall Asleep, Where Do We Go?')
group by u.username
having COUNT(distinct t.album_name)= 2;


3. Write a SQL query to extract the name of top 3 users with the highest average track duration for their playlists.

select u.username, AVG(t.duration) as Avg_Duration
from Users u
join Playlists p on u.user_id = p.user_id
join PlaylistTracks pt on p.playlist_id = pt.playlist_id
join Tracks t on pt.track_id = t.track_id
group by u.username
order by avg_duration desc 
limit 3;


4. Find the tracks that have a duration greater than the average duration of all tracks and rank them within their respective albums.

select track_name, album_name, duration , RANK()over(partition by album_name order by duration desc) as Ranking
from Tracks
where duration > (select avg(duration) from Tracks);


5. Name the playlists along with the total number of tracks and the rank of the playlist based on the number of tracks.

select p.playlist_name, count(pt.track_id) as Total_Tracks, rank()over(order by count(pt.track_id)desc) as Ranking
from Playlists p 
join PlaylistTracks pt on p.playlist_id = pt.playlist_id
group by p.playlist_name;


6. Find the users who have created playlists with the highest number of tracks from a specific artist.

select u.username, count(t.track_id) as Total_Tracks
from Users u 
join Playlists p on u.user_id = p.user_id
join PlaylistTracks pt on p.playlist_id = pt.playlist_id
join Tracks t on pt.track_id = t.track_id
where t.artist_name = 'Ed Sheeran'
group by u.username
order by Total_Tracks desc;


7. Write a SQL query to retrieve the topmost users who have created playlists with the highest number of unique tracks from a specific artist.

select u.username, count(distinct t.track_id) as Unique_Tracks
from Users u 
join Playlists p on u.user_id = p.user_id
join PlaylistTracks pt on p.playlist_id = pt.playlist_id
join Tracks t on pt.track_id = t.track_id
where t.artist_name like '%The Weeknd%'
group by u.username
order by Unique_Tracks desc
limit 1;


8. Find the tracks that have a duration greater than the average duration of all tracks in their respective albums. 

SELECT t1.track_name, t1.album_name, t1.duration
FROM Tracks t1
WHERE t1.duration >
(
   SELECT AVG(t2.duration)
   FROM Tracks t2
   WHERE t1.album_name = t2.album_name
);


9. Find name of the playlists along with the user who created them, sorted by the number of tracks in descending order and the username in ascending order.


SELECT p.playlist_name, u.username, COUNT(pt.track_id) AS total_tracks
FROM Playlists p
JOIN Users u ON p.user_id = u.user_id
JOIN PlaylistTracks pt ON p.playlist_id = pt.playlist_id
GROUP BY p.playlist_name, u.username
ORDER BY total_tracks DESC, u.username ASC;


10. Write a SQL query to retrieve the playlists along with the user who created them, and the position of the track with the longest duration within each playlist.

SELECT p.playlist_name, u.username, pt.position, track_name, t.duration
FROM Playlists p
JOIN Users u ON p.user_id = u.user_id
JOIN PlaylistTracks pt ON p.playlist_id = pt.playlist_id
JOIN Tracks t ON pt.track_id = t.track_id
WHERE (p.playlist_id, t.duration) IN
( SELECT p2.playlist_id, MAX(t2.duration)
    FROM Playlists p2
    JOIN PlaylistTracks pt2 ON p2.playlist_id = pt2.playlist_id
    JOIN Tracks t2 ON pt2.track_id = t2.track_id
    GROUP BY p2.playlist_id
);

