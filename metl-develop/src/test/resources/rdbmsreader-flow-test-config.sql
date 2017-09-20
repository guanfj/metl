DELETE FROM METL_FLOW_STEP_LINK WHERE SOURCE_STEP_ID IN (SELECT ID FROM METL_FLOW_STEP WHERE FLOW_ID IN (SELECT ID FROM METL_FLOW WHERE PROJECT_VERSION_ID='de12fc2b-e9f2-4f8d-8dd5-682af7083e21' ));
DELETE FROM METL_FLOW_STEP WHERE FLOW_ID IN (SELECT ID FROM METL_FLOW WHERE PROJECT_VERSION_ID='de12fc2b-e9f2-4f8d-8dd5-682af7083e21' );
DELETE FROM METL_FLOW_PARAMETER WHERE FLOW_ID IN (SELECT ID FROM METL_FLOW WHERE PROJECT_VERSION_ID='de12fc2b-e9f2-4f8d-8dd5-682af7083e21' );
DELETE FROM METL_FLOW WHERE PROJECT_VERSION_ID='de12fc2b-e9f2-4f8d-8dd5-682af7083e21' ;
DELETE FROM METL_COMPONENT_ATTRIB_SETTING WHERE COMPONENT_ID IN (SELECT ID FROM METL_COMPONENT WHERE PROJECT_VERSION_ID='de12fc2b-e9f2-4f8d-8dd5-682af7083e21' ) AND ATTRIBUTE_ID in (SELECT ID FROM METL_MODEL_ATTRIB WHERE ENTITY_ID IN (SELECT ID FROM METL_MODEL_ENTITY WHERE MODEL_ID IN (SELECT ID FROM METL_MODEL WHERE PROJECT_VERSION_ID='de12fc2b-e9f2-4f8d-8dd5-682af7083e21' )));
DELETE FROM METL_COMPONENT_ENTITY_SETTING WHERE COMPONENT_ID IN (SELECT ID FROM METL_COMPONENT WHERE PROJECT_VERSION_ID='de12fc2b-e9f2-4f8d-8dd5-682af7083e21' );
DELETE FROM METL_COMPONENT_SETTING WHERE COMPONENT_ID IN (SELECT ID FROM METL_COMPONENT WHERE PROJECT_VERSION_ID='de12fc2b-e9f2-4f8d-8dd5-682af7083e21' );
DELETE FROM METL_COMPONENT WHERE PROJECT_VERSION_ID='de12fc2b-e9f2-4f8d-8dd5-682af7083e21' ;
DELETE FROM METL_RESOURCE_SETTING WHERE RESOURCE_ID IN (SELECT ID FROM METL_RESOURCE WHERE PROJECT_VERSION_ID='de12fc2b-e9f2-4f8d-8dd5-682af7083e21' );
DELETE FROM METL_RESOURCE WHERE PROJECT_VERSION_ID='de12fc2b-e9f2-4f8d-8dd5-682af7083e21' ;
DELETE FROM METL_MODEL_ATTRIB WHERE ENTITY_ID IN (SELECT ID FROM METL_MODEL_ENTITY WHERE MODEL_ID in (SELECT ID FROM METL_MODEL WHERE PROJECT_VERSION_ID='de12fc2b-e9f2-4f8d-8dd5-682af7083e21' ));
DELETE FROM METL_MODEL_ENTITY WHERE MODEL_ID in (SELECT ID FROM METL_MODEL WHERE PROJECT_VERSION_ID='de12fc2b-e9f2-4f8d-8dd5-682af7083e21' );
DELETE FROM METL_MODEL WHERE PROJECT_VERSION_ID='de12fc2b-e9f2-4f8d-8dd5-682af7083e21' ;
DELETE FROM METL_FOLDER WHERE PROJECT_VERSION_ID='de12fc2b-e9f2-4f8d-8dd5-682af7083e21';
DELETE FROM METL_PROJECT_VERSION WHERE ID='de12fc2b-e9f2-4f8d-8dd5-682af7083e21';
DELETE FROM METL_PROJECT WHERE ID='58241332-d21d-4ddf-8e79-0a624ad63c20';
insert into METL_PROJECT (ID, NAME, DESCRIPTION, DELETED, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('58241332-d21d-4ddf-8e79-0a624ad63c20','RDBMSReader Flow Test','This project contains tests for Metl.  It is run during the build.',0,{ts '2015-12-02 07:56:34.106'},null,null,{ts '2015-12-02 07:57:01.687'});
insert into METL_PROJECT_VERSION (ID, VERSION_LABEL, PROJECT_ID, ORIG_VERSION_ID, DESCRIPTION, ARCHIVED, DELETED, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('de12fc2b-e9f2-4f8d-8dd5-682af7083e21','1.0','58241332-d21d-4ddf-8e79-0a624ad63c20',null,null,0,0,{ts '2015-12-02 07:56:34.106'},null,null,{ts '2015-12-02 07:56:34.107'});
insert into METL_MODEL (ID, ROW_ID, PROJECT_VERSION_ID, DELETED, NAME, SHARED, FOLDER_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('7112cb2c-5966-4e1d-b314-4936a56e9495','108dabf4-31c1-44fe-81e1-a7851974d31f','de12fc2b-e9f2-4f8d-8dd5-682af7083e21',0,'model1',0,null,{ts '2015-12-02 07:58:11.501'},null,null,{ts '2015-12-02 07:58:15.030'});
insert into METL_MODEL_ENTITY (ID, MODEL_ID, NAME, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('793678e1-825e-4021-98ad-045ed969a2c8','7112cb2c-5966-4e1d-b314-4936a56e9495','table1',{ts '2015-12-02 07:58:18.570'},null,null,{ts '2015-12-19 11:30:51.637'});
insert into METL_MODEL_ATTRIB (ID, ENTITY_ID, NAME, TYPE, TYPE_ENTITY_ID, PK, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('13f29117-e097-42bb-a09b-8b6de7de61d9','793678e1-825e-4021-98ad-045ed969a2c8','id','INTEGER',null,1,{ts '2015-12-02 07:58:21.968'},null,null,{ts '2015-12-02 07:58:29.939'});
insert into METL_MODEL_ATTRIB (ID, ENTITY_ID, NAME, TYPE, TYPE_ENTITY_ID, PK, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('3fb0e876-f8fe-405e-9baa-078196aec6bd','793678e1-825e-4021-98ad-045ed969a2c8','parent','INTEGER',null,0,{ts '2015-12-02 07:58:31.445'},null,null,{ts '2015-12-02 07:58:41.525'});
insert into METL_RESOURCE (ID, ROW_ID, PROJECT_VERSION_ID, DELETED, NAME, TYPE, FOLDER_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('b9dda482-ae92-43af-beb8-4396c5d125c0','04f7eabc-f8bb-4bbc-bf22-637302bd63f8','de12fc2b-e9f2-4f8d-8dd5-682af7083e21',0,'database','Database',null,{ts '2015-12-02 07:57:21.052'},null,null,{ts '2015-12-02 07:57:23.258'});
insert into METL_COMPONENT (ID, ROW_ID, PROJECT_VERSION_ID, DELETED, NAME, TYPE, FOLDER_ID, SHARED, INPUT_MODEL_ID, OUTPUT_MODEL_ID, RESOURCE_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('0f20d8d1-76a1-466c-8f22-1e780cf2c169','5503f634-3ba2-49ff-a61b-c208616f5a3b','de12fc2b-e9f2-4f8d-8dd5-682af7083e21',0,'Assert 1','Assert',null,0,'7112cb2c-5966-4e1d-b314-4936a56e9495',null,null,{ts '2015-12-19 10:51:41.153'},null,null,{ts '2015-12-19 10:51:44.532'});
insert into METL_COMPONENT (ID, ROW_ID, PROJECT_VERSION_ID, DELETED, NAME, TYPE, FOLDER_ID, SHARED, INPUT_MODEL_ID, OUTPUT_MODEL_ID, RESOURCE_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('109a913f-83ae-4525-9d63-2b774484a9b1','a8d0c237-ccda-48e9-8d2d-6a36b91cc401','de12fc2b-e9f2-4f8d-8dd5-682af7083e21',0,'Sql Executor 1','Sql Executor',null,0,null,null,'b9dda482-ae92-43af-beb8-4396c5d125c0',{ts '2015-12-19 10:49:05.122'},null,null,{ts '2016-01-05 14:35:24.466'});
insert into METL_COMPONENT (ID, ROW_ID, PROJECT_VERSION_ID, DELETED, NAME, TYPE, FOLDER_ID, SHARED, INPUT_MODEL_ID, OUTPUT_MODEL_ID, RESOURCE_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('10be6a22-4dfe-4ba5-9747-97ed47158092','ee7a676d-252d-4eec-8a03-c64bfea97cae','de12fc2b-e9f2-4f8d-8dd5-682af7083e21',0,'Recursive Reader','RDBMS Reader',null,0,'7112cb2c-5966-4e1d-b314-4936a56e9495','7112cb2c-5966-4e1d-b314-4936a56e9495','b9dda482-ae92-43af-beb8-4396c5d125c0',{ts '2015-12-19 10:50:49.467'},null,null,{ts '2016-01-05 14:41:06.168'});
insert into METL_COMPONENT (ID, ROW_ID, PROJECT_VERSION_ID, DELETED, NAME, TYPE, FOLDER_ID, SHARED, INPUT_MODEL_ID, OUTPUT_MODEL_ID, RESOURCE_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('2a940fd6-de3f-4aaf-8f29-30cebc919070','9e29a7d1-cbcd-4617-88a8-eb968835c181','de12fc2b-e9f2-4f8d-8dd5-682af7083e21',0,'Assert 1','Assert',null,0,'7112cb2c-5966-4e1d-b314-4936a56e9495',null,null,{ts '2016-01-05 14:39:32.891'},null,null,{ts '2016-01-05 14:39:51.406'});
insert into METL_COMPONENT (ID, ROW_ID, PROJECT_VERSION_ID, DELETED, NAME, TYPE, FOLDER_ID, SHARED, INPUT_MODEL_ID, OUTPUT_MODEL_ID, RESOURCE_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('31d6c2af-9c0b-468f-bfb5-74e3b8e0ebfa','0e8d6a1c-63f4-4ced-b38d-18cf06d783d1','de12fc2b-e9f2-4f8d-8dd5-682af7083e21',0,'Sql Executor 1','Sql Executor',null,0,null,null,'b9dda482-ae92-43af-beb8-4396c5d125c0',{ts '2016-01-08 08:29:37.649'},null,null,{ts '2016-01-08 08:38:11.370'});
insert into METL_COMPONENT (ID, ROW_ID, PROJECT_VERSION_ID, DELETED, NAME, TYPE, FOLDER_ID, SHARED, INPUT_MODEL_ID, OUTPUT_MODEL_ID, RESOURCE_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('454574b5-b220-42dd-bd1a-5352da1ada83','f5772cf8-6053-40e6-98c7-223357910433','de12fc2b-e9f2-4f8d-8dd5-682af7083e21',0,'Recursive Reader','RDBMS Reader',null,0,'7112cb2c-5966-4e1d-b314-4936a56e9495','7112cb2c-5966-4e1d-b314-4936a56e9495','b9dda482-ae92-43af-beb8-4396c5d125c0',{ts '2016-01-05 14:38:36.058'},null,null,{ts '2016-01-05 14:40:01.280'});
insert into METL_COMPONENT (ID, ROW_ID, PROJECT_VERSION_ID, DELETED, NAME, TYPE, FOLDER_ID, SHARED, INPUT_MODEL_ID, OUTPUT_MODEL_ID, RESOURCE_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('6c2e2b26-93f8-4731-a8d7-0f6c9f4ac929','a607d4ef-0cb6-4f4a-afcc-b77db9c66543','de12fc2b-e9f2-4f8d-8dd5-682af7083e21',0,'Reader to Start Recursion','RDBMS Reader',null,0,null,'7112cb2c-5966-4e1d-b314-4936a56e9495','b9dda482-ae92-43af-beb8-4396c5d125c0',{ts '2016-01-05 14:37:39.726'},null,null,{ts '2016-01-05 14:40:41.224'});
insert into METL_COMPONENT (ID, ROW_ID, PROJECT_VERSION_ID, DELETED, NAME, TYPE, FOLDER_ID, SHARED, INPUT_MODEL_ID, OUTPUT_MODEL_ID, RESOURCE_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('9224f5e6-99b9-4c31-b37c-8ef08dfe724a','71662ae4-b54d-41ac-a841-1d949c56cb8d','de12fc2b-e9f2-4f8d-8dd5-682af7083e21',0,'Assert 1','Assert',null,0,'7112cb2c-5966-4e1d-b314-4936a56e9495',null,null,{ts '2016-01-08 08:38:07.458'},null,null,{ts '2016-01-08 08:38:11.373'});
insert into METL_COMPONENT (ID, ROW_ID, PROJECT_VERSION_ID, DELETED, NAME, TYPE, FOLDER_ID, SHARED, INPUT_MODEL_ID, OUTPUT_MODEL_ID, RESOURCE_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('a1d9fa3a-1a40-4b72-8f0b-b0248cc9ff34','d1404c8b-ab4f-4b52-b575-8dcd4f35d0ad','de12fc2b-e9f2-4f8d-8dd5-682af7083e21',0,'RDBMS Reader 1','RDBMS Reader',null,0,null,'7112cb2c-5966-4e1d-b314-4936a56e9495','b9dda482-ae92-43af-beb8-4396c5d125c0',{ts '2016-01-08 08:37:14.171'},null,null,{ts '2016-01-08 08:38:11.372'});
insert into METL_COMPONENT (ID, ROW_ID, PROJECT_VERSION_ID, DELETED, NAME, TYPE, FOLDER_ID, SHARED, INPUT_MODEL_ID, OUTPUT_MODEL_ID, RESOURCE_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('a9711195-2b23-4c48-b40d-261d190d7d23','31ef730c-0d6c-40a4-a2d1-767e3b5b42dc','de12fc2b-e9f2-4f8d-8dd5-682af7083e21',0,'Sql Executor 1','Sql Executor',null,0,null,null,'b9dda482-ae92-43af-beb8-4396c5d125c0',{ts '2016-01-05 14:34:58.262'},null,null,{ts '2016-01-08 08:31:55.922'});
insert into METL_COMPONENT (ID, ROW_ID, PROJECT_VERSION_ID, DELETED, NAME, TYPE, FOLDER_ID, SHARED, INPUT_MODEL_ID, OUTPUT_MODEL_ID, RESOURCE_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('cad27cf2-a3eb-4368-8524-bede85cebc3b','854db861-4327-4b42-8d25-813262650aac','de12fc2b-e9f2-4f8d-8dd5-682af7083e21',0,'Reader to Start Recursion','RDBMS Reader',null,0,null,'7112cb2c-5966-4e1d-b314-4936a56e9495','b9dda482-ae92-43af-beb8-4396c5d125c0',{ts '2015-12-19 10:49:37.319'},null,null,{ts '2015-12-19 10:51:44.530'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('06958972-8205-470c-8d74-e7931490fbf5','109a913f-83ae-4525-9d63-2b774484a9b1','run.when','PER UNIT OF WORK',{ts '2015-12-19 10:53:20.754'},null,null,{ts '2016-01-05 14:35:24.467'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('121453f1-93a2-4beb-bc6c-7364a5dcd062','6c2e2b26-93f8-4731-a8d7-0f6c9f4ac929','run.when','PER UNIT OF WORK',{ts '2016-01-05 14:37:52.238'},null,null,{ts '2016-01-05 14:41:46.972'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('12a4372e-8e86-4391-84db-c339b1cd3260','6c2e2b26-93f8-4731-a8d7-0f6c9f4ac929','sql','select * from table1 where id in (3,6);',{ts '2016-01-05 14:38:32.100'},null,null,{ts '2016-01-05 14:40:41.224'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('18de1a23-f267-4f04-8066-e456921deba8','454574b5-b220-42dd-bd1a-5352da1ada83','run.when','PER ENTITY',{ts '2016-01-05 14:40:40.264'},null,null,{ts '2016-01-05 14:41:25.543'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('1f38be74-2de7-4788-8d8e-54da401cdcba','6c2e2b26-93f8-4731-a8d7-0f6c9f4ac929','rows.per.message','1',{ts '2016-01-05 14:38:57.916'},null,null,{ts '2016-01-05 14:40:41.225'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('24126103-0f59-49e2-8717-d0d3c0930fda','10be6a22-4dfe-4ba5-9747-97ed47158092','run.when','PER ENTITY',{ts '2015-12-19 10:54:08.643'},null,null,{ts '2016-01-05 14:41:06.168'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('31ff8c9e-01d0-424d-87fc-48457f9c83a4','a9711195-2b23-4c48-b40d-261d190d7d23','run.when','PER UNIT OF WORK',{ts '2016-01-05 14:35:14.862'},null,null,{ts '2016-01-08 08:31:55.923'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('38fa06a6-2081-44fd-bf05-6e566112a5d2','2a940fd6-de3f-4aaf-8f29-30cebc919070','expected.entity.messages.count','4',{ts '2016-01-05 14:39:54.131'},null,null,{ts '2016-01-05 14:39:54.131'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('3b9d25d4-8caf-4a60-8fa7-482c695f6905','cad27cf2-a3eb-4368-8524-bede85cebc3b','sql','select * from table1 where id =3',{ts '2015-12-19 10:50:41.697'},null,null,{ts '2016-01-05 14:38:11.634'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('6694ee33-68f0-49d1-aa98-46063ca66497','454574b5-b220-42dd-bd1a-5352da1ada83','sql','select * From table1 where id = :table1.parent',{ts '2016-01-05 14:39:26.686'},null,null,{ts '2016-01-05 14:40:01.280'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('7a6bf3db-f496-4e01-8af4-12c98e3cffec','a9711195-2b23-4c48-b40d-261d190d7d23','sql','drop table if exists table1;
create table table1 (id integer, parent integer, primary key (id));
insert into table1 values (1,null);
insert into table1 values (2,1);
insert into table1 values (3,2);
--
insert into table1 values (4,null);
insert into table1 values (5,4);
insert into table1 values (6,5);
',{ts '2016-01-05 14:35:08.843'},null,null,{ts '2016-01-08 08:32:00.648'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('7def4813-d184-401b-a965-0d44ad9ac4fb','a1d9fa3a-1a40-4b72-8f0b-b0248cc9ff34','sql','select * from table1',{ts '2016-01-08 08:37:57.092'},null,null,{ts '2016-01-08 08:38:11.372'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('7f119c32-b1c8-471f-8cab-103e7e7907a2','31d6c2af-9c0b-468f-bfb5-74e3b8e0ebfa','sql','drop table if exists table1;
create table table1 (id integer, parent integer, primary key (id));
insert into table1 values (1,null);
insert into table1 values (2,1);
insert into table1 values (3,1);
insert into table1 values (4,1);
insert into table1 values (5,1);
insert into table1 values (6,1);
insert into table1 values (7,1);
insert into table1 values (8,1);
insert into table1 values (9,1);
insert into table1 values (10,1);
insert into table1 values (11,1);
insert into table1 values (12,1);
insert into table1 values (13,1);
insert into table1 values (14,1);
insert into table1 values (15,1);
insert into table1 values (16,1);
insert into table1 values (17,1);
insert into table1 values (18,1);
insert into table1 values (19,1);
insert into table1 values (20,1);
insert into table1 values (21,1);
insert into table1 values (22,1);
insert into table1 values (23,1);
insert into table1 values (24,1);
insert into table1 values (25,1);
insert into table1 values (26,1);
insert into table1 values (27,1);
insert into table1 values (28,1);
insert into table1 values (29,1);
insert into table1 values (30,1);
insert into table1 values (31,1);
insert into table1 values (32,1);
insert into table1 values (33,1);
insert into table1 values (34,1);
insert into table1 values (35,1);
insert into table1 values (36,1);
insert into table1 values (37,1);
insert into table1 values (38,1);
insert into table1 values (39,1);
insert into table1 values (40,1);
insert into table1 values (41,1);
insert into table1 values (42,1);
insert into table1 values (43,1);
insert into table1 values (44,1);
insert into table1 values (45,1);
insert into table1 values (46,1);
insert into table1 values (47,1);
insert into table1 values (48,1);
insert into table1 values (49,1);
insert into table1 values (50,1);
insert into table1 values (51,1);
insert into table1 values (52,1);
insert into table1 values (53,1);
insert into table1 values (54,1);
insert into table1 values (55,1);
insert into table1 values (56,1);
insert into table1 values (57,1);
insert into table1 values (58,1);
insert into table1 values (59,1);
insert into table1 values (60,1);
insert into table1 values (61,1);
insert into table1 values (62,1);
insert into table1 values (63,1);
insert into table1 values (64,1);
insert into table1 values (65,1);
insert into table1 values (66,1);
insert into table1 values (67,1);
insert into table1 values (68,1);
insert into table1 values (69,1);
insert into table1 values (70,1);
insert into table1 values (71,1);
insert into table1 values (72,1);
insert into table1 values (73,1);
insert into table1 values (74,1);
insert into table1 values (75,1);
insert into table1 values (76,1);
insert into table1 values (77,1);
insert into table1 values (78,1);
insert into table1 values (79,1);
insert into table1 values (80,1);
insert into table1 values (81,1);
insert into table1 values (82,1);
insert into table1 values (83,1);
insert into table1 values (84,1);
insert into table1 values (85,1);
insert into table1 values (86,1);
insert into table1 values (87,1);
insert into table1 values (88,1);
insert into table1 values (89,1);
insert into table1 values (90,1);
insert into table1 values (91,1);
insert into table1 values (92,1);
insert into table1 values (93,1);
insert into table1 values (94,1);
insert into table1 values (95,1);
insert into table1 values (96,1);
insert into table1 values (97,1);
insert into table1 values (98,1);
insert into table1 values (99,1);
insert into table1 values (100,1);
',{ts '2016-01-08 08:36:48.758'},null,null,{ts '2016-01-08 08:38:11.371'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('8899fed1-f2b9-4679-8306-e1253a1c7853','0f20d8d1-76a1-466c-8f22-1e780cf2c169','expected.control.messages.count','1',{ts '2015-12-19 10:52:09.236'},null,null,{ts '2015-12-19 10:52:10.610'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('9e683306-a7bc-4668-b656-94cf6c905d1b','31d6c2af-9c0b-468f-bfb5-74e3b8e0ebfa','run.when','PER UNIT OF WORK',{ts '2016-01-08 08:37:49.198'},null,null,{ts '2016-01-08 08:38:11.371'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('ae7b0be9-cb20-4bcf-a461-5603a72337c0','109a913f-83ae-4525-9d63-2b774484a9b1','sql','drop table if exists table1;
create table table1 (id integer, parent integer, primary key (id));
insert into table1 values (1,null);
insert into table1 values (2,1);
insert into table1 values (3,2);
',{ts '2015-12-19 10:49:25.731'},null,null,{ts '2016-01-05 14:35:24.467'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('d3261412-7125-4a6f-950c-44a2a3e5b7ac','0f20d8d1-76a1-466c-8f22-1e780cf2c169','expected.entity.messages.count','2',{ts '2015-12-19 10:52:06.655'},null,null,{ts '2015-12-19 10:52:06.655'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('d3789239-e7fe-4b21-b6c0-5db9ae139a48','2a940fd6-de3f-4aaf-8f29-30cebc919070','expected.control.messages.count','1',{ts '2016-01-05 14:39:57.132'},null,null,{ts '2016-05-04 19:39:46.396'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('d8bdebb1-ca39-4e62-8a00-c466f9e90357','9224f5e6-99b9-4c31-b37c-8ef08dfe724a','expected.entity.messages.count','10',{ts '2016-01-08 08:38:18.580'},null,null,{ts '2016-01-08 08:38:18.580'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('dcc7576b-50e2-49a6-9b11-f071f7d65d86','a1d9fa3a-1a40-4b72-8f0b-b0248cc9ff34','rows.per.message','10',{ts '2016-01-08 08:38:01.051'},null,null,{ts '2016-01-08 08:38:11.372'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('e9c9a9a5-72db-4a56-af50-105591decc8c','10be6a22-4dfe-4ba5-9747-97ed47158092','sql','select * From table1 where id = :table1.parent',{ts '2015-12-19 10:52:39.593'},null,null,{ts '2016-01-05 14:41:06.168'});
insert into METL_COMPONENT_SETTING (ID, COMPONENT_ID, NAME, VALUE, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('ef7c9eff-aa65-48f8-a047-df65949c09b3','9224f5e6-99b9-4c31-b37c-8ef08dfe724a','expected.control.messages.count','1',{ts '2016-01-08 08:38:24.043'},null,null,{ts '2016-01-08 08:38:24.043'});
insert into METL_FLOW (ID, ROW_ID, PROJECT_VERSION_ID, DELETED, TEST, NAME, FOLDER_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('a5db0775-02bf-4b88-9553-f8e9859a6c1d','0a9d193c-d9df-4b3e-9f67-4c03373291b3','de12fc2b-e9f2-4f8d-8dd5-682af7083e21',0,1,'RDBMSReader - Single Inbound Recursive Reader',null,{ts '2015-12-19 10:48:22.973'},null,null,{ts '2015-12-19 10:51:44.529'});
insert into METL_FLOW (ID, ROW_ID, PROJECT_VERSION_ID, DELETED, TEST, NAME, FOLDER_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('c8f9342a-6205-442b-9404-8c405a8279ed','4d649256-6de1-43f7-b1da-cb65802fbf18','de12fc2b-e9f2-4f8d-8dd5-682af7083e21',0,1,'RDBMSReader - Single Inbound Multiple Outbound',null,{ts '2016-01-08 08:28:57.111'},null,null,{ts '2016-01-08 08:38:11.370'});
insert into METL_FLOW (ID, ROW_ID, PROJECT_VERSION_ID, DELETED, TEST, NAME, FOLDER_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('f8153af4-3f99-4f08-8322-cee3ecd0ef8f','2dc4b904-73d4-4d10-ab9c-ce7559b8a748','de12fc2b-e9f2-4f8d-8dd5-682af7083e21',0,1,'RDBMSReader - Multiple Inbound Recursive Reader',null,{ts '2016-01-05 14:33:35.631'},null,null,{ts '2016-01-05 14:39:35.765'});
insert into METL_FLOW_STEP (ID, FLOW_ID, COMPONENT_ID, X, Y, APPROXIMATE_ORDER, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('1aed0e72-b38e-4032-bd95-8844911afd26','c8f9342a-6205-442b-9404-8c405a8279ed','9224f5e6-99b9-4c31-b37c-8ef08dfe724a',350,20,2,{ts '2016-01-08 08:38:07.458'},null,null,{ts '2016-01-08 08:38:11.373'});
insert into METL_FLOW_STEP (ID, FLOW_ID, COMPONENT_ID, X, Y, APPROXIMATE_ORDER, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('1c4ac5e5-62d3-4d51-9ff3-4a8ff8f1d9a1','c8f9342a-6205-442b-9404-8c405a8279ed','31d6c2af-9c0b-468f-bfb5-74e3b8e0ebfa',30,20,0,{ts '2016-01-08 08:29:37.649'},null,null,{ts '2016-01-08 08:38:11.372'});
insert into METL_FLOW_STEP (ID, FLOW_ID, COMPONENT_ID, X, Y, APPROXIMATE_ORDER, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('34ff9f2e-f5e6-422b-925b-9e9ed649f870','a5db0775-02bf-4b88-9553-f8e9859a6c1d','0f20d8d1-76a1-466c-8f22-1e780cf2c169',560,30,3,{ts '2015-12-19 10:51:41.153'},null,null,{ts '2015-12-19 10:51:44.532'});
insert into METL_FLOW_STEP (ID, FLOW_ID, COMPONENT_ID, X, Y, APPROXIMATE_ORDER, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('42897ff5-6930-4d14-8959-344b98720ae2','a5db0775-02bf-4b88-9553-f8e9859a6c1d','109a913f-83ae-4525-9d63-2b774484a9b1',40,30,0,{ts '2015-12-19 10:49:05.122'},null,null,{ts '2016-01-05 14:35:24.467'});
insert into METL_FLOW_STEP (ID, FLOW_ID, COMPONENT_ID, X, Y, APPROXIMATE_ORDER, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('46905d39-024c-4aa3-b3b0-27eabacf89da','f8153af4-3f99-4f08-8322-cee3ecd0ef8f','a9711195-2b23-4c48-b40d-261d190d7d23',50,40,0,{ts '2016-01-05 14:34:58.262'},null,null,{ts '2016-01-08 08:31:55.923'});
insert into METL_FLOW_STEP (ID, FLOW_ID, COMPONENT_ID, X, Y, APPROXIMATE_ORDER, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('60f9ea0c-4771-4c33-98cd-2c587a39fd37','a5db0775-02bf-4b88-9553-f8e9859a6c1d','cad27cf2-a3eb-4368-8524-bede85cebc3b',190,30,1,{ts '2015-12-19 10:49:37.319'},null,null,{ts '2015-12-19 10:51:44.531'});
insert into METL_FLOW_STEP (ID, FLOW_ID, COMPONENT_ID, X, Y, APPROXIMATE_ORDER, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('974e8a4c-46b9-4428-a5b4-d63af97a8b9c','f8153af4-3f99-4f08-8322-cee3ecd0ef8f','6c2e2b26-93f8-4731-a8d7-0f6c9f4ac929',190,40,1,{ts '2016-01-05 14:37:39.726'},null,null,{ts '2016-01-05 14:40:41.225'});
insert into METL_FLOW_STEP (ID, FLOW_ID, COMPONENT_ID, X, Y, APPROXIMATE_ORDER, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('9ae7670d-cfce-4f08-9d83-63d644bfb3ba','f8153af4-3f99-4f08-8322-cee3ecd0ef8f','454574b5-b220-42dd-bd1a-5352da1ada83',390,40,2,{ts '2016-01-05 14:38:36.058'},null,null,{ts '2016-01-05 14:40:01.280'});
insert into METL_FLOW_STEP (ID, FLOW_ID, COMPONENT_ID, X, Y, APPROXIMATE_ORDER, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('9f58b93a-d938-404f-9a54-681b68ff6126','a5db0775-02bf-4b88-9553-f8e9859a6c1d','10be6a22-4dfe-4ba5-9747-97ed47158092',370,30,2,{ts '2015-12-19 10:50:49.467'},null,null,{ts '2016-01-05 14:41:06.168'});
insert into METL_FLOW_STEP (ID, FLOW_ID, COMPONENT_ID, X, Y, APPROXIMATE_ORDER, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('b1c095bb-232d-4c18-9b7f-8a4aad8fb071','c8f9342a-6205-442b-9404-8c405a8279ed','a1d9fa3a-1a40-4b72-8f0b-b0248cc9ff34',190,20,1,{ts '2016-01-08 08:37:14.171'},null,null,{ts '2016-01-08 08:38:11.373'});
insert into METL_FLOW_STEP (ID, FLOW_ID, COMPONENT_ID, X, Y, APPROXIMATE_ORDER, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('e933239b-b539-42d9-9b96-f3c4172e519e','f8153af4-3f99-4f08-8322-cee3ecd0ef8f','2a940fd6-de3f-4aaf-8f29-30cebc919070',600,40,3,{ts '2016-01-05 14:39:32.891'},null,null,{ts '2016-01-05 14:39:51.406'});
insert into METL_FLOW_STEP_LINK (SOURCE_STEP_ID, TARGET_STEP_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('1c4ac5e5-62d3-4d51-9ff3-4a8ff8f1d9a1','b1c095bb-232d-4c18-9b7f-8a4aad8fb071',{ts '2016-01-08 08:37:16.697'},null,null,{ts '2016-01-08 08:38:11.373'});
insert into METL_FLOW_STEP_LINK (SOURCE_STEP_ID, TARGET_STEP_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('42897ff5-6930-4d14-8959-344b98720ae2','60f9ea0c-4771-4c33-98cd-2c587a39fd37',{ts '2015-12-19 10:49:41.009'},null,null,{ts '2015-12-19 10:51:44.532'});
insert into METL_FLOW_STEP_LINK (SOURCE_STEP_ID, TARGET_STEP_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('46905d39-024c-4aa3-b3b0-27eabacf89da','974e8a4c-46b9-4428-a5b4-d63af97a8b9c',{ts '2016-01-05 14:37:42.322'},null,null,{ts '2016-01-05 14:39:35.768'});
insert into METL_FLOW_STEP_LINK (SOURCE_STEP_ID, TARGET_STEP_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('60f9ea0c-4771-4c33-98cd-2c587a39fd37','9f58b93a-d938-404f-9a54-681b68ff6126',{ts '2015-12-19 10:50:54.445'},null,null,{ts '2015-12-19 10:51:44.532'});
insert into METL_FLOW_STEP_LINK (SOURCE_STEP_ID, TARGET_STEP_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('974e8a4c-46b9-4428-a5b4-d63af97a8b9c','9ae7670d-cfce-4f08-9d83-63d644bfb3ba',{ts '2016-01-05 14:39:04.135'},null,null,{ts '2016-01-05 14:39:35.769'});
insert into METL_FLOW_STEP_LINK (SOURCE_STEP_ID, TARGET_STEP_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('9ae7670d-cfce-4f08-9d83-63d644bfb3ba','9ae7670d-cfce-4f08-9d83-63d644bfb3ba',{ts '2016-01-05 14:39:07.558'},null,null,{ts '2016-01-05 14:39:35.769'});
insert into METL_FLOW_STEP_LINK (SOURCE_STEP_ID, TARGET_STEP_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('9ae7670d-cfce-4f08-9d83-63d644bfb3ba','e933239b-b539-42d9-9b96-f3c4172e519e',{ts '2016-01-05 14:39:35.765'},null,null,{ts '2016-01-05 14:39:35.769'});
insert into METL_FLOW_STEP_LINK (SOURCE_STEP_ID, TARGET_STEP_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('9f58b93a-d938-404f-9a54-681b68ff6126','34ff9f2e-f5e6-422b-925b-9e9ed649f870',{ts '2015-12-19 10:51:44.529'},null,null,{ts '2015-12-19 10:51:44.532'});
insert into METL_FLOW_STEP_LINK (SOURCE_STEP_ID, TARGET_STEP_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('9f58b93a-d938-404f-9a54-681b68ff6126','9f58b93a-d938-404f-9a54-681b68ff6126',{ts '2015-12-19 10:51:17.696'},null,null,{ts '2015-12-19 10:51:44.532'});
insert into METL_FLOW_STEP_LINK (SOURCE_STEP_ID, TARGET_STEP_ID, CREATE_TIME, CREATE_BY, LAST_UPDATE_BY, LAST_UPDATE_TIME) values ('b1c095bb-232d-4c18-9b7f-8a4aad8fb071','1aed0e72-b38e-4032-bd95-8844911afd26',{ts '2016-01-08 08:38:11.370'},null,null,{ts '2016-01-08 08:38:11.374'});
