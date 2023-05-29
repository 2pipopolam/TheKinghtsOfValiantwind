insert into game_state (gst_state) values ('Waiting');
insert into game_state (gst_state) values ('Started');
insert into game_state (gst_state) values ('Finished');
insert into game_state (gst_state) values ('Canceled');


insert into user_game_state (ugst_state) values ('Waiting');
insert into user_game_state (ugst_state) values ('Playing');
insert into user_game_state (ugst_state) values ('End');


insert into player_state (pls_state) values ('Ready');
insert into player_state (pls_state) values ('Acted');
insert into player_state (pls_state) values ('Choice');
insert into player_state (pls_state) values ('Mirror');
insert into player_state (pls_state) values ('Defense');


insert into hosp_card (hosp_crd_name,hosp_crd_img,hosp_crd_type) values 
   ("Sword Slice","swordCard.png",1),
   ("Mace Swing","maceCard.png",1),
   ("Rapier Dash","rapierCard.png",1),
   ("Scimitar Slash","craguemartCard.png",1),
   ("Stiletto Jab","stilettoCard.png",1),
   ("Show Yourself","atruehospCard.png",3),
   ("Field Doctor","fielddoctorCard.png",2),
   ("Morphine","morphineCard.png",2),
   ("Mirror","mirrorCard.png",4),
   ("Defense","hospdefenceCard.png",5);



insert into hus_card (hus_crd_name,hus_crd_img,hus_crd_type) values 
	("Spear Strike","spearCard.png",1),
	("Arrow Shot","arrowCard.png",1),
	("Dagger","daggerCard.png",1),
 	("Halberd Thrust","halberdCard.png",1),
	("Herbs","medicinalherbsCard.png",2),
	("A true Hussar!","atruehusCard.png",3),	
	("Alcohol Wipes","alcoholCard.png",2),
   ("Mirror","mirrorCard.png",4),
   ("Defense","husdefenceCard.png",5);


insert into class_card (cla_crd_name,cla_crd_img,cla_crd_type) values 
   ("Hospitaller","hospCard.png",6),
   ("Husaria","husCard.png",6);

insert into class (class_name, class_id) values
("NotSelected",0)
("Hospitaller",1),
("Husaria",2);

INSERT INTO user VALUES (1,'me','$2b$10$Wemfac2wY/7RSCdKxuYUL.GV2clfhXC66OL76uCpDFUmpYZ/bGZtW','48MnTVJ6sKIvanVHbP5Vx5rysbYrVN4EbYmk4D8xESdfm1hx8jDfNFZGNw9OZs'),(2,'me2','$2b$10$6j2xIDnnxv.TLfBSstbbO.qE7wFTf5envx/uijiFjCP3slsy7EE4K','dQ7NrsbPsuF81xFGNioR1K0tiYkjtxOhemcgMhuFIS68VrFUC9gggm3JCgzkqe');
INSERT INTO game VALUES (1,1,2);
INSERT INTO user_game VALUES (1,1,1,2),(2,2,1,1);

INSERT INTO player VALUES (1,1,1,10,20,1),(2,2,1,10,20,2);

INSERT INTO user_game_hosp_card VALUES (1,1,9,1),(2,1,10,1),(3,1,6,1);

INSERT INTO user_game_hus_card VALUES (1,2,9,1),(2,2,8,1),(3,2,6,1);