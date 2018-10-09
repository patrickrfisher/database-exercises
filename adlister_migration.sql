-- Write SQL queries to answer the following questions:
--
-- For a given ad, what is the email address of the user that created it?
-- For a given ad, what category, or categories, does it belong to?
-- For a given category, show all the ads that are in that category.
-- For a given user, show all the ads they have posted.


USE adlister;

-- ****************** SqlDBM: MySQL ******************;
-- ***************************************************;

DROP TABLE if exists `Joiner`;


DROP TABLE if exists `Ads`;


-- DROP TABLE `Categories`;


DROP TABLE  if exists `Users`;



-- ************************************** `Categories`
drop table if exists `Categories`;
CREATE TABLE Categories
(
 id       INT unsigned NOT NULL AUTO_INCREMENT ,
 Category VARCHAR(100) NOT NULL ,

PRIMARY KEY (id)
);






-- ************************************** `Users`

CREATE TABLE Users
(
 id      INT unsigned NOT NULL AUTO_INCREMENT ,
 Email    VARCHAR(200) NOT NULL ,
 Password VARCHAR(100) NOT NULL ,

PRIMARY KEY (id)
);






-- ************************************** `Ads`

CREATE TABLE Ads
(
 id          INT unsigned NOT NULL AUTO_INCREMENT ,
 user_id     INT unsigned NOT NULL ,
 Title       VARCHAR(500) NOT NULL ,
 Description VARCHAR(5000) NOT NULL ,

PRIMARY KEY (id),
FOREIGN KEY (user_id) REFERENCES Users(id)
);






-- ************************************** `Joiner`

CREATE TABLE Joiner
(
 ad_id       INT unsigned NOT NULL ,
 category_id INT unsigned NOT NULL ,


FOREIGN KEY (ad_id) REFERENCES Ads(id),
FOREIGN KEY(category_id) REFERENCES Categories(id)
);