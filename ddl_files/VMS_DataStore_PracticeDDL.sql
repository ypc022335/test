/*
Data Store: VMS_DataStore_Practice
Created: 2016-11-23T12:45:37Z
By: SnehalH
Appian Version: 16.2.0.0
Target Database: MySQL 5.6.22
Database Driver: MySQL Connector Java mysql-connector-java-5.1.38 ( Revision: fe541c166cec739c74cc727c5da96c1028b4834a )
*/

/* UPDATE DDL */
/* DROP AND CREATE DDL */
/* WARNING: The DDL commented out below will drop and re-create all tables.*/
    drop table if exists `vmsadmindata`;

    drop table if exists `vmsmikedevice`;

    drop table if exists `vmspartsid`;

    drop table if exists `vmspartsrequired`;

    drop table if exists `vmsscheduletable`;

    drop table if exists `vmsseniormanager`;

    drop table if exists `vmsvehicleinformation`;

    drop table if exists `vmsvehiclestatus`;

    create table `vmsadmindata` (
        `issueid` integer not null auto_increment,
        `systemusernametext` varchar(255),
        `issuecategorytext` varchar(255),
        `issuedescriptiontext` varchar(255),
        `issuesolutiontext` varchar(255),
        primary key (`issueid`)
    ) ENGINE=InnoDB;

    create table `vmsmikedevice` (
        a_id bigint not null auto_increment,
        `requestid` integer,
        `date` date,
        `time` integer,
        `maintainencestatus` varchar(255),
        `tableid` integer,
        primary key (a_id)
    ) ENGINE=InnoDB;

    create table `vmspartsid` (
        `partsid` varchar(255) not null,
        `partsname` varchar(255),
        `status` varchar(255),
        primary key (`partsid`)
    ) ENGINE=InnoDB;

    create table `vmspartsrequired` (
        a_id bigint not null auto_increment,
        `requestid` integer,
        `partsid` varchar(255),
        primary key (a_id)
    ) ENGINE=InnoDB;

    create table `vmsscheduletable` (
        `id` integer not null auto_increment,
        `date` date,
        `time` integer,
        `availabilitystatus` varchar(255),
        primary key (`id`)
    ) ENGINE=InnoDB;

    create table `vmsseniormanager` (
        a_id bigint not null auto_increment,
        `requestid` integer,
        `vehiclemodel` varchar(255),
        `issuetype` varchar(255),
        primary key (a_id)
    ) ENGINE=InnoDB;

    create table `vmsvehicleinformation` (
        `requestid` integer not null auto_increment,
        `customername` varchar(255),
        `customercontactnumber` varchar(255),
        `customeremailid` varchar(255),
        `vehiclecategory` varchar(255),
        `vehiclemodel` varchar(255),
        `vehicleplatenumber` varchar(255),
        `vehiclelicensenumber` varchar(255),
        `date` date,
        primary key (`requestid`)
    ) ENGINE=InnoDB;

    create table `vmsvehiclestatus` (
        `requestid` integer not null,
        `maintenancestatus` varchar(255),
        primary key (`requestid`)
    ) ENGINE=InnoDB;

