/* data base creation*/
create database movie;
use movie;


/* directors table creation*/
create table directors(director_id varchar(10) primary key, director_name varchar(20));
desc directors;

/* Movie table creation*/
create table movies(movie_id varchar(10) primary key, title varchar(20), release_year int, director_id varchar(10),foreign key(director_id) references directors(director_id) );
desc movies;

/* genres table creation*/
create table genre(genre_id varchar(10) primary key, genre_name varchar(20));
desc genre;

/* movie genres table creation*/
create table movie_genres(movie_id varchar(10),genre_id varchar(10),foreign key(movie_id) references movies(movie_id),foreign key(genre_id) references genre(genre_id));
desc movie_genres;


/*Insrrting values into directors table*/
insert into directors values("D1","Karthik "),("D2","Rajamouli"),("D3","Shankar"),("D4","Anil ravipudi");
select * from directors;

/* Inserting values into movies table*/
insert into movies values("M1", "Virupaska", 2023, "D1"),("M2", "Baahubali-2",2017,"D2"),("M3", "Robo", 2010, "D3"),("M4","F2",2019,"D4");

/*Inserting values into genre table*/
insert into genre values("G1","Mystery"),("G2","Adventure"),("G3","Action"),("G4","Comedy");
select * from genre;

/* Inserting values into movie_genre table*/
insert into movie_genres values("M1","G1"),("M2","G2"),("M3","G3"),("M4","G4"),("M3","G1");
select * from movie_genres;