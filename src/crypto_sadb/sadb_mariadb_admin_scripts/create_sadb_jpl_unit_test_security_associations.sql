USE sadb;

-- SA 1 - OPERATIONAL;  ARCW:5; AES-GCM; IV:00...01; IV-len:12; MAC-len:16; Key-ID: 130, SCID 44, VC-0
INSERT INTO security_associations (spi,ekid,sa_state,ecs,est,ast,shivf_len,stmacf_len,iv,abm_len,abm,arcw_len,arcw,arc_len,tfvn,scid,vcid,mapid)
VALUES (1,'kmc/test/key130',3,X'01',1,0,12,16,X'000000000000000000000001',19,X'00000000000000000000000000000000000000',1,5,0,0,44,0,0);

-- SA 2 - OPERATIONAL;  ARCW:5; AES-GCM; IV:00...01; IV-len:12; MAC-len:16; Key-ID: 130, SCID 44, VC-1
INSERT INTO security_associations (spi,ekid,sa_state,ecs,est,ast,shivf_len,stmacf_len,iv,abm_len,abm,arcw_len,arcw,arc_len,tfvn,scid,vcid,mapid)
VALUES (2,'kmc/test/key130',3,X'01',1,0,12,16,X'000000000000000000000001',19,X'00000000000000000000000000000000000000',1,5,0,0,44,1,0);

-- SA 3 - OPERATIONAL;  ARCW:5; AES-GCM; IV:00...01; IV-len:12; MAC-len:16; Key-ID: 130, SCID 44, VC-2
INSERT INTO security_associations (spi,ekid,sa_state,ecs,est,ast,shivf_len,stmacf_len,iv,abm_len,abm,arcw_len,arcw,arc_len,tfvn,scid,vcid,mapid)
VALUES (3,'kmc/test/key130',3,X'01',1,0,12,16,X'000000000000000000000001',19,X'00000000000000000000000000000000000000',1,5,0,0,44,2,0);

-- SA 4 - OPERATIONAL;  ARCW:5; AES-GCM; IV:00...01; IV-len:12; MAC-len:16; Key-ID: 130, SCID 44, VC-3
INSERT INTO security_associations (spi,ekid,sa_state,ecs,est,ast,shivf_len,stmacf_len,iv,abm_len,abm,arcw_len,arcw,arc_len,tfvn,scid,vcid,mapid)
VALUES (4,'kmc/test/key130',3,X'01',1,0,12,16,X'000000000000000000000001',19,X'00000000000000000000000000000000000000',1,5,0,0,44,3,0);