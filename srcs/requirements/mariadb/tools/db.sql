create table members(
	member_id int auto_increment,
	name varchar(255) not null,
	primary key(member_id)
);

INSERT INTO members (name) VALUES ('Thomas (Neo)');
INSERT INTO members (name) VALUES ('BIGGIE');
