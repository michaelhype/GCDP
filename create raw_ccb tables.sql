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
	creator_id int NULL,
	modifier_id int NULL,
	created datetime NULL,
	modified datetime NULL
)

drop table raw_ccb.campusactions;

create table raw_ccb.campusactions
(
	id int_idENTITY (1,1),
	campusid int NOT NULL,
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
	has_max_checkin_setups bool,
	creator_id int NULL,
	modifier_id int NULL,
	created datetime NULL,
	modified datetime NULL
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
