USE social_media_db;

SELECT * FROM users;

-- show posts with the username instead of user_id
SELECT posts.id, users.username, posts.content, posts.created_at
FROM posts
JOIN users ON posts.user_id = users.id;

SELECT * FROM posts WHERE image_url IS NOT NULL;


-- count how many posts each user has 
SELECT users.username, COUNT(posts.id) AS total_posts
FROM users
LEFT JOIN posts ON users.id = posts.user_id
GROUP BY users.id;


-- which post has the most likes
SELECT posts.content, COUNT(likes.id) AS like_count
FROM posts
JOIN likes ON posts.id = likes.post_id
GROUP BY posts.id
ORDER BY like_count DESC
LIMIT 1;

-- get comments on post 1
SELECT username, comments.content, comments.created_at
FROM comments
JOIN users ON comments.user_id = users.id
WHERE post_id = 1;


SELECT users.username, COUNT(follows.follower_id) AS followers
FROM users
LEFT JOIN follows ON users.id = follows.following_id
GROUP BY users.id
ORDER BY followers DESC;

SELECT content, users.username AS sent_to, messages.created_at
FROM messages
JOIN users ON messages.receiver_id = users.id
WHERE sender_id = 1;


-- find users who havent any posts yet
SELECT username FROM users
WHERE id NOT IN (SELECT user_id FROM posts);


-- show posts from users that alex_smith follows
SELECT posts.content, users.username, posts.created_at
FROM posts
JOIN users ON posts.user_id = users.id
WHERE posts.user_id IN (
  SELECT following_id FROM follows WHERE follower_id = 1
);

-- how many likes and comments every post has
SELECT posts.content,
  COUNT(DISTINCT likes.id) AS likes,
  COUNT(DISTINCT comments.id) AS comments
FROM posts
LEFT JOIN likes ON posts.id = likes.post_id
LEFT JOIN comments ON posts.id = comments.post_id
GROUP BY posts.id;


--rank of users by total engagement
SELECT users.username,
  COUNT(DISTINCT likes.id) AS total_likes,
  COUNT(DISTINCT comments.id) AS total_comments,
  COUNT(DISTINCT likes.id) + COUNT(DISTINCT comments.id) AS total_engagement
FROM users
LEFT JOIN posts ON users.id = posts.user_id
LEFT JOIN likes ON posts.id = likes.post_id
LEFT JOIN comments ON posts.id = comments.post_id
GROUP BY users.id
ORDER BY total_engagement DESC;
