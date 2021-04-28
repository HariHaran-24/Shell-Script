echo "show all tables"
#Create table
sudo mysql -uroot -p'hari123' <<EOFMYSQL
use person;
drop table details;
create table details(
    id int NOT NULL AUTO_INCREMENT,
    name varchar(20),
    age int,
    role varchar(20),
    PRIMARY KEY (id)
);
show tables;

EOFMYSQL

#Insert Values
sudo mysql -uroot -p'hari123' <<EOFMYSQL
use person;
insert into details (name,age,role) values ("hari",20,"employee");
insert into details (name,age,role) values ("guna",21,"student");

EOFMYSQL

#Get the Values

read -p  "Enter The id to get details:" id
sudo mysql -uroot -p'hari123' <<EOFMYSQL
use person;
Select * from details  where id=$id;
EOFMYSQL


#Update the Values

read -p "Enter the id and column and value to update:" id col val
echo $id $col $val

sudo mysql -uroot -p'hari123' <<EOFMYSQL
use person;
Update details Set $col=$val where id=$id;
EOFMYSQL

echo "Table"

sudo mysql -uroot -p'hari123' <<EOFMYSQL
use person;
Select * from details ;
EOFMYSQL



