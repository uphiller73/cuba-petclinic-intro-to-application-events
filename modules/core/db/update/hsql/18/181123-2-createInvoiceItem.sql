alter table PETCLINIC_INVOICE_ITEM add constraint FK_PETCLINIC_INVOICE_ITEM_ON_INVOICE foreign key (INVOICE_ID) references PETCLINIC_INVOICE(ID);
create index IDX_PETCLINIC_INVOICE_ITEM_ON_INVOICE on PETCLINIC_INVOICE_ITEM (INVOICE_ID);
