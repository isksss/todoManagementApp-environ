
use goapp;

create table users(
  `id`         int PRIMARY KEY,
  `name`       varchar(255) not null ,
  `email`      varchar(255) not null unique,
  `password`   varchar(255) not null,  
  `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

create table tasks (
  `id` int(16) primary key, 
  `user_id` varchar(255) not null,  
  `todo` varchar(255) not null, 
  `finish` boolean not null,   
  `created_at` timestamp not null DEFAULT CURRENT_TIMESTAMP,

  foreign key (user_id) references goapp.users(name) ON DELETE CASCADE ON UPDATE CASCADE
);

create table sessions(
  `id` int auto_increment PRIMARY KEY,
  `session_id` VARCHAR(100) UNIQUE,
  `user_id` int,
  `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
  
  foreign key (user_id) references goapp.users(name) ON DELETE CASCADE ON UPDATE CASCADE

);
