use university_db;
drop table if exists applicant_account_active_status;
drop table if exists applicant_account;
create table applicant_account
(
applicant_id bigint primary key not null auto_increment,
email_id char(100) not null unique,
first_name char(35) not null,
last_name char(35) not null,
password char(100) not null,
password_key char(100) not null,
mobile_number char(15) not null unique
);
create table applicant_account_active_status
(
applicant_id bigint primary key,
code_sent_to_email char(6) not null,
code_sent_to_mobile_number char(6) not null,
email_verification_status char(1) not null,
mobile_number_verification_status char(1) not null,
foreign key (applicant_id) references applicant_account(applicant_id)
);