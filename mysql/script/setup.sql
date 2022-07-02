
use goapp;

create table users(
  `id`         int(16) primary key,
  `name`       varchar(255) not null unique,
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

  foreign key (user_id) references goapp.users(name) ON DELETE CASCADE
);
