CREATE TABLE TEST_JAVA(
    id varchar2(20) NOT NULL, --���̵� // ���°� ����, primary key  �� ����. 
    pwd varchar2(30) NOT NULL, --��й�ȣ
    name varchar2(30) NOT NULL, -- �̸�
    CONSTRAINT pk_member_java PRIMARY KEY(id)  -- �⺻Ű ����
);
commit;
insert into TEST_JAVA values ('lsy','1234','�̻��');
insert into TEST_JAVA values ('lsy2','1234','�̻��2');
insert into TEST_JAVA values ('lsy3','1234','�̻��3');
select * from TEST_JAVA;
SELECT id,pwd,name FROM TEST_JAVA;

select * from tb_member;
select * from tb_member where id = 'lsy';



CREATE SEQUENCE boarder_seq
    INCREMENT BY 1
    START WITH 1
    MINVALUE 1
    MAXVALUE 9999
    NOCYCLE
    NOCACHE
    NOORDER;
    
    
    
    CREATE TABLE BOARDER_JAVA(
		    id number(20) NOT NULL,  
		    writer varchar2(30) NOT NULL, 
		    subject varchar2(100) NOT NULL,
	content varchar2(2000) NOT NULL,
	regDate varchar2(30) NOT NULL,
    viewsCount number(20) NOT NULL,
		    CONSTRAINT pk_boarder_java PRIMARY KEY(id)  -- �⺻Ű ����
		);
        
        insert into BOARDER_JAVA values (boarder_seq.NEXTVAL,'�̻��','����1','����1','2024-03-15:16:25:00',0);
        insert into BOARDER_JAVA values (boarder_seq.NEXTVAL,'�̻��2','����2','����2','2024-03-15:16:35:00',0);
        insert into BOARDER_JAVA values (boarder_seq.NEXTVAL,'�̻��3','����3','����3','2024-03-15:16:45:00',0);
        commit;
select * from BOARDER_JAVA;
select * from BOARDER_JAVA order by regDate desc;

select * from BOARDER_JAVA where id=5;

update BOARDER_JAVA set subject='��������4', content='���泻��4' where id=5;
commit;







