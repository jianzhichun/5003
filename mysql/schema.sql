CREATE DATABASE phpmyadmin;
CREATE DATABASE magic;
CREATE TABLE magic.magic_api_file (
    file_path varchar(512),
    file_content mediumtext,
    PRIMARY KEY (file_path)
);