drop table raw_ccb.campus;

create table raw_ccb.campus
(
	id int NOT NULL,
	"name" nvarchar (64) NULL,
	country nvarchar (32) NULL,
	sign_up_form_id int NULL,
	timezone nvarchar (64) NULL,
	locale nvarchar (32) NULL,
	addressstreet nvarchar (128) NULL,
	addresscity nvarchar (64) NULL,
	addressstate nvarchar (32) NULL,
	addresszip nvarchar (16) NULL,
	longitude nvarchar (32) NULL,
	latitude nvarchar (32) NULL,
	country_iso nvarchar (32) NULL,
	can_administrate_checkin bool,
	can_administrate_connect_app bool,
	can_create_checkin_setup bool,
	can_create_individuals bool,
	can_edit_campus_financial_settings bool,
	can_edit_campus_settings bool,
	can_edit_schedules bool,
	can_give bool,
	can_give_new_giving bool,
	can_manage_campus_merchant bool,
	can_perform_volunteer_checkin bool,
	can_send_checkin_texts bool,
	can_split_gifts bool,
	can_view_all_events_admin_calendar bool,
	can_view_campus_wide_calendar bool,
	can_view_facilities_calendar bool,
	has_max_checkin_setups bool
)

drop table raw_ccb.checkinsetup;

create table raw_ccb.checkinsetup
(
	id int,
	campusid nvarchar (21) NULL,
	"name" nvarchar (43) NULL,
	"type" nvarchar (26) NULL,
	background_image nvarchar (142) NULL,
	use_default_background bool NULL,
	token nvarchar (28) NULL,
	included_event_types nvarchar (24) NULL,
	can_edit_setup bool,
	creator_id int NULL,
	modifier_id int NULL,
	created datetime NULL,
	modified datetime NULL
)

drop table raw_ccb.checkinsetuptimes;

create table raw_ccb.checkinsetuptimes
(
	id int_idENTITY (1,1) PRIMARY KEY,
	checkinsetupid int NOT NULL,
	"time" nvarchar (64) NULL,
	raw_time datetime NULL,
	creator_id int NULL,
	modifier_id int NULL,
	created datetime NULL,
	modified datetime NULL
)

drop table raw_ccb.church;

create table raw_ccb.church
(
	id int not null,
	"name" nvarchar(64) NULL,
	api_base_url nvarchar(128) NULL,
	color nvarchar(32) NULL,
	subdomain nvarchar(128) NULL,
	public_find_group_name nvarchar(32) NULL,
	is_fake bool NULL,
	is_onboarding bool NULL,
	base_url nvarchar(128) NULL,
	can_buy_software int,
	can_checkin_checkout int,
	can_create_checkin_multi_times int,
	can_create_checkin_self_type int,
	can_give_new_giving int,
	can_give_public_gifts int,
	can_give_publicly int,
	can_give_with_credit_cards int,
	can_upgrade_to_international_address_autocomplete int,
	can_use_pushpay_auth int,
	can_view_checkin_saved_setups int,
	can_view_checkin_text_messaging int,
	can_view_department_directors int,
	can_view_luna_scheduling int,
	can_view_public_calendar int,
	can_view_public_forms int,
	can_view_public_groups int,
	features nvarchar(128) NULL,
	creator_id int NULL,
	modifier_id int NULL,
	created datetime NULL,
	modified datetime NULL
)

drop table raw_ccb.family;

create table raw_ccb.family
(
	id int not NULL,
	last_name nvarchar(32) NULL,
	message varchar(512) NULL,
	addressstreet varchar(128) NULL,
	addresscity varchar(64) NULL,
	addressstate nvarchar(32) NULL,
	addresszip varchar(16) NULL,
	can_add_family_memberId int,
	can_create_family_memberId int,
	can_edit_checkin_messageId int,
	can_edit_inactiveId int,
	can_edit_profileId int,
	can_include_family_attendanceId int,
	can_include_family_givingId int,
	can_include_family_servingId int,
	can_remove_family_memberId int,
	creator_id int NULL,
	modifier_id int NULL,
	created datetime NULL,
	modified datetime NULL
)

drop table raw_ccb.individual;

create table raw_ccb.individual
(
	id int NOT NULL,
	sync_id int NULL,
	other_id int NULL,
	giving_number int NULL,
	campus_id int NULL,
	family_id int NULL,
	family_image varchar(256) NULL,
	family_position varchar(32) NULL,
	first_name varchar(32) NULL,
	last_name varchar(32) NULL,
	middle_name varchar(32) NULL,
	legal_first_name varchar(32) NULL,
	full_name varchar(64) NULL,
	salutation varchar(16) NULL,
	suffix varchar(16) NULL,
	image varchar(256) NULL,
	email varchar(64) NULL,
	addressstreet varchar(128) NULL,
	addresscity varchar(64) NULL,
	addressstate nvarchar(32) NULL,
	addresszip varchar(16) NULL,
	allergies varchar(256) NULL,
	confirmed_no_allergies bool NULL,
	mobile_carrier_id int NULL,
	phone_mobile varchar(16),
	gender varchar(6) NULL,
	marital_status varchar(16) NULL,
	birthday datetime NULL,
	anniversary datetime NULL,
	spouce_id int,
	spouse_phone varchar(16),
	spouse_first_name varchar(16),
	spouse_last_name varchar(32),
	spouse_name varchar(64),
	baptized bool NULL,
	deceased datetime NULL,
	membership_type_id int NULL,
	membership_date datetime NULL,
	membership_end datetime NULL,
	receive_email_from_church bool NULL,
	default_new_group_messages varchar(32) NULL,
	default_new_group_comments varchar(32) NULL,
	default_new_group_digest varchar(32) NULL,
	default_new_group_sms varchar(32) NULL,
	privacy_settings_id int NULL,
	active bool NULL,
	images_thumbnail varchar(64),
	images_large varchar(64),
	images_medium varchar(64),
	creator_id int NULL,
	modifier_id int NULL,
	created datetime NULL,
	modified datetime NULL
)

drop table raw_ccb.givingtransaction;

create table raw_ccb.givingtransaction
(
	id int,
	"date" datetime NULL,
	grouping_id int NULL,
	payment_type nvarchar(32) NULL,
	deposit_id int NULL,
	campusId int,
	can_create_refundId int,
	individualId int,
	first_name nvarchar(26) NULL,
	last_name nvarchar(26) NULL,
	creator_id int NULL,
	modifier_id int NULL,
	created datetime NULL,
	modified datetime NULL
)

drop table raw_ccb.givingtransactionsplit;

create table raw_ccb.givingtransactionsplit
(
	id int,
	givingtransactionid int NULL,
	fundid int NULL,
	fundname varchar(64) null,
	amount nvarchar(25) NULL,
	tax_deductible bool NULL,
	creator_id int NULL,
	modifier_id int NULL,
	created datetime NULL,
	modified datetime NULL
)

create schema raw_planningcenter;

drop table raw_planningcenter.person;

CREATE TABLE raw_planningcenter.person(	id int,	dataId int NULL,	accounting_administrator bool NULL,	anniversary datetime NULL,	avatar nvarchar(106) NULL,	birthdate datetime NULL,	child bool NULL,	created_at datetime NULL,	demographic_avatar_url nvarchar(106) NULL,	directory_status nvarchar(29) NULL,	first_name nvarchar(28) NULL,	gender nvarchar(21) NULL,	last_name nvarchar(30) NULL,	"name" nvarchar(39) NULL,	passed_background_check bool NULL,	site_administrator bool NULL,	"status" nvarchar(26) NULL,	updated_at datetime NULL,	can_filter nvarchar(39) NULL,	can_include nvarchar(42) NULL,	can_order_by nvarchar(44) NULL,	can_query_by nvarchar(56) NULL,	"type" nvarchar(26) NULL,	primary_campusId int,	relationshipsId int NULL)
drop table raw_planningcenter.personAddress;

create table raw_planningcenter.personAddress
(
	id int not null,	city nvarchar(34) NULL,	created_at datetime NULL,	location nvarchar(24) NULL,	"primary" bool NULL,	state nvarchar(22) NULL,	street nvarchar(39) NULL,	updated_at datetime NULL,	zip nvarchar(25) NULL
)

drop table raw_planningcenter.personEmail;

create table raw_planningcenter.personEmail
(	id int not NULL,
	personId int not null,	address nvarchar(43) NULL,	blocked bool NULL,	created_at datetime NULL,	location nvarchar(24) NULL,	"primary" bool NULL,	updated_at datetime NULL)exec dbo.jsonCreateTables '{
            "type": "Email",
            "id": "94559",
            "attributes": {
                "address": "jpickwell@lifepoint.org",
                "blocked": false,
                "created_at": "2012-09-05T01:00:45Z",
                "location": "Home",
                "primary": true,
                "updated_at": "2018-10-08T17:45:23Z"
            },
            "relationships": {
                "person": {
                    "data": {
                        "type": "Person",
                        "id": "86051"
                    }
                }
            },
            "links": {
                "self": "https://api.planningcenteronline.com/people/v2/emails/94559"
            }
        }';


create procedure dbo.jsonCreateTables
(
	@JsonData nvarchar(max)
)
as
/*
This code takes a JSON input string and automatically generates
SQL Server CREATE TABLE statements to make it easier
to convert serialized data into a database schema.

It is not perfect, but should provide a decent starting point when starting
to work with new JSON files.

A blog post with more information can be found at https://bertwagner.com/2018/05/22/converting-json-to-sql-server-create-table-statements/
*/
SET NOCOUNT ON;

DECLARE 
	@RootTableName nvarchar(4000) = N'AppInstance',
	@Schema nvarchar(128) = N'dbo',
	@DefaultStringPadding smallint = 20;

DROP TABLE IF EXISTS ##parsedJson;
WITH jsonRoot AS (
	SELECT 
		0 as parentLevel, 
		CONVERT(nvarchar(4000),NULL) COLLATE Latin1_General_BIN2 as parentTableName, 
		0 AS [level], 
		[type] ,
		@RootTableName COLLATE Latin1_General_BIN2 AS TableName,
		[key] COLLATE Latin1_General_BIN2 as ColumnName,
		[value],
		ROW_NUMBER() OVER (ORDER BY (SELECT 1)) AS ColumnSequence
	FROM 
		OPENJSON(@JsonData, '$')
	UNION ALL
	SELECT 
		jsonRoot.[level] as parentLevel, 
		CONVERT(nvarchar(4000),jsonRoot.TableName) COLLATE Latin1_General_BIN2, 
		jsonRoot.[level]+1, 
		d.[type],
		CASE WHEN jsonRoot.[type] IN (4,5) THEN CONVERT(nvarchar(4000),jsonRoot.ColumnName) ELSE jsonRoot.TableName END COLLATE Latin1_General_BIN2,
		CASE WHEN jsonRoot.[type] IN (4) THEN jsonRoot.ColumnName ELSE d.[key] END,
		d.[value],
		ROW_NUMBER() OVER (ORDER BY (SELECT 1)) AS ColumnSequence
	FROM 
		jsonRoot
		CROSS APPLY OPENJSON(jsonRoot.[value], '$') d
	WHERE 
		jsonRoot.[type] IN (4,5) 
), IdRows AS (
	SELECT 
		-2 as parentLevel,
		null as parentTableName,
		-1 as [level],
		null as [type],
		TableName as Tablename,
		TableName+'Id' as columnName, 
		null as [value],
		0 as columnsequence
	FROM 
		(SELECT DISTINCT tablename FROM jsonRoot) j
), FKRows AS (
	SELECT 
		DISTINCT -1 as parentLevel,
		null as parentTableName,
		-1 as [level],
		null as [type],
		TableName as Tablename,
		parentTableName+'Id' as columnName, 
		null as [value],
		0 as columnsequence
	FROM 
		(SELECT DISTINCT tableName,parentTableName FROM jsonRoot) j
	WHERE 
		parentTableName is not null
)
SELECT 
	*,
	CASE [type]
		WHEN 1 THEN 
			CASE WHEN TRY_CONVERT(datetime2, [value], 127) IS NULL THEN 'nvarchar' ELSE 'datetime2' END
		WHEN 2 THEN 
			CASE WHEN TRY_CONVERT(int, [value]) IS NULL THEN 'float' ELSE 'int' END
		WHEN 3 THEN 
			'bit'
		END COLLATE Latin1_General_BIN2 AS DataType,
	CASE [type]
		WHEN 1 THEN 
			CASE WHEN TRY_CONVERT(datetime2, [value], 127) IS NULL THEN MAX(LEN([value])) OVER (PARTITION BY TableName, ColumnName) + @DefaultStringPadding ELSE NULL END
		WHEN 2 THEN 
			NULL
		WHEN 3 THEN 
			NULL
		END AS DataTypePrecision
INTO ##parsedJson
FROM jsonRoot
WHERE 
	[type] in (1,2,3)
UNION ALL SELECT IdRows.parentLevel, IdRows.parentTableName, IdRows.[level], IdRows.[type], IdRows.TableName, IdRows.ColumnName, IdRows.[value], -10 AS ColumnSequence, 'int IDENTITY(1,1) PRIMARY KEY' as datatype, null as datatypeprecision FROM IdRows 
UNION ALL SELECT FKRows.parentLevel, FKRows.parentTableName, FKRows.[level], FKRows.[type], FKRows.TableName, FKRows.ColumnName, FKRows.[value], -9 AS ColumnSequence, 'int' as datatype, null as datatypeprecision FROM FKRows 

-- For debugging:
-- SELECT * FROM ##parsedJson ORDER BY ParentLevel, level, tablename, columnsequence

DECLARE @CreateStatements nvarchar(max);

SELECT
	@CreateStatements = COALESCE(@CreateStatements + CHAR(13) + CHAR(13), '') + 
	'CREATE TABLE ' + @Schema + '.' + TableName + CHAR(13) + '(' + CHAR(13) +
		STRING_AGG( ColumnName + ' ' + DataType + ISNULL('('+CAST(DataTypePrecision AS nvarchar(20))+')','') +  CASE WHEN DataType like '%PRIMARY KEY%' THEN '' ELSE ' NULL' END, ','+CHAR(13)) WITHIN GROUP (ORDER BY ColumnSequence) 
	+ CHAR(13)+')'
FROM
	(SELECT DISTINCT 
		j.TableName, 
		j.ColumnName,
		MAX(j.ColumnSequence) AS ColumnSequence, 
		j.DataType, 
		j.DataTypePrecision, 
		j.[level] 
	FROM 
		##parsedJson j
		CROSS APPLY (SELECT TOP 1 ParentTableName + 'Id' AS ColumnName FROM ##parsedJson p WHERE j.TableName = p.TableName ) p
	GROUP BY
		j.TableName, j.ColumnName,p.ColumnName, j.DataType, j.DataTypePrecision, j.[level] 
	) j
GROUP BY
	TableName

create table #t(sql nvarchar(max));
insert into #t(sql) values(@CreateStatements);
select * from #t;
drop table #t;
PRINT @CreateStatements;