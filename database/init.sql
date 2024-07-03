create schema IF NOT EXISTS blog;

create table IF NOT EXISTS blog.post (
	id serial primary key,
	title text not null,
	content text not null,
	date timestamp default now()
);
