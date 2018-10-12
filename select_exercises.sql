USE codeup_test_db;
SELECT * FROM albums WHERE artist = 'Pink Floyd'; -- Shows all albums by pink floyd
SELECT release_date FROM albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club'; -- Shows year of release for album
SELECT genre FROM albums WHERE name = 'Nevermind'; -- Shows genre of album named Nevermind
SELECT * FROM albums WHERE release_date >= 1990; -- Shows all albums released in 1990's
SELECT * FROM albums WHERE sales < 20000000; -- Shows all albums with less than 20 million sales
SELECT * FROM albums WHERE genre = 'Rock'; -- Shows genres that equal rock.