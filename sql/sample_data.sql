-- sample data for my social media database
-- B103 project - Harnoor Singh

USE social_media_db;

-- adding users first since everything else depends on them
INSERT INTO users (username, email, bio) VALUES
('alex_smith', 'alex@email.com', 'Just a guy who loves coffee and coding.');

INSERT INTO users (username, email, bio) VALUES
('maya_jones', 'maya@email.com', 'Photographer based in Berlin.');

INSERT INTO users (username, email, bio) VALUES
('carlos_r', 'carlos@email.com', 'Fitness enthusiast and personal trainer.');

INSERT INTO users (username, email, bio) VALUES
('sara_k', 'sara@email.com', 'Student at HU Berlin. Into music and travel.');

INSERT INTO users (username, email, bio) VALUES
('tom_w', 'tom@email.com', 'Software developer. Building things on weekends.');

INSERT INTO users (username, email, bio) VALUES
('lena_m', 'lena@email.com', 'Food blogger. Always eating something good.');

INSERT INTO users (username, email, bio) VALUES
('james_p', 'james@email.com', 'Big fan of football and hiking.');

INSERT INTO users (username, email, bio) VALUES
('nina_b', 'nina@email.com', 'Artist and illustrator from Hamburg.');

INSERT INTO users (username, email, bio) VALUES
('ravi_s', 'ravi@email.com', 'Into books, films, and long walks.');

INSERT INTO users (username, email, bio) VALUES
('julia_t', 'julia@email.com', 'Marketing student. Coffee addict.');


-- posts from different users
INSERT INTO posts (user_id, content, image_url) VALUES
(1, 'Finally finished my first Python project. Feels great!', NULL),
(2, 'Shot these photos at Tempelhof today. Amazing light.', 'tempelhof.jpg'),
(3, 'Morning workout done. 5am club, who is with me?', NULL);

INSERT INTO posts (user_id, content, image_url) VALUES
(4, 'Just arrived in Vienna for the weekend. Love this city.', 'vienna.jpg'),
(5, 'Spent the whole day debugging one line. Classic.', NULL),
(6, 'Made homemade pasta for the first time. Turned out decent.', 'pasta.jpg');

INSERT INTO posts (user_id, content, image_url) VALUES
(7, 'Watched the Champions League last night. What a game.', NULL),
(8, 'New illustration finished. Took about 3 days straight.', 'illustration.jpg'),
(9, 'Reading Kafka on the Shore again. Even better second time.', NULL),
(10, 'Group project season is here. Send help.', NULL);

INSERT INTO posts (user_id, content, image_url) VALUES
(1, 'Started learning SQL this week. Databases are actually interesting.', NULL),
(2, 'Golden hour in Prenzlauer Berg. Could not resist.', 'prenzlauer.jpg'),
(3, 'Leg day. Nobody ever looks forward to leg day.', NULL),
(4, 'Back in Berlin. Already miss Vienna.', NULL),
(5, 'New side project started. No idea if it will work but let us see.', NULL);

INSERT INTO posts (user_id, content, image_url) VALUES
(6, 'Tried to make sushi at home. Disaster. Ordering next time.', 'sushi.jpg'),
(7, 'Morning run along the Spree. Highly recommend.', NULL),
(8, 'Working on a new series of portraits. Very excited about this one.', NULL),
(9, 'Finished three books this month. New record for me.', NULL),
(10, 'Presentation went well today. Huge relief.', NULL);


-- some comments on posts
INSERT INTO comments (post_id, user_id, content) VALUES
(1, 2, 'Nice work! What did you build?'),
(1, 5, 'Python is great. Keep going.');

INSERT INTO comments (post_id, user_id, content) VALUES
(2, 4, 'These look amazing! What camera do you use?'),
(3, 7, 'Respect. I could never do 5am.');

INSERT INTO comments (post_id, user_id, content) VALUES
(5, 1, 'Ha, been there so many times.'),
(5, 10, 'What was the bug?'),
(6, 9, 'That looks so good! Share the recipe.');

INSERT INTO comments (post_id, user_id, content) VALUES
(8, 3, 'Wow this is really impressive.'),
(9, 4, 'That book is on my list. Should I start it?'),
(10, 5, 'Good luck haha.');

INSERT INTO comments (post_id, user_id, content) VALUES
(11, 3, 'SQL is super useful once you get it.'),
(12, 1, 'Great shot! Love the colours.'),
(16, 6, 'Haha I made that mistake too.'),
(19, 2, 'Three books! That is impressive.'),
(20, 7, 'Well done! That is always the best feeling.');


-- likes
INSERT INTO likes (post_id, user_id) VALUES (1, 2);
INSERT INTO likes (post_id, user_id) VALUES (1, 3);
INSERT INTO likes (post_id, user_id) VALUES (1, 5);
INSERT INTO likes (post_id, user_id) VALUES (1, 10);
INSERT INTO likes (post_id, user_id) VALUES (2, 1);
INSERT INTO likes (post_id, user_id) VALUES (2, 4);
INSERT INTO likes (post_id, user_id) VALUES (2, 6);
INSERT INTO likes (post_id, user_id) VALUES (2, 9);
INSERT INTO likes (post_id, user_id) VALUES (3, 1);
INSERT INTO likes (post_id, user_id) VALUES (3, 7);
INSERT INTO likes (post_id, user_id) VALUES (3, 8);
INSERT INTO likes (post_id, user_id) VALUES (4, 2);
INSERT INTO likes (post_id, user_id) VALUES (4, 5);
INSERT INTO likes (post_id, user_id) VALUES (5, 3);
INSERT INTO likes (post_id, user_id) VALUES (5, 9);
INSERT INTO likes (post_id, user_id) VALUES (6, 1);
INSERT INTO likes (post_id, user_id) VALUES (6, 2);
INSERT INTO likes (post_id, user_id) VALUES (6, 10);
INSERT INTO likes (post_id, user_id) VALUES (7, 3);
INSERT INTO likes (post_id, user_id) VALUES (8, 5);
INSERT INTO likes (post_id, user_id) VALUES (8, 6);
INSERT INTO likes (post_id, user_id) VALUES (8, 7);
INSERT INTO likes (post_id, user_id) VALUES (8, 9);
INSERT INTO likes (post_id, user_id) VALUES (9, 1);
INSERT INTO likes (post_id, user_id) VALUES (9, 4);
INSERT INTO likes (post_id, user_id) VALUES (9, 10);
INSERT INTO likes (post_id, user_id) VALUES (11, 4);
INSERT INTO likes (post_id, user_id) VALUES (11, 8);
INSERT INTO likes (post_id, user_id) VALUES (12, 3);
INSERT INTO likes (post_id, user_id) VALUES (12, 10);
INSERT INTO likes (post_id, user_id) VALUES (19, 2);
INSERT INTO likes (post_id, user_id) VALUES (19, 5);
INSERT INTO likes (post_id, user_id) VALUES (20, 1);
INSERT INTO likes (post_id, user_id) VALUES (20, 3);


-- follow relationships
INSERT INTO follows (follower_id, following_id) VALUES (1, 2);
INSERT INTO follows (follower_id, following_id) VALUES (1, 5);
INSERT INTO follows (follower_id, following_id) VALUES (1, 9);
INSERT INTO follows (follower_id, following_id) VALUES (2, 1);
INSERT INTO follows (follower_id, following_id) VALUES (2, 4);
INSERT INTO follows (follower_id, following_id) VALUES (2, 8);
INSERT INTO follows (follower_id, following_id) VALUES (3, 1);
INSERT INTO follows (follower_id, following_id) VALUES (3, 7);
INSERT INTO follows (follower_id, following_id) VALUES (4, 2);
INSERT INTO follows (follower_id, following_id) VALUES (4, 3);
INSERT INTO follows (follower_id, following_id) VALUES (4, 6);
INSERT INTO follows (follower_id, following_id) VALUES (5, 1);
INSERT INTO follows (follower_id, following_id) VALUES (5, 8);
INSERT INTO follows (follower_id, following_id) VALUES (6, 2);
INSERT INTO follows (follower_id, following_id) VALUES (6, 9);
INSERT INTO follows (follower_id, following_id) VALUES (7, 3);
INSERT INTO follows (follower_id, following_id) VALUES (7, 5);
INSERT INTO follows (follower_id, following_id) VALUES (7, 10);
INSERT INTO follows (follower_id, following_id) VALUES (8, 2);
INSERT INTO follows (follower_id, following_id) VALUES (9, 1);
INSERT INTO follows (follower_id, following_id) VALUES (9, 4);
INSERT INTO follows (follower_id, following_id) VALUES (10, 2);
INSERT INTO follows (follower_id, following_id) VALUES (10, 5);
INSERT INTO follows (follower_id, following_id) VALUES (10, 7);


-- direct messages
INSERT INTO messages (sender_id, receiver_id, content) VALUES
(1, 2, 'Hey! Love your Tempelhof photos.');

INSERT INTO messages (sender_id, receiver_id, content) VALUES
(2, 1, 'Thanks so much! You should come next time.');

INSERT INTO messages (sender_id, receiver_id, content) VALUES
(4, 6, 'That pasta looked incredible, please share the recipe!'),
(6, 4, 'Haha thank you! I will write it up soon.');

INSERT INTO messages (sender_id, receiver_id, content) VALUES
(5, 1, 'Hey, which Python course are you following?'),
(1, 5, 'I am using a free one on YouTube, happy to send the link.');

INSERT INTO messages (sender_id, receiver_id, content) VALUES
(3, 7, 'Are you doing the run on Saturday?'),
(7, 3, 'Yes for sure! What time are you thinking?');

INSERT INTO messages (sender_id, receiver_id, content) VALUES
(9, 4, 'You should definitely read Kafka on the Shore, it is worth it.'),
(10, 5, 'Can you help me with my SQL assignment?');
