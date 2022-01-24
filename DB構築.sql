-- 1. axizdb_task�f�[�^�x�[�X�̍쐬
CREATE DATABASE axizdb_task;

-- 2. role�e�[�u���̍쐬
CREATE TABLE role (
  role_id INT PRIMARY KEY,
  role_name VARCHAR(50)
);

-- 3. role���o�^
INSERT INTO role (role_id, role_name) VALUES
  (1, '�Ǘ���'),
  (2, '���');

-- 4. user_info�e�[�u���̍쐬
CREATE TABLE user_info (
  user_id SERIAL PRIMARY KEY,
  login_id VARCHAR(50) UNIQUE,
  user_name VARCHAR(50),
  telephone VARCHAR(50),
  password  VARCHAR(50),
  role_id INT NOT NULL REFERENCES role(role_id)
);

-- 5. �V�[�P���X�ԍ��̏����l�ݒ�
ALTER SEQUENCE user_info_user_id_seq RESTART 101;

-- 6. user_info���o�^
INSERT INTO user_info (login_id, user_name, telephone, password, role_id) VALUES
  ('sato', '����', '09011111111', 'axiz',1),
  ('suzuki', '���', '09022222222', 'bxiz',1),
  ('takahashi', '����', '09033333333', 'cxiz',1),
  ('tanaka', '�c��', '09044444444', 'dxiz', 2),
  ('ito', '�ɓ�', '09055555555', 'exiz', 2),
  ('yamamoto', '�R�{', '09066666666', 'fxiz', 2),
  ('watanabe', '�n��', '09077777777', 'gxiz', 2),
  ('nakamura', '����', '09088888888', 'hxiz', 2),
  ('kobayashi', '����', '09099999999', 'ixiz', 2),
  ('kato', '����', '09000000000', 'jxiz', 2);
