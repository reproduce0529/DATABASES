

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";



CREATE DATABASE board;
use board;


CREATE TABLE answer (
  answer_idx int(11) NOT NULL,
  question_idx int(11) NOT NULL,
  users_name varchar(255) NOT NULL,
  content text DEFAULT NULL,
  is_check int(11) NOT NULL DEFAULT 0,
  create_date timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


CREATE TABLE question (
  idx int(11) NOT NULL,
  title varchar(255) NOT NULL,
  users_name varchar(255) NOT NULL,
  interest_idx int(11) DEFAULT NULL,
  context varchar(255) DEFAULT NULL,
  create_date varchar(225) DEFAULT NULL,
  create_time varchar(255) NOT NULL,
  update_datetime datetime DEFAULT NULL,
  is_check int(11) NOT NULL DEFAULT 0,
  view int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE question_img (
  idx int(11) NOT NULL,
  question_idx int(11) NOT NULL,
  path varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE users (
  idx int(11) NOT NULL,
  id varchar(20) DEFAULT NULL,
  password varchar(255) DEFAULT NULL,
  email varchar(255) DEFAULT NULL,
  last_login_datetime datetime DEFAULT NULL,
  point int(11) NOT NULL DEFAULT 0,
  profile varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


-- --------------------------------------------------------

--
-- 테이블 구조 user_interest
--

-- 덤프된 테이블의 인덱스
--

--
-- 테이블의 인덱스 answer
--
ALTER TABLE answer
  ADD PRIMARY KEY (answer_idx);

--
-- 테이블의 인덱스 chat


--
-- 테이블의 인덱스 question
--
ALTER TABLE question
  ADD PRIMARY KEY (idx);

--
-- 테이블의 인덱스 question_img
--
ALTER TABLE question_img
  ADD PRIMARY KEY (idx);

--
-- 테이블의 인덱스 users
--
ALTER TABLE users
  ADD PRIMARY KEY (idx);



--
-- 덤프된 테이블의 AUTO_INCREMENT
--

--
-- 테이블의 AUTO_INCREMENT answer
--
ALTER TABLE answer
  MODIFY answer_idx int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;


--
-- 테이블의 AUTO_INCREMENT question
--
ALTER TABLE question
  MODIFY idx int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- 테이블의 AUTO_INCREMENT question_img
--
ALTER TABLE question_img
  MODIFY idx int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- 테이블의 AUTO_INCREMENT users
--
ALTER TABLE users
  MODIFY idx int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
