USE [master]
GO

drop database [raw_planningCenter]
go

create database [raw_planningCenter]
(name = N'raw_planningCenter', filename = N'D:\rdsdbdata\DATA\raw_planningCenter.mdf', SIZE = 10MB, MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
log on
(name = N'raw_planningCenter_log', filename = N'D:\rdsdbdata\DATA\raw_planningCenter_log.ldf', SIZE = 10MB, MAXSIZE = 2048GB, FILEGROWTH = 10%)
go

