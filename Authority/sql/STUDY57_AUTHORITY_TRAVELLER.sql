create table AUTHORITY_TRAVELLER
(
    ID              VARCHAR2(32) default SYS_GUID() not null
        primary key,
    NAME            VARCHAR2(20),
    SEX             VARCHAR2(20),
    PHONENUM        VARCHAR2(20),
    CREDENTIALSTYPE NUMBER,
    CREDENTIALSNUM  VARCHAR2(50),
    TRAVELLERTYPE   NUMBER
)
/

comment on table AUTHORITY_TRAVELLER is '旅客表'
/

comment on column AUTHORITY_TRAVELLER.ID is '主键uuid'
/

comment on column AUTHORITY_TRAVELLER.NAME is '姓名'
/

comment on column AUTHORITY_TRAVELLER.SEX is '性别'
/

comment on column AUTHORITY_TRAVELLER.PHONENUM is '电话号码'
/

comment on column AUTHORITY_TRAVELLER.CREDENTIALSTYPE is '证件类型（0身份证 1护照 2军官证）'
/

comment on column AUTHORITY_TRAVELLER.CREDENTIALSNUM is '证件号码'
/

comment on column AUTHORITY_TRAVELLER.TRAVELLERTYPE is '旅客类型(人群) 0 成人 1 儿童'
/

INSERT INTO STUDY57.AUTHORITY_TRAVELLER (ID, NAME, SEX, PHONENUM, CREDENTIALSTYPE, CREDENTIALSNUM, TRAVELLERTYPE) VALUES ('3FE27DF2A4E44A6DBC5D0FE4651D3D3E', '张龙', '男', '13333333333', 0, '123456789009876543', 0);
INSERT INTO STUDY57.AUTHORITY_TRAVELLER (ID, NAME, SEX, PHONENUM, CREDENTIALSTYPE, CREDENTIALSNUM, TRAVELLERTYPE) VALUES ('EE7A71FB6945483FBF91543DBE851960', '张小龙', '男', '15555555555', 0, '987654321123456789', 1);