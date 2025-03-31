-- 問22
SELECT
    id,
    country_id,
    uniform_num,
    position,
    name,
    club,
    birth,
    height,
    weight
FROM
    players
ORDER BY
    height DESC,
    weight DESC;

-- 問23
SELECT
    id,
    country_id,
    uniform_num,
    SUBSTRING(position, 1, 1) AS position_initial,
    name
FROM
    players;

-- 問24
SELECT
    name,
    LENGTH (name) AS name_length
FROM
    countries
ORDER BY
    name_length DESC;

-- 問25
SELECT
    name,
    DATE_FORMAT (birth, '%Y年%m月%d日') AS birthday
FROM
    players;

-- 問26
SELECT
    IFNULL (player_id, 9999) AS player_id,
    goal_time
FROM
    goals;

-- 問27
SELECT
    CASE
        WHEN player_id IS NULL THEN 9999
        ELSE player_id
    END AS player_id,
    goal_time
FROM
    goals;

-- 問28
SELECT
    AVG(height) AS 平均身長,
    AVG(weight) AS 平均体重
FROM
    players;

-- 問29
SELECT
    COUNT(*) AS 日本のゴール数
FROM
    goals
WHERE
    player_id BETWEEN 714 AND 736;

-- 問30
SELECT
    COUNT(player_id) AS オウンゴール以外のゴール数
FROM
    goals;

-- 問31
SELECT
    MAX(height) AS 最大身長,
    MAX(weight) AS 最大体重
FROM
    players;