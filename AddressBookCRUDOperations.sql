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
 ('Rohan', 'Sharma', 'Nagar', 'Vasant kunj', 'Delhi', 9865478596, 110057, 'rohan@gmail.com'),
 ('Kartik', 'Keni', 'Sec1', 'Kochi', 'Kerala', 8569547856, 754565, 'kartik@gmail.com'),
 ('Shubham', 'Dubey', 'Kp nagar', 'Bhopal', 'MP', 954684552, 321546, 'shubham@gmail.com'),
 ('Aashish', 'Verma', 'Dosa', 'Jaipur', 'Rajasthan', 7589654125, 402325, 'aashish@gmail.com');
 /*Displaying the contacts from table*/
 select * from addressBook_Table
 /*UC4*/
 /*Edit existing contact using their name*/
 update addressBook_Table set address = 'Dhayari' 
where firstName = 'Kunal' and secondName = 'Warke';
/*UC5*/
/* Delete the row entry from the address book table where name matches */
 delete from addressBook_Table where firstName ='Shubham' and secondName = 'Sapkale';
 /*UC6*/
 /* Displaying the contact from the address book table matching the state */
 select * from addressBook_Table
 where state = 'Maharashtra';
 /* Displaying the contact from the address book table matching the city */
 select * from addressBook_Table
 where city = 'Pune';

 /*UC7*/
 /* displaying the count of contacts by city*/
 select city,count(*) as 'Number of Contacts'
 from addressBook_Table 
 group by city;
 /* displaying the count of contacts by state*/
 select state,count(*) as 'Number of Contacts'
 from addressBook_Table 
 group by state;
