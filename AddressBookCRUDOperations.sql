/*UC1*/
/*Creating the Address book Database*/
create database addressBook_Services
/*Switching to Address book Database*/
use addressBook_Services
/*UC2*/
/*Creating Address book table*/
create table addressBook_Table
( firstName varchar(50) not null,
 secondName varchar(50) not null,
 address varchar(50) not null,
 city varchar(50) not null,
 state varchar(50) not null,
 zip bigint not null,
 phoneNumber bigint not null,
 emailId varchar(50) not null
 );
 /*UC3*/
 /*Inserting contacts to Address Book table.*/
  insert into addressBook_Table (firstName, secondName, address, city, state, zip, phoneNumber, emailId)
 values
 ('Chetan', 'Rote', 'Kisanrao Nagar', 'Jalgaon', 'Maharashtra', 9865478596, 425001, 'chetan@gmail.com'),
 ('Kunal', 'Warke', 'Lohegaon', 'Pune', 'Maharashtra', 8569547856, 414245, 'kunal@gmail.com'),
 ('Shubham', 'Sapkale', 'Raisoni', 'Aurangabad', 'Maharashtra', 954684552, 425322, 'shubham@gmail.com'),
 ('Aashish', 'Patil', 'Kharghar', 'Navi Mumbai', 'Maharashtra', 7589654125, 402325, 'patil@gmail.com');
 /*Displaying the contacts from table*/
 select * from addressBook_Table
 /*UC4*/
 /*Edit existing contact using their name*/
 update addressBook_Table set address = 'Dhayari' 
where firstName = 'Kunal' and secondName = 'Warke';
/*UC5*/
/* Delete the row entry from the address book table where name matches */
 delete from addressBook_Table where firstName ='Shubham' and secondName = 'Sapkale';