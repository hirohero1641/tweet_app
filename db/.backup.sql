PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "schema_migrations" ("version" varchar NOT NULL PRIMARY KEY);
INSERT INTO schema_migrations VALUES('20170331045923');
INSERT INTO schema_migrations VALUES('20170418070645');
INSERT INTO schema_migrations VALUES('20170427063848');
INSERT INTO schema_migrations VALUES('20170910064734');
CREATE TABLE IF NOT EXISTS "ar_internal_metadata" ("key" varchar NOT NULL PRIMARY KEY, "value" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO ar_internal_metadata VALUES('environment','development','2017-03-31 05:21:00.324397','2017-03-31 05:21:00.324397');
CREATE TABLE IF NOT EXISTS "posts" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "content" text, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO posts VALUES(1,'次は何の本を読もうかな。','2017-03-31 05:24:15.529063','2017-03-31 05:24:15.529063');
INSERT INTO posts VALUES(2,'今日のランチおいしかった。','2017-03-31 05:24:32.004378','2017-03-31 05:24:32.004378');
INSERT INTO posts VALUES(3,'今日はひつじ仙人にGitを教えてもらったぞ！着実に力が付いていっているのを感じる。そして、たまにはベイビーわんことも遊んでやらないとな。','2017-03-31 06:00:32.004378','2017-03-31 06:00:32.004378');
INSERT INTO posts VALUES(4,'にんじゃわんこ兄ちゃん、最近プログラミング頑張ってるなぁ。創りたいサービスがあるらしい。僕も頑張るぞー！','2017-04-15 07:24:32.004378','2017-03-31 07:24:32.004378');
INSERT INTO posts VALUES(5,'【プログラミング学習のProgate】Ruby on Rails学習コースⅢを修了しました！レベルがどんどん上がっていくから楽しい！','2017-03-31 09:24:32.004378','2017-03-31 09:24:32.004378');
INSERT INTO posts VALUES(6,'第1回Progate Sunday Schoolに参加してきた！にんじゃわんこのステッカーもらった(^o^)','2017-03-31 09:24:32.004378','2017-03-31 09:24:32.004378');
INSERT INTO posts VALUES(7,'もう少しでTweetApp完成するぞー！','2017-06-01 02:32:59.458984','2017-06-01 02:32:59.458984');
CREATE TABLE IF NOT EXISTS "users" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar, "email" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "image_name" varchar, "password" varchar);
INSERT INTO users VALUES(1,'にんじゃわんこ','wanko@prog-8.com','2017-04-18 08:06:52.739295','2017-09-10 06:55:31.731693','default_user.jpg','password');
INSERT INTO users VALUES(2,'ひつじ仙人','hitsuji@prog-8.com','2017-04-18 11:23:07.328713','2017-04-18 11:23:07.328713','2.jpg',NULL);
INSERT INTO users VALUES(3,'ベイビーわんこ','baby@prog-8.com','2017-04-18 12:23:07.328713','2017-04-18 12:23:07.328713','3.jpg',NULL);
INSERT INTO users VALUES(4,'しょう','sho@prog-8.com','2017-04-18 13:23:07.328713','2017-04-18 13:23:07.328713','4.jpg',NULL);
INSERT INTO users VALUES(5,'みちこ','michiko@prog-8.com','2017-04-18 13:23:07.328713','2017-04-18 13:23:07.328713','5.jpg',NULL);
DELETE FROM sqlite_sequence;
INSERT INTO sqlite_sequence VALUES('posts',7);
INSERT INTO sqlite_sequence VALUES('users',5);
COMMIT;
