-- begin PETCLINIC_PET
alter table PETCLINIC_PET add constraint FK_PETCLINIC_PET_ON_TYPE foreign key (TYPE_ID) references PETCLINIC_PET_TYPE(ID)^
alter table PETCLINIC_PET add constraint FK_PETCLINIC_PET_ON_OWNER foreign key (OWNER_ID) references PETCLINIC_OWNER(ID)^
create unique index IDX_PETCLINIC_PET_ID_UNQ on PETCLINIC_PET (IDENTIFICATION_NUMBER, DELETE_TS) ^
create index IDX_PETCLINIC_PET_ON_TYPE on PETCLINIC_PET (TYPE_ID)^
create index IDX_PETCLINIC_PET_ON_OWNER on PETCLINIC_PET (OWNER_ID)^
-- end PETCLINIC_PET
-- begin PETCLINIC_VISIT
alter table PETCLINIC_VISIT add constraint FK_PETCLINIC_VISIT_ON_PET foreign key (PET_ID) references PETCLINIC_PET(ID)^
alter table PETCLINIC_VISIT add constraint FK_PETCLINIC_VISIT_ON_ROOM foreign key (ROOM_ID) references PETCLINIC_ROOM(ID)^
create index IDX_PETCLINIC_VISIT_ON_PET on PETCLINIC_VISIT (PET_ID)^
create index IDX_PETCLINIC_VISIT_ON_ROOM on PETCLINIC_VISIT (ROOM_ID)^
-- end PETCLINIC_VISIT
-- begin PETCLINIC_VET_SPECIALTY_LINK
alter table PETCLINIC_VET_SPECIALTY_LINK add constraint FK_VETSPE_ON_VET foreign key (VET_ID) references PETCLINIC_VET(ID)^
alter table PETCLINIC_VET_SPECIALTY_LINK add constraint FK_VETSPE_ON_SPECIALTY foreign key (SPECIALTY_ID) references PETCLINIC_SPECIALTY(ID)^
-- end PETCLINIC_VET_SPECIALTY_LINK
