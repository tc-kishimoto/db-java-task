-- 1. axizdb_taskデータベースの作成
CREATE DATABASE axizdb_task;

-- 2. roleテーブルの作成
CREATE TABLE role (
  role_id INT PRIMARY KEY,
  role_name VARCHAR(50)
);

-- 3. role情報登録
INSERT INTO role (role_id, role_name) VALUES
  (1, '管理者'),
  (2, '一般');

-- 4. user_infoテーブルの作成
CREATE TABLE user_info (
  user_id SERIAL PRIMARY KEY,
  login_id VARCHAR(50) UNIQUE,
  user_name VARCHAR(50),
  telephone VARCHAR(50),
  password  VARCHAR(50),
  role_id INT NOT NULL REFERENCES role(role_id)
);

-- 5. シーケンス番号の初期値設定
ALTER SEQUENCE user_info_user_id_seq RESTART 101;

-- 6. user_info情報登録
INSERT INTO user_info (login_id, user_name, telephone, password, role_id) VALUES
  ('sato', '佐藤', '09011111111', 'axiz',1),
  ('suzuki', '鈴木', '09022222222', 'bxiz',1),
  ('takahashi', '高橋', '09033333333', 'cxiz',1),
  ('tanaka', '田中', '09044444444', 'dxiz', 2),
  ('ito', '伊藤', '09055555555', 'exiz', 2),
  ('yamamoto', '山本', '09066666666', 'fxiz', 2),
  ('watanabe', '渡辺', '09077777777', 'gxiz', 2),
  ('nakamura', '中村', '09088888888', 'hxiz', 2),
  ('kobayashi', '小林', '09099999999', 'ixiz', 2),
  ('kato', '加藤', '09000000000', 'jxiz', 2);
