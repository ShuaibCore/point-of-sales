create database prestige_db;
use prestige_db;

CREATE TABLE unverify_users(
id int not null AUTO_INCREMENT,
lastname varchar(50) NOT NULL,
  firstname varchar(50) NOT NULL,
  othername varchar(50) DEFAULT '',
  email_one varchar(80) NOT NULL UNIQUE,
  phone_one varchar(50) NOT NULL UNIQUE,
  phone_code varchar(30) NOT NULL DEFAULT '+234',
  personal_id varchar(80) NOT NULL UNIQUE,
  gender_id INT NOT NULL DEFAULT 0,
  dob VARCHAR(11) NOT NULL DEFAULT 0,
  mob VARCHAR(11) NOT NULL DEFAULT 0,
  yob VARCHAR(11) NOT NULL DEFAULT 0,
  status_id int NOT NULL DEFAULT 1,
  generated_id varchar(80) NOT NULL UNIQUE DEFAULT '0',
  created_by int NOT NULL DEFAULT 0,
  modified_by int NOT NULL DEFAULT 0,
  date_created date NOT NULL,
  time_created time NOT NULL,
  updated_at TIMESTAMP on update CURRENT_TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  deleted_status INT NOT NULL DEFAULT 0,
  deleted_by INT NOT NULL DEFAULT 0,  
  PRIMARY KEY(id) 
);


CREATE TABLE user_record(
id int not null AUTO_INCREMENT,
personal_id varchar(80) NOT NULL UNIQUE,
lastname varchar(50) NOT NULL,
firstname varchar(50) NOT NULL,
  othername varchar(50) DEFAULT '',
  email_one varchar(80) NOT NULL UNIQUE,
  email_two varchar(80) DEFAULT '',
  phone_one varchar(50) NOT NULL UNIQUE,
  phone_two varchar(50) DEFAULT '',
  phone_code varchar(30) NOT NULL DEFAULT '+234',
  gender_id INT NOT NULL DEFAULT 0,
  dob VARCHAR(11) NOT NULL DEFAULT 0,
  mob VARCHAR(11) NOT NULL DEFAULT 0,
  yob VARCHAR(11) NOT NULL DEFAULT 0,
  date_of_birth varchar(30) null,
  age int NOT NULL DEFAULT 0,
  zipcode int NOT NULL DEFAULT 0,
  language_code varchar(30) DEFAULT '',
  lga_id int NOT NULL DEFAULT 0,
  city_id int NOT NULL DEFAULT 0,
  state_id int NOT NULL DEFAULT 0,
  country_id int NOT NULL DEFAULT 0,
  address_one text,
  address_two text,
  document_id varchar(120) DEFAULT NULL,
  role_id INT NOT NULL DEFAULT 0,
  status_id int NOT NULL DEFAULT 1,
  generated_id varchar(80) NOT NULL UNIQUE DEFAULT '0',
  created_by int NOT NULL DEFAULT 0,
  modified_by int NOT NULL DEFAULT 0,
  date_created date NOT NULL,
  time_created time NOT NULL,
  updated_at TIMESTAMP on update CURRENT_TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  deleted_status INT NOT NULL DEFAULT 0,
  deleted_by INT NOT NULL DEFAULT 0,
  date_login date DEFAULT NULL,
  time_login time DEFAULT NULL,  
  PRIMARY KEY(id) 
);

CREATE TABLE admin_record(
id int not null AUTO_INCREMENT,
personal_id varchar(80) NOT NULL UNIQUE,
lastname varchar(50) NOT NULL,
firstname varchar(50) NOT NULL,
  othername varchar(50) DEFAULT '',
  email_one varchar(80) NOT NULL UNIQUE,
  email_two varchar(80) DEFAULT '',
  phone_one varchar(50) NOT NULL UNIQUE,
  phone_two varchar(50) DEFAULT '',
  phone_code varchar(30) NOT NULL DEFAULT '+234',
  gender_id INT NOT NULL DEFAULT 0,
  dob VARCHAR(11) NOT NULL DEFAULT 0,
  mob VARCHAR(11) NOT NULL DEFAULT 0,
  yob VARCHAR(11) NOT NULL DEFAULT 0,
  date_of_birth varchar(30) null,
  age int NOT NULL DEFAULT 0,
  zipcode int NOT NULL DEFAULT 0,
  language_code varchar(30) DEFAULT '',
  lga_id int NOT NULL DEFAULT 0,
  city_id int NOT NULL DEFAULT 0,
  state_id int NOT NULL DEFAULT 0,
  country_id int NOT NULL DEFAULT 0,
  address_one text,
  address_two text,
  document_id varchar(120) DEFAULT NULL,
  role_id INT NOT NULL DEFAULT 0,
  department_id int NOT NULL DEFAULT 0,
  status_id int NOT NULL DEFAULT 1,
  generated_id varchar(80) NOT NULL UNIQUE DEFAULT '0',
  created_by int NOT NULL DEFAULT 0,
  modified_by int NOT NULL DEFAULT 0,
  date_created date NOT NULL,
  time_created time NOT NULL,
  updated_at TIMESTAMP on update CURRENT_TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  deleted_status INT NOT NULL DEFAULT 0,
  deleted_by INT NOT NULL DEFAULT 0,
  date_login date DEFAULT NULL,
  time_login time DEFAULT NULL,
  PRIMARY KEY(id) 
);


CREATE TABLE user_passport(
  id int not null AUTO_INCREMENT,
  userid int NOT NULL UNIQUE DEFAULT 0,
  file_name varchar(80) NOT NULL,
  file_height varchar(30) NOT NULL,
  file_width varchar(30) NOT NULL,
  file_size varchar(30) NOT NULL,
  file_ext varchar(30) NOT NULL,
  file_url text null,
  file_title varchar(80) NULL,
  group_name varchar(80) NOT NULL DEFAULT 'user',
  status_id int NOT NULL DEFAULT 1,
  generated_id varchar(80) NOT NULL UNIQUE DEFAULT '0',
  created_by int NOT NULL DEFAULT 0,
  modified_by int NOT NULL DEFAULT 0,
  date_created date NOT NULL,
  time_created time NOT NULL,
  updated_at TIMESTAMP on update CURRENT_TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  deleted_status INT NOT NULL DEFAULT 0,
  deleted_by INT NOT NULL DEFAULT 0,  
  PRIMARY KEY(id),
  FOREIGN KEY(userid) REFERENCES user_record(id)
);

CREATE TABLE admin_passport(
  id int not null AUTO_INCREMENT,
  userid int NOT NULL UNIQUE DEFAULT 0,
  file_name varchar(80) NOT NULL,
  file_height varchar(30) NOT NULL,
  file_width varchar(30) NOT NULL,
  file_size varchar(30) NOT NULL,
  file_ext varchar(30) NOT NULL,
  file_url text null,
  file_title varchar(80) NULL,
  group_name varchar(80) NOT NULL DEFAULT 'admin',
  status_id int NOT NULL DEFAULT 1,
  generated_id varchar(80) NOT NULL UNIQUE DEFAULT '0',
  created_by int NOT NULL DEFAULT 0,
  modified_by int NOT NULL DEFAULT 0,
  date_created date NOT NULL,
  time_created time NOT NULL,
  updated_at TIMESTAMP on update CURRENT_TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  deleted_status INT NOT NULL DEFAULT 0,
  deleted_by INT NOT NULL DEFAULT 0,  
  PRIMARY KEY(id),
  FOREIGN KEY(userid) REFERENCES admin_record(id)
);

CREATE TABLE account_passport(
  id int not null AUTO_INCREMENT,
  userid int NOT NULL DEFAULT 0,
  file_name varchar(80) NOT NULL,
  file_height varchar(30) NOT NULL,
  file_width varchar(30) NOT NULL,
  file_size varchar(30) NOT NULL,
  file_ext varchar(30) NOT NULL,
  file_url text null,
  file_title varchar(80) NULL,
  group_name varchar(80) NOT NULL DEFAULT 'account',
  status_id int NOT NULL DEFAULT 1,
  generated_id varchar(80) NOT NULL UNIQUE DEFAULT '0',
  created_by int NOT NULL DEFAULT 0,
  modified_by int NOT NULL DEFAULT 0,
  date_created date NOT NULL,
  time_created time NOT NULL,
  updated_at TIMESTAMP on update CURRENT_TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  deleted_status INT NOT NULL DEFAULT 0,
  deleted_by INT NOT NULL DEFAULT 0,  
  PRIMARY KEY(id),
  FOREIGN KEY(userid) REFERENCES admin_record(id)
);


CREATE TABLE media_images(
  id int not null AUTO_INCREMENT,
  file_name  varchar(80) NOT NULL,
  file_height varchar(30) NOT NULL,
  file_width varchar(30) NOT NULL,
  file_size varchar(30) NOT NULL,
  file_ext varchar(30) NOT NULL,
  file_url text null,
  file_title varchar(80) NULL,
  group_name varchar(80) NOT NULL,
  status_id int NOT NULL DEFAULT 1,
  generated_id varchar(80) NOT NULL UNIQUE DEFAULT '0',
  created_by int NOT NULL DEFAULT 0,
  modified_by int NOT NULL DEFAULT 0,
  date_created date NOT NULL,
  time_created time NOT NULL,
  updated_at TIMESTAMP on update CURRENT_TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  deleted_status INT NOT NULL DEFAULT 0,
  deleted_by INT NOT NULL DEFAULT 0,  
  PRIMARY KEY(id) 
);

CREATE TABLE user_passwords(
id int not null AUTO_INCREMENT,
  userid int NOT NULL DEFAULT 0,
  pwd_auth_hash varchar(80) DEFAULT '',
  pwd_auth varchar(80) DEFAULT '',
  status_id int NOT NULL DEFAULT 1,
  generated_id varchar(80) NOT NULL UNIQUE DEFAULT '0',
  created_by int NOT NULL DEFAULT 0,
  modified_by int NOT NULL DEFAULT 0,
  date_created date NOT NULL,
  time_created time NOT NULL,
  updated_at TIMESTAMP on update CURRENT_TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  deleted_status INT NOT NULL DEFAULT 0,
  deleted_by INT NOT NULL DEFAULT 0,
  PRIMARY KEY(id),
  FOREIGN KEY(userid) REFERENCES user_record(id)
);


CREATE TABLE user_reset_password(
  id int NOT NULL AUTO_INCREMENT,
  userid int NOT NULL DEFAULT 0,
  reset_code varchar(80) NOT NULL UNIQUE,
  expire_date date NOT NULL,
  expire_time time NOT NULL,
  status_id int NOT NULL DEFAULT 1,
  generated_id varchar(80) NOT NULL UNIQUE DEFAULT '0',
  date_created date NOT NULL,
  time_created time NOT NULL,
  updated_at TIMESTAMP on update CURRENT_TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  deleted_status INT NOT NULL DEFAULT 0,
  deleted_by INT NOT NULL DEFAULT 0,  
  PRIMARY KEY(id),
  FOREIGN KEY(userid) REFERENCES user_record(id)
);

CREATE TABLE password_questions(
id int not null AUTO_INCREMENT,
userid int NOT NULL DEFAULT 0,
  question_id int NOT NULL DEFAULT 0,
  user_answer varchar(80) NOT NULL,
  status_id int NOT NULL DEFAULT 1,
  generated_id varchar(80) NOT NULL UNIQUE DEFAULT '0',
  created_by int NOT NULL DEFAULT 0,
  modified_by int NOT NULL DEFAULT 0,
  date_created date NOT NULL,
  time_created time NOT NULL,
  updated_at TIMESTAMP on update CURRENT_TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  deleted_status INT NOT NULL DEFAULT 0,
  deleted_by INT NOT NULL DEFAULT 0,  
  PRIMARY KEY(id),
  FOREIGN KEY(userid) REFERENCES user_record(id)
);

CREATE TABLE secure_questions(
id int not null AUTO_INCREMENT,
  questions varchar(150) DEFAULT '',
  status_id int NOT NULL DEFAULT 1,
  generated_id varchar(80) NOT NULL UNIQUE DEFAULT '0',
  created_by int NOT NULL DEFAULT 0,
  modified_by int NOT NULL DEFAULT 0,
  date_created date NOT NULL,
  time_created time NOT NULL,
  updated_at TIMESTAMP on update CURRENT_TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  deleted_status INT NOT NULL DEFAULT 0,
  deleted_by INT NOT NULL DEFAULT 0,  
  PRIMARY KEY(id)
);

CREATE TABLE documents_group(
  id int NOT NULL AUTO_INCREMENT,
  group_name varchar(100) NOT NULL UNIQUE,
  descriptions text,
  status_id int NOT NULL DEFAULT 1,
  generated_id varchar(80) NOT NULL UNIQUE DEFAULT '0',
  created_by int NOT NULL DEFAULT 0,
  modified_by int NOT NULL DEFAULT 0,
  date_created date NOT NULL,
  time_created time NOT NULL,
  updated_at TIMESTAMP on update CURRENT_TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  deleted_status INT NOT NULL DEFAULT 0,
  deleted_by INT NOT NULL DEFAULT 0,  
  PRIMARY KEY(id)
);

CREATE TABLE documents(
  id int NOT NULL AUTO_INCREMENT,
  document_name varchar(100) NOT NULL UNIQUE,
  descriptions text,
  group_id int NOT NULL DEFAULT 0,
  status_id int NOT NULL DEFAULT 1,
  generated_id varchar(80) NOT NULL UNIQUE DEFAULT '0',
  created_by int NOT NULL DEFAULT 0,
  modified_by int NOT NULL DEFAULT 0,
  date_created date NOT NULL,
  time_created time NOT NULL,
  updated_at TIMESTAMP on update CURRENT_TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  deleted_status INT NOT NULL DEFAULT 0,
  deleted_by INT NOT NULL DEFAULT 0,  
  PRIMARY KEY(id),
  FOREIGN KEY(group_id) REFERENCES documents_group(id)
);


CREATE TABLE attachments_group(
  id int NOT NULL AUTO_INCREMENT,
  group_name varchar(100) NOT NULL UNIQUE,
  descriptions text,
  status_id int NOT NULL DEFAULT 1,
  generated_id varchar(80) NOT NULL UNIQUE DEFAULT '0',
  created_by int NOT NULL DEFAULT 0,
  modified_by int NOT NULL DEFAULT 0,
  date_created date NOT NULL,
  time_created time NOT NULL,
  updated_at TIMESTAMP on update CURRENT_TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  deleted_status INT NOT NULL DEFAULT 0,
  deleted_by INT NOT NULL DEFAULT 0,  
  PRIMARY KEY(id)
);


CREATE TABLE attachments(
  id int NOT NULL AUTO_INCREMENT,
  document_name varchar(100) NOT NULL UNIQUE,
  descriptions text,
  group_id int NOT NULL DEFAULT 0,
  status_id int NOT NULL DEFAULT 1,
  generated_id varchar(80) NOT NULL UNIQUE DEFAULT '0',
  created_by int NOT NULL DEFAULT 0,
  modified_by int NOT NULL DEFAULT 0,
  date_created date NOT NULL,
  time_created time NOT NULL,
  updated_at TIMESTAMP on update CURRENT_TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  deleted_status INT NOT NULL DEFAULT 0,
  deleted_by INT NOT NULL DEFAULT 0,  
  PRIMARY KEY(id),
  FOREIGN KEY(group_id) REFERENCES attachments_group(id)
);


CREATE TABLE user_documents (
  id int NOT NULL AUTO_INCREMENT,
  userid int NOT NULL DEFAULT 0,
  document_id int NOT NULL DEFAULT 0,
  file_upload_name varchar(80) NOT NULL,
  name_specified varchar(150) NOT NULL,
  status_id int NOT NULL DEFAULT 1,
  generated_id varchar(80) NOT NULL UNIQUE DEFAULT '0',
  created_by int NOT NULL DEFAULT 0,
  modified_by int NOT NULL DEFAULT 0,
  date_created date NOT NULL,
  time_created time NOT NULL,
  updated_at TIMESTAMP on update CURRENT_TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  deleted_status INT NOT NULL DEFAULT 0,
  deleted_by INT NOT NULL DEFAULT 0,  
  PRIMARY KEY(id),
  FOREIGN KEY(userid) REFERENCES user_record(id),
  FOREIGN KEY(document_id) REFERENCES documents(id)
);

CREATE TABLE user_passport (
  id int NOT NULL,
  userid int NOT NULL DEFAULT 0,
  passport_user varchar(80) NOT NULL,
  passport_name varchar(80) NOT NULL DEFAULT 'avatar.png',
  file_url text, 
  status_id int NOT NULL DEFAULT 1,
  generated_id varchar(80) NOT NULL UNIQUE DEFAULT '0',
  created_by int NOT NULL DEFAULT 0,
  modified_by int NOT NULL DEFAULT 0,
  date_created date NOT NULL,
  time_created time NOT NULL,
  updated_at TIMESTAMP on update CURRENT_TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  deleted_status INT NOT NULL DEFAULT 0,
  deleted_by INT NOT NULL DEFAULT 0,  
  PRIMARY KEY(id),
  FOREIGN KEY(userid) REFERENCES user_record(id)
);


CREATE TABLE statuses(
id int not null AUTO_INCREMENT,
  status_name varchar(80) DEFAULT '',
  status_description text null,
  generated_id varchar(80) NOT NULL UNIQUE DEFAULT '0',
  created_by int NOT NULL DEFAULT 0,
  modified_by int NOT NULL DEFAULT 0,
  date_created date NOT NULL,
  time_created time NOT NULL,
  updated_at TIMESTAMP on update CURRENT_TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  deleted_status INT NOT NULL DEFAULT 0,
  deleted_by INT NOT NULL DEFAULT 0,  
  PRIMARY KEY(id)
);

CREATE TABLE services(
  id int NOT NULL AUTO_INCREMENT,
  servicename varchar(100) NOT NULL,
  comments text,
  status_id int NOT NULL DEFAULT 1,
  created_by int NOT NULL DEFAULT 0,
  modified_by int NOT NULL DEFAULT 0,
  date_created date NOT NULL,
  time_created time NOT NULL,
  updated_at TIMESTAMP on update CURRENT_TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  deleted_status INT NOT NULL DEFAULT 0,
  deleted_by INT NOT NULL DEFAULT 0,  
  PRIMARY KEY(id)
);

CREATE TABLE account_details (
  id int NOT NULL AUTO_INCREMENT,
  userid int NOT NULL DEFAULT 0,
  account_name varchar(100) NOT NULL,
  bank_name varchar(100) NOT NULL,
  account_number varchar(50) NOT NULL,
  comments text,
  status_id int NOT NULL DEFAULT 1,
  generated_id varchar(80) NOT NULL UNIQUE DEFAULT '0',
  date_created date NOT NULL,
  time_created time NOT NULL,
  updated_at TIMESTAMP on update CURRENT_TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  deleted_status INT NOT NULL DEFAULT 0,
  deleted_by INT NOT NULL DEFAULT 0,  
  PRIMARY KEY(id),
  FOREIGN KEY(userid) REFERENCES user_record(id)
);


CREATE TABLE admin_passwords(
id int not null AUTO_INCREMENT,
  userid int NOT NULL DEFAULT 0,
  pwd_auth_hash varchar(80) DEFAULT '',
  pwd_auth varchar(80) DEFAULT '',
  status_id int NOT NULL DEFAULT 1,
  generated_id varchar(80) NOT NULL UNIQUE DEFAULT '0',
  created_by int NOT NULL DEFAULT 0,
  modified_by int NOT NULL DEFAULT 0,
  date_created date NOT NULL,
  time_created time NOT NULL,
  updated_at TIMESTAMP on update CURRENT_TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  deleted_status INT NOT NULL DEFAULT 0,
  deleted_by INT NOT NULL DEFAULT 0,  
  PRIMARY KEY(id),
  FOREIGN KEY(userid) REFERENCES admin_record(id)
);


CREATE TABLE admin_reset_password (
 id int NOT NULL AUTO_INCREMENT,
  userid INT NOT NULL DEFAULT 0,
  reset_code varchar(80) NOT NULL UNIQUE,
  expire_date date NOT NULL,
  expire_time time NOT NULL,
  status_id int NOT NULL DEFAULT 1,
  generated_id varchar(80) NOT NULL UNIQUE DEFAULT '0',
  date_created date NOT NULL,
  time_created time NOT NULL,
  updated_at TIMESTAMP on update CURRENT_TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  deleted_status INT NOT NULL DEFAULT 0,
  deleted_by INT NOT NULL DEFAULT 0,
  PRIMARY KEY(id),
  FOREIGN KEY(userid) REFERENCES admin_record(id)
);


CREATE TABLE access_group(
  id int NOT NULL AUTO_INCREMENT,
  group_name varchar(100) NOT NULL DEFAULT 0,
  descriptions text,
  status_id int NOT NULL DEFAULT 1,
  generated_id varchar(80) NOT NULL UNIQUE DEFAULT '0',
  created_by int NOT NULL DEFAULT 0,
  modified_by int NOT NULL DEFAULT 0,
  date_created date NOT NULL,
  time_created time NOT NULL,
  updated_at TIMESTAMP on update CURRENT_TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  deleted_status INT NOT NULL DEFAULT 0,
  deleted_by INT NOT NULL DEFAULT 0,
  PRIMARY KEY(id)
);

CREATE TABLE access_permissions (
  id int NOT NULL AUTO_INCREMENT,
  group_id int NOT NULL DEFAULT 0,
  routeLink varchar(100) NOT NULL DEFAULT 0,
  title varchar(100),
  descriptions text,
  status_id int NOT NULL DEFAULT 1,
  generated_id varchar(80) NOT NULL UNIQUE DEFAULT '0',
  created_by int NOT NULL DEFAULT 0,
  modified_by int NOT NULL DEFAULT 0,
  date_created date NOT NULL,
  time_created time NOT NULL,
  updated_at TIMESTAMP on update CURRENT_TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  deleted_status INT NOT NULL DEFAULT 0,
  deleted_by INT NOT NULL DEFAULT 0,
  PRIMARY KEY(id)
);

CREATE TABLE roles (
  id int NOT NULL AUTO_INCREMENT,
  role_name varchar(60) NOT NULL UNIQUE DEFAULT 0,
  descriptions text,
  group_icon text,
  created_by int NOT NULL DEFAULT 0,
  modified_by int NOT NULL DEFAULT 0,
  status_id int NOT NULL DEFAULT 1,
  generated_id varchar(80) NOT NULL UNIQUE DEFAULT '0',
  date_created date NOT NULL,
  time_created time NOT NULL,
  updated_at TIMESTAMP on update CURRENT_TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  deleted_status INT NOT NULL DEFAULT 0,
  deleted_by INT NOT NULL DEFAULT 0,
  PRIMARY KEY(id)
);

CREATE TABLE role_permissions (
  id int NOT NULL AUTO_INCREMENT,
  access_permission_id int NOT NULL DEFAULT 0,
  role_id int NOT NULL DEFAULT 0,
  status_id int NOT NULL DEFAULT 1,
  generated_id varchar(80) NOT NULL UNIQUE DEFAULT '0',
  created_by int NOT NULL DEFAULT 0,
  modified_by int NOT NULL DEFAULT 0,
  date_created date NOT NULL,
  time_created time NOT NULL,
  updated_at TIMESTAMP on update CURRENT_TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  deleted_status INT NOT NULL DEFAULT 0,
  deleted_by INT NOT NULL DEFAULT 0,
  PRIMARY KEY(id),
  FOREIGN KEY(role_id) REFERENCES roles(id),
  FOREIGN KEY(access_permission_id) REFERENCES access_permissions(id)
);

CREATE TABLE admin_app_menu_group (
  id int NOT NULL AUTO_INCREMENT,
  group_name varchar(60) NOT NULL DEFAULT 0,
  descriptions text,
  group_icon text,
  menu_bar varchar(80) NOT NULL DEFAULT '0',
  status_id int NOT NULL DEFAULT 1,
  generated_id varchar(80) NOT NULL UNIQUE DEFAULT '0',
  created_by int NOT NULL DEFAULT 0,
  modified_by int NOT NULL DEFAULT 0,
  date_created date NOT NULL,
  time_created time NOT NULL,
  updated_at TIMESTAMP on update CURRENT_TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  deleted_status INT NOT NULL DEFAULT 0,
  deleted_by INT NOT NULL DEFAULT 0,
  PRIMARY KEY(id)
);


CREATE TABLE admin_app_menu(
  id int NOT NULL AUTO_INCREMENT,
  group_id INT NOT NULL DEFAULT 0,
  role_id INT NOT NULL DEFAULT 0,
  access_permission_id INT NOT NULL DEFAULT 0,
  menu_icon varchar(60) DEFAULT '',
  link_target varchar(40) DEFAULT '',
  descriptions text,
  status_id int NOT NULL DEFAULT 1,
  generated_id varchar(80) NOT NULL UNIQUE DEFAULT '0',
  created_by int NOT NULL DEFAULT 0,
  modified_by int NOT NULL DEFAULT 0,
  date_created date NOT NULL,
  time_created time NOT NULL,
  updated_at TIMESTAMP on update CURRENT_TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  deleted_status INT NOT NULL DEFAULT 0,
  deleted_by INT NOT NULL DEFAULT 0,  
  PRIMARY KEY(id),
  FOREIGN KEY(group_id) REFERENCES admin_app_menu_group(id),
  FOREIGN KEY(access_permission_id) REFERENCES access_permissions(id)
);

CREATE TABLE genders (
  id int NOT NULL AUTO_INCREMENT,
  gender_name varchar(80) NOT NULL UNIQUE,
  status_id int NOT NULL DEFAULT 1,
  generated_id varchar(80) NOT NULL UNIQUE DEFAULT '0',
  created_by int NOT NULL DEFAULT 0,
  modified_by int NOT NULL DEFAULT 0,
  date_created date NOT NULL,
  time_created time NOT NULL,
  updated_at TIMESTAMP on update CURRENT_TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  deleted_status INT NOT NULL DEFAULT 0,
  deleted_by INT NOT NULL DEFAULT 0,
  PRIMARY KEY(id)
);


CREATE TABLE landing_page (
  id int NOT NULL AUTO_INCREMENT,
  access_permission_id INT NOT NULL DEFAULT 0,
  role_id INT NOT NULL DEFAULT 0,
  descriptions text,
  status_id int NOT NULL DEFAULT 1,
  generated_id varchar(80) NOT NULL UNIQUE DEFAULT '0',
  created_by int NOT NULL DEFAULT 0,
  modified_by int NOT NULL DEFAULT 0,
  date_created date NOT NULL,
  time_created time NOT NULL,
  updated_at TIMESTAMP on update CURRENT_TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  deleted_status INT NOT NULL DEFAULT 0,
  deleted_by INT NOT NULL DEFAULT 0,
  PRIMARY KEY(id)
);

CREATE TABLE logs(
  id int NOT NULL AUTO_INCREMENT,
  descriptions text,
  table_info text,
  status_id int NOT NULL DEFAULT 1,
  generated_id varchar(80) NOT NULL UNIQUE DEFAULT '0',
  created_by int NOT NULL DEFAULT 0,
  modified_by int NOT NULL DEFAULT 0,
  date_created date NOT NULL,
  time_created time NOT NULL,
  updated_at TIMESTAMP on update CURRENT_TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  deleted_status INT NOT NULL DEFAULT 0,
  deleted_by INT NOT NULL DEFAULT 0,
  PRIMARY KEY(id)
);

CREATE TABLE verification_tokens(
  id int NOT NULL AUTO_INCREMENT,
  user_email varchar(120) null,
  title varchar(100) null,
  descriptions text null,
  msg text null,
  _token varchar(50) not null,
  messageType varchar(100) not null,
  mailSubject varchar(100) not null,
  mailFrom varchar(120) not null,
  mailFromName varchar(120) not null,
  mailToName varchar(120) not null,
  status_id int NOT NULL DEFAULT 0,
  generated_id varchar(80) NOT NULL UNIQUE DEFAULT '0',
  expire_date date NOT NULL,
  expire_time time NOT NULL,
  date_created date NOT NULL,
  time_created time NOT NULL,
  updated_at TIMESTAMP on update CURRENT_TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY(id)
);


CREATE TABLE post_category(
  id int NOT NULL AUTO_INCREMENT,
  category_name varchar(60) NOT NULL UNIQUE DEFAULT 0,
  descriptions text,
  created_by int NOT NULL DEFAULT 0,
  modified_by int NOT NULL DEFAULT 0,
  status_id int NOT NULL DEFAULT 1,
  generated_id varchar(80) NOT NULL UNIQUE DEFAULT '0',
  date_created date NOT NULL,
  time_created time NOT NULL,
  updated_at TIMESTAMP on update CURRENT_TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  deleted_status INT NOT NULL DEFAULT 0,
  deleted_by INT NOT NULL DEFAULT 0,
  PRIMARY KEY(id)
);


CREATE TABLE posts(
  id int NOT NULL AUTO_INCREMENT,
  post_title text not null,
  post_summary text not null,
  post_body text,
  post_link text not null,
  display_media_status int NOT NULL DEFAULT 0,
  read_more_status int NOT NULL DEFAULT 0,
  read_more_title varchar(50) NOT NULL,
  read_more_type varchar(50) NOT NULL,
  media_height varchar(50) NOT NULL,
  media_width varchar(50) NOT NULL,
  media_measure varchar(50) NOT NULL,
  display_media text,
  media_type varchar(50) NOT NULL,
  category_id int NOT NULL DEFAULT 0,
  created_by int NOT NULL DEFAULT 0,
  modified_by int NOT NULL DEFAULT 0,
  status_id int NOT NULL DEFAULT 1,
  generated_id varchar(80) NOT NULL UNIQUE DEFAULT '0',
  date_created date NOT NULL,
  time_created time NOT NULL,
  updated_at TIMESTAMP on update CURRENT_TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  deleted_status INT NOT NULL DEFAULT 0,
  deleted_by INT NOT NULL DEFAULT 0,
  FOREIGN KEY(category_id) REFERENCES post_category(id),
  PRIMARY KEY(id)
);

CREATE TABLE course_category(
  id int NOT NULL AUTO_INCREMENT,
  category_name varchar(60) NOT NULL UNIQUE DEFAULT 0,
  descriptions text,
  created_by int NOT NULL DEFAULT 0,
  modified_by int NOT NULL DEFAULT 0,
  status_id int NOT NULL DEFAULT 1,
  generated_id varchar(80) NOT NULL UNIQUE DEFAULT '0',
  date_created date NOT NULL,
  time_created time NOT NULL,
  updated_at TIMESTAMP on update CURRENT_TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  deleted_status INT NOT NULL DEFAULT 0,
  deleted_by INT NOT NULL DEFAULT 0,
  PRIMARY KEY(id)
);


CREATE TABLE courses_tbl(
  id int NOT NULL AUTO_INCREMENT,
  post_title text not null UNIQUE DEFAULT 'No title',
  post_summary text not null,
  post_body text,
  post_link text not null,
  display_media_status int NOT NULL DEFAULT 0,
  read_more_status int NOT NULL DEFAULT 0,
  read_more_title varchar(50) NOT NULL,
  read_more_type varchar(50) NOT NULL,
  media_height varchar(50) NOT NULL,
  media_width varchar(50) NOT NULL,
  media_measure varchar(50) NOT NULL,
  display_media text,
  media_type varchar(50) NOT NULL,
  category_id int NOT NULL DEFAULT 0,
  created_by int NOT NULL DEFAULT 0,
  modified_by int NOT NULL DEFAULT 0,
  status_id int NOT NULL DEFAULT 1,
  generated_id varchar(80) NOT NULL UNIQUE DEFAULT '0',
  date_created date NOT NULL,
  time_created time NOT NULL,
  updated_at TIMESTAMP on update CURRENT_TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  deleted_status INT NOT NULL DEFAULT 0,
  deleted_by INT NOT NULL DEFAULT 0,
  FOREIGN KEY(category_id) REFERENCES course_category(id),
  PRIMARY KEY(id)
);

CREATE TABLE media_tbl(
  id int NOT NULL AUTO_INCREMENT,
  media_title text null,
  media_link text not null,
  media_height varchar(50) NOT NULL,
  media_width varchar(50) NOT NULL,
  media_measure varchar(50) NOT NULL,
  media_type varchar(50) NOT NULL,
  created_by int NOT NULL DEFAULT 0,
  modified_by int NOT NULL DEFAULT 0,
  status_id int NOT NULL DEFAULT 1,
  generated_id varchar(80) NOT NULL UNIQUE DEFAULT '0',
  date_created date NOT NULL,
  time_created time NOT NULL,
  updated_at TIMESTAMP on update CURRENT_TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  deleted_status INT NOT NULL DEFAULT 0,
  deleted_by INT NOT NULL DEFAULT 0,
  PRIMARY KEY(id)
);


CREATE TABLE app_settings(
  id int NOT NULL AUTO_INCREMENT,
  company_name varchar(100),
  site_name varchar(100) not null,
  slogan varchar(100),
  mailing_address varchar(100),
  email_one varchar(100),
  email_two varchar(100),
  phone_one varchar(100),
  phone_two varchar(100),
  facebook varchar(100),
  linkedin varchar(100),
  youtube varchar(100),
  twitter varchar(100),
  office_address varchar(100),
  state_name varchar(100),
  country_name varchar(100),
  copyright varchar(100),
  logo_link text,
  descriptions text,
  key_words varchar(100),
  site_status varchar(100),
  status_description varchar(100),
  created_by int NOT NULL DEFAULT 0,
  modified_by int NOT NULL DEFAULT 0,
  status_id int NOT NULL DEFAULT 1,
  generated_id varchar(80) NOT NULL UNIQUE DEFAULT '0',
  date_created date NOT NULL,
  time_created time NOT NULL,
  updated_at TIMESTAMP on update CURRENT_TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  deleted_status INT NOT NULL DEFAULT 0,
  deleted_by INT NOT NULL DEFAULT 0,
  PRIMARY KEY(id)
);


CREATE TABLE notification_tbl(
  id int NOT NULL AUTO_INCREMENT,
  title varchar(80) NOT NULL,
  descriptions text,
  recipient varchar(80) not null DEFAULT 'All',
  created_by int NOT NULL DEFAULT 0,
  modified_by int NOT NULL DEFAULT 0,
  status_id int NOT NULL DEFAULT 1,
  generated_id varchar(80) NOT NULL UNIQUE DEFAULT '0',
  date_created date NOT NULL,
  expire_date date NOT NULL,
  time_created time NOT NULL,
  updated_at TIMESTAMP on update CURRENT_TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  deleted_status INT NOT NULL DEFAULT 0,
  deleted_by INT NOT NULL DEFAULT 0,
  PRIMARY KEY(id)
);


-- Triggers
-- Triggers user_passports
--
DELIMITER $$
CREATE TRIGGER update_user_passport_on_insert AFTER INSERT ON user_passports FOR EACH ROW BEGIN
    DECLARE userid int;
    DECLARE passport_url varchar(80);
    DECLARE time_modified time;
    DECLARE date_modified date;

    set userid = NEW.userid;
    set passport_url = NEW.passport_url;
    set time_modified = NEW.time_modified;
    set date_modified = NEW.date_modified;

    UPDATE user_record
    SET
        passport_url = passport_url,
        time_modified = time_modified,
        date_modified = date_modified
    WHERE
        id = userid;
    END
$$
DELIMITER ;

DELIMITER $$
CREATE TRIGGER update_user_passport_on_update AFTER UPDATE ON user_passports FOR EACH ROW BEGIN
    DECLARE userid int;
    DECLARE passport_url varchar(80);
    DECLARE time_modified time;
    DECLARE date_modified date;

    set userid = NEW.userid;
    set passport_url = NEW.passport_url;

    UPDATE user_record
    SET
        passport_url = passport_url
    WHERE
        id = userid;
    END
$$
DELIMITER ;



DELIMITER $$
CREATE TRIGGER update_user_on_password_update AFTER UPDATE ON user_passwords FOR EACH ROW BEGIN
    DECLARE userid int;
    DECLARE time_modified time;
    DECLARE date_modified date;

    set userid = NEW.userid;
    set state_id = 1;

    UPDATE user_record
    SET
        passport_url = passport_url,
    WHERE
        id = userid;
    END
$$
DELIMITER ;


CREATE VIEW vw_user_record AS SELECT t1.*, t3.firstname as createdByName, t2.file_url 
FROM user_record as t1 
left join user_passport as t2 on t2.userid = t1.id 
left join admin_record as t3 on t3.id = t1.created_by;


CREATE VIEW vw_admin_record AS SELECT t1.*, t3.firstname as createdByName, t2.file_url 
FROM admin_record as t1 
left join admin_passport as t2 on t2.userid = t1.id 
left join admin_record as t3 on t3.id = t1.created_by;

CREATE VIEW vw_posts AS SELECT t1.*, t2.category_name, t3.status_name 
FROM posts as t1 
left join post_category as t2 on t2.id = t1.category_id
left join statuses as t3 on t3.id = t1.status_id;

CREATE VIEW vw_courses AS SELECT t1.*, t4.firstname as createdByName, t2.category_name, t3.status_name 
FROM courses_tbl as t1 
left join course_category as t2 on t2.id = t1.category_id
left join statuses as t3 on t3.id = t1.status_id
left join admin_record as t4 on t4.id = t1.created_by;



INSERT INTO `statuses` (`id`, `status_name`, `status_description`, `generated_id`, `created_by`, `modified_by`, `date_created`, `time_created`, `updated_at`, `deleted_status`, `deleted_by`) 
VALUES (NULL, 'Active', NULL, '6666434232', '0', '0', '2022-10-08', '07:47:17', current_timestamp(), '0', '0');




update `access_permissions` set title = 'View record', descriptions = 'User can view record' where routeLink
 like '%/list%';
 update `access_permissions` set title = 'Create record', descriptions = 'User can create record' where routeLink
 like '%/create%';
 update `access_permissions` set title = 'Manage', descriptions = 'User can manage record' where routeLink
 like '%/manage%';
 update `access_permissions` set title = 'Update batch status', descriptions = 'User can update batch status' where routeLink
 like '%/updatebatch%';
 update `access_permissions` set title = 'Update record', descriptions = 'User can update record' where routeLink
 like '%/update%';
 update `access_permissions` set title = 'Update status', descriptions = 'User can update status' where routeLink
 like '%/status%';
 update `access_permissions` set title = 'Delete', descriptions = 'User can delete record' where routeLink
 like '%/trash%';
 update `access_permissions` set title = 'Manage', descriptions = 'User can assign permission' where routeLink
 like '%/assign%';
 update `access_permissions` set title = 'Manage', descriptions = 'User can remove permission' where routeLink
 like '%/remove%';

  update `access_permissions` set title = 'Manage', descriptions = 'User can upload' where routeLink
 like '%/upload%';

 update `access_permissions` set title = 'Manage', descriptions = 'User can upload passport' where routeLink
 like '%/passport%';

  update `access_permissions` set title = 'Manage', descriptions = 'User can view dashboard' where routeLink
 like '%/dashboard%';

 update `access_permissions` set descriptions = 'User can delete this record'


 update `access_permissions` set title = 'View record', descriptions='User can view record' where route_name like
  'list_%' and routeLink like 'app/%'

  select * from `access_permissions` where route_name like
  'list_%' and routeLink like 'app/%'

  select * from `access_permissions` where routeLink like '%/list' and routeLink not LIKE 'app/%';

select * from `access_permissions` where routeLink LIKE '%manage/status%';
select * from `access_permissions` where routeLink LIKE '%status/updatebatch%';

   update `access_permissions` set title = 'Read record', 
   descriptions='User can read record' where routeLink like '%/list' and routeLink not LIKE 'app/%';

   select * from `access_permissions` where routeLink like '%/create' and routeLink LIKE 'app/%';

  update `access_permissions` set title = 'Create record', 
   descriptions='User can create record' where routeLink like '%/create' and routeLink LIKE 'app/%';

   update `access_permissions` set title = 'Update status', 
   descriptions='User can update status' where routeLink LIKE '%manage/status%';
      update `access_permissions` set title = 'Update batch status', 
   descriptions='User can update batch status' where routeLink LIKE '%status/updatebatch%';


   update `access_permissions` set title = 'Upload passport', 
   descriptions='User can upload passport' where routeLink like '%/passport' and routeLink LIKE 'app/%';