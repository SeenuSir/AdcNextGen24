create database DCF
use DCF;
create table if not exists Users  (
    user_id bigint primary key,
     username varchar(20) unique not null,
     password varchar(20)  not null,
     email  varchar(20) unique not null,
     role varchar(20) not null );
create table if not exists Subscriptions(
user_id bigint,
subscription_id varchar(20) unique not null,
subscription_type varchar(20) not null,
subscription_start_date Date not null,
subscription_end_date Date not null,
subscription_amount float not null,
 foreign key (user_id) references Users(user_id)
 );
 create table if not exists MinimumDonation (
 donation_id varchar(50) primary key,
 minimum_amount float not null
  );
  create table if not exists SubAdmins(
  subadmin_id varchar(20) primary key,
  user_id bigint,
  foreign key (user_id) references Users(user_id)
  );
 create table if not exists Blood_donars(
 donors_id varchar(20) primary key,
 donor_name varchar(50) not null,
 blood_group varchar(20) not null,
 contact_info varchar(20) not null,
 donation_date Date
 );
 create table if not exists Upload_Magazine (
 magazine_id varchar(25) primary key,
 magazine_name varchar(50) not null,
 upload_date Date not null,
 page_number int,
 content text not null,
 month varchar(20) not null
 );
 create table if not exists Needy_People(
 needy_id  varchar(25) primary key,
 user_id bigint,
 assistance_needed varchar(55),
 amount_requested float,
 amount_received float,
 announcement_date date,
 foreign key (user_id) references Users (user_id)
);
 create table if not exists Programs (
    program_id int  primary key,
    program_name varchar(255) not null,
    program_date date not null,
    status varchar(20) not null
);
create table if not exists Videos (
    video_id  varchar(255) primary key,
    video_title varchar(255) not null,
    video_url varchar(255) not null,
    upload_date date not null
);
create table if not exists DCFTeam (
    team_member_id varchar(255) primary key,
    member_name varchar(255) not null,
    role enum('user','administrator') not null,
    location varchar(255)
);
create table if not exists Notifications (
    notification_id varchar(255) primary key,
    notification_content TEXT not null,
    notification_date date not null
);
create table if not exists HealthCardSubscribers (
    subscriber_id varchar(255) primary key,
    user_id bigint,
    health_card_number varchar(20) ,
    subscription_start_date date not null,
    subscription_end_date date ,
    foreign key (user_id) references Users(user_id)
);
create table if not exists MagazineSubscribers (
    subscriber_id varchar(255) primary key,
    user_id bigint,
    subscription_start_date date not null,
    subscription_end_date date,
	foreign key (user_id) references Users(user_id)
);

create table if not exists DonationsList (
    donation_id varchar(255) primary key,
    user_id bigint,
    donation_date date not null,
    amount float not null,
    foreign key (user_id) references Users(user_id)
);




 
 
 