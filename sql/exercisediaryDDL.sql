DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
	`user_id`	VARCHAR2(20)	NOT NULL,
	`user_password`	VARCHAR2(50)	NOT NULL,
	`user_name`	VARCHAR2(50)	NOT NULL,
	`user_gender`	VARCHAR2(20)	NOT NULL,
	`user_age`	VARCHAR2(20)	NOT NULL,
	`user_height`	VARCHAR2(20)	NOT NULL,
	`user_weight`	VARCHAR2(20)	NOT NULL,
	`purpose`	VARCHAR2(20)	NOT NULL
);

DROP TABLE IF EXISTS `diary`;

CREATE TABLE `diary` (
	`diary_no`	VARCHAR2(20)	NOT NULL,
	`diary_title`	VARCHAR2(50)	NOT NULL,
	`diary_content`	VARCHAR2(200)	NOT NULL,
	`write_date`	DATE	NOT NULL,
	`today_weight`	VARCHAR2(20)	NOT NULL,
	`user_id`	VARCHAR2(20)	NOT NULL,
	`purpose`	VARCHAR2(20)	NOT NULL,
	`program_no`	VARCHAR(20)	NOT NULL
);

DROP TABLE IF EXISTS `video`;

CREATE TABLE `video` (
	`program_no`	VARCHAR(20)	NOT NULL,
	`playlist`	VARCHAR2(50)	NULL,
	`youtube_url`	VARCHAR2(100)	NOT NULL,
	`channel`	VARCHAR2(50)	NOT NULL,
	`purpose`	VARCHAR2(20)	NOT NULL
);

DROP TABLE IF EXISTS `youtube`;

CREATE TABLE `youtube` (
	`channel`	VARCHAR2(50)	NOT NULL,
	`youtuber`	VARCHAR2(20	NULL
);

DROP TABLE IF EXISTS `purpose`;

CREATE TABLE `purpose` (
	`purpose`	VARCHAR2(20)	NOT NULL
);

ALTER TABLE `user` ADD CONSTRAINT `PK_USER` PRIMARY KEY (
	`user_id`
);

ALTER TABLE `diary` ADD CONSTRAINT `PK_DIARY` PRIMARY KEY (
	`diary_no`
);

ALTER TABLE `video` ADD CONSTRAINT `PK_VIDEO` PRIMARY KEY (
	`program_no`
);

ALTER TABLE `youtube` ADD CONSTRAINT `PK_YOUTUBE` PRIMARY KEY (
	`channel`
);

ALTER TABLE `purpose` ADD CONSTRAINT `PK_PURPOSE` PRIMARY KEY (
	`purpose`
);

