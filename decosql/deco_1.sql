create table cafe(
   idx int auto_increment,
   name varchar(25) not null,
   content varchar(100) not null,
   phone varchar(20) not null,
   addr varchar(50) not null,
   menu varchar(200) not null,
   opentime varchar(10) not null,
   closetime varchar(10) not null,
   grade decimal(3,2) not null,
   location varchar(10) not null,
   outimage varchar(100),   -- list에 들어갈 image
   inimage varchar(100),   -- detail에 들어갈 image
   primary key(idx)
);

select * from cafe;
drop table cafe;
select * from cafe order by grade desc;

INSERT INTO cafe ( name, content, phone, addr,menu,opentime,closetime,grade,location,outimage,inimage)
VALUES ('트리오드',
'트리오드는 파티셰와 셰프, 그리고 그 사이에서 중심을 잡아주는 바리스타가 함께 공명하여 빛나는 경험을 만들어주는 공간입니다.',
'025689427','서울 강남구 역삼동 649 유니언타운 L층',
'아메리카노 : 5,000원 /블루베리 케익그람 : 5,700원',
'11:00',
'22:00',
'4.5',
'강남',
'강남_cafe_out_1.png',
'강남_cafe_in_1.png');


INSERT INTO cafe ( name, content, phone, addr,menu,opentime,closetime,grade,location,outimage,inimage)
VALUES ('카페 온화',
'프리미엄 수플레 팬케이크 및 스페셜티 커피전문점 카페 온화',
'07077152908',
'서울 강남구 역삼동 812-18 2층',
'플레인 수플레 : 16,000원/ 딸기 수플레 : 19,000원',
'11:00',
'22:00',
'4.65',
'강남',
'강남_cafe_out_2.png',
'강남_cafe_in_2.png');
INSERT INTO cafe ( name, content, phone, addr,menu,opentime,closetime,grade,location,outimage,inimage)
VALUES ('겟썸커피',
'지하에 있는 분위기 좋은 카페 겟썸커피',
'050713173619',
'서울 강남구 역삼동 812-3 지하 1층 ',
'더티 카푸치노 : 4,300원/아메리카노 : 3,500원',
'11:00',
'22:00',
'4.50',
'강남',
'강남_cafe_out_3.png',
'강남_cafe_in_3.png');
INSERT INTO cafe ( name, content, phone, addr,menu,opentime,closetime,grade,location,outimage,inimage)
VALUES ('브루커피',
'해운대점을 기반으로 시작해 미국에서 오랫동안 경험해온 커피의 지식과 경험을 바탕으로 한 전문성을 아이덴티티로 손님들을 만족시키는 공간.',
'050714861592',
'서울 강남구 역삼동 825-27 1, 2층',
'브루 라떼 : 6,000원/심플 화이트:5,500원/아메리카노 : 4,500원',
'07:00',
'22:00',
'4.58',
'강남',
'강남_cafe_out_4.png',
'강남_cafe_in_4.png');


INSERT INTO cafe ( name, content, phone, addr,menu,opentime,closetime,grade,location,outimage,inimage)
VALUES ('로아상 서울',
'페이스트리와 디저트, RTD음료를 만들고 있습니다.',
'07041409768',
'서울 종로구 인사동 220-1',
'플레인 크루아상 : 4,000원/샤뽀 : 4,500원/오리지널 콜드브루 : 3,800원',
'11:30',
'20:00',
'4.79',
'인사동',
'인사동_cafe_out_1.png',
'인사동_cafe_in_1.png');
INSERT INTO cafe ( name, content, phone, addr,menu,opentime,closetime,grade,location,outimage,inimage)
VALUES ('세루리안 인사',
'인사동 지형들이 인테리어로 이루어진 카페',
'050713895865',
'서울 종로구 관훈동 83-2',
'CAMOUFALGE: 6,500원/FLUFFY : 6,500원/AMANNA : 6,500원',
'10:00',
'21:00',
'4.56',
'인사동',
'인사동_cafe_out_2.png',
'인사동_cafe_in_2.png');
INSERT INTO cafe ( name, content, phone, addr,menu,opentime,closetime,grade,location,outimage,inimage)
VALUES ('차마시는뜰',
'삼청동에서 즐기는 전통 찻집',
'027227006',
'서울 종로구 삼청동 35-169',
'쌍화탕 : 9,000원/대추탕 : 9,000원/오미자차 : 8,000원',
'12:00',
'21:00',
'4.5',
'인사동',
'인사동_cafe_out_3.png',
'인사동_cafe_in_3.png');
INSERT INTO cafe ( name, content, phone, addr,menu,opentime,closetime,grade,location,outimage,inimage)
VALUES ('이투이',
'스페셜티 커피 페어링 전문 카페로서 카페 이투이에서의 다채로운 경험을 통해 얻는 감성에 빠지는 공간.',
'07088231301',
'서울 종로구 관수동 130-1',
'시그니처 페어링 코스 : 19,800원/몬트리얼 로얄 밀크티 : 10,000원/얼그레이 밀크티 : 9,000원',
'11:00',
'22:00',
'4.57',
'인사동',
'인사동_cafe_out_4.png',
'인사동_cafe_in_4.png');


INSERT INTO cafe ( name, content, phone, addr,menu,opentime,closetime,grade,location,outimage,inimage)
VALUES ('카페 연남색',
'수제 쿠키 맛집. 모든 재료는 직접 공수하며 매장에서 실제로 디저트를 베이킹.',
'050714849319',
'서울 마포구 연남동 515-22 101호 카페 연남색',
'황치즈쿠키 : 4,000원/땅콩크림라떼 : 6,000원/티라미수쿠키 : 4,000원',
'11:00',
'20:00',
'4.98',
'연남동',
'연남동_cafe_out_1.png',
'연남동_cafe_in_1.png');
INSERT INTO cafe ( name, content, phone, addr,menu,opentime,closetime,grade,location,outimage,inimage)
VALUES ('온순간',
'정원이 있는 연남동 플라워 브런치 카페 입니다. 1층은 카페, 2층은 플라워 샵과 카페가 여러분을 기다립니다. ',
'023250307',
'서울 마포구 연남동 487-375 1층, 2층',
'프렌치 토스트 : 18,000원/아메리카노 : 5,000원/청포도에이드 : 7,000원',
'11:00',
'21:00',
'4.93',
'연남동',
'연남동_cafe_out_2.png',
'연남동_cafe_in_2.png');
INSERT INTO cafe ( name, content, phone, addr,menu,opentime,closetime,grade,location,outimage,inimage)
VALUES ('청수당공명',
'청수당의 다섯번째 걸음. 청수당-공명 입니다.',
'07077917972',
'서울 마포구 연남동 239-48 청수당공명',
'말차우유 : 7,000원/스톤드립커피 : 5,800원/핸드드립어린잎 : 7,500원',
'11:00',
'22:00',
'4.24',
'연남동',
'연남동_cafe_out_3.png',
'연남동_cafe_in_3.png');
INSERT INTO cafe ( name, content, phone, addr,menu,opentime,closetime,grade,location,outimage,inimage)
VALUES ('테누커피',
'불어로 정리가 된 의 테누 , 일본식 젠스타일의 인테리어 그리고 기와주택의 조화로 완성된 곳.',
'01044802914',
'서울 마포구 연남동 241-89 1층 테누커피',
'아메리카노 : 4,500원/모찌 : 9,000원/테누커피 : 6,500원',
'13:00',
'21:00',
'4.51',
'연남동',
'연남동_cafe_out_4.png',
'연남동_cafe_in_4.png');


INSERT INTO cafe ( name, content, phone, addr,menu,opentime,closetime,grade,location,outimage,inimage)
VALUES ('보이스 스튜디오',
'상수역 3분 이내 거리에 식물들과 깔끔한 인테리어의 보이스 스튜디오 입니다.',
'050713280536',
'서울 마포구 상수동 140-3',
'아메리카노 : 5,000원/유기농 말차 라떼 : 6,000원/블루밍 에이드 : 6,000원',
'08:00',
'22:00',
'4.57',
'상수',
'상수_cafe_out_1.png',
'상수_cafe_in_1.png');
INSERT INTO cafe ( name, content, phone, addr,menu,opentime,closetime,grade,location,outimage,inimage)
VALUES ('펠리칸카페',
'편한 대화가 가능한 좌식 공간, 2층엔 둘이서 즐길 수 있는 테라스가 준비되어 있는 펠리칸 카페입니다.',
'050714598305',
'서울 마포구 상수동 324-11',
'펠리칸커피 : 5,000원/소보로크로플 : 5,700원/아메리카노 : 5,000원',
'11:00',
'20:00',
'4.79',
'상수',
'상수_cafe_out_2.png',
'상수_cafe_in_2.png');
INSERT INTO cafe ( name, content, phone, addr,menu,opentime,closetime,grade,location,outimage,inimage)
VALUES ('코코아트리',
'상수동카페 코코아트리 입니다.',
'050714983443',
'서울 마포구 상수동 93-110 2층',
'아메리카노 : 5,000원/카페라떼 : 5,500원/자몽에이드 : 6,000원',
'12:00',
'20:00',
'4.8',
'상수',
'상수_cafe_out_3.png',
'상수_cafe_in_3.png');
INSERT INTO cafe ( name, content, phone, addr,menu,opentime,closetime,grade,location,outimage,inimage)
VALUES ('루크',
'커피로 제공할 수 있는 최상의 서비스와 차별화된 컨텐츠로 소비자들을 만족시킵니다.',
'050713675881',
'서울 마포구 상수동 323-1 1층 루크',
'크로플 아이스크림 : 8,000원/커스텀 커피 : 6,000원/아메리카노 : 4,500원',
'08:00',
'19:00',
'4.64',
'상수',
'상수_cafe_out_4.png',
'상수_cafe_in_4.png');


INSERT INTO cafe ( name, content, phone, addr,menu,opentime,closetime,grade,location,outimage,inimage)
VALUES ('더 스팟 패뷸러스',
'서울 중심 번화가에서 찾기 힘든 60년 넘은 근대 건축물 안에서 즐기는 Fabulous한 시간을 가져보세요.',
'050714221981',
'서울 중구 명동2가 105 1.2층',
'스모어쿠키 : 3,800원/흑임자 아인슈페너 : 6,000원/아이스 수제 바닐라 라떼 : 5,500원',
'10:30',
'22:00',
'4.54',
'명동',
'명동_cafe_out_1.png',
'명동_cafe_in_1.png');
INSERT INTO cafe ( name, content, phone, addr,menu,opentime,closetime,grade,location,outimage,inimage)
VALUES ('아트몬',
'분위기 있는 야경과 남산타워가 보이는 뷰까지, 연인과 함께 루프탑 데이트라면 아트몬 카페!',
'050713699012',
'서울 중구 남산동2가 49-14',
'카페라떼 : 4,500원/아메리카노 : 3,500원/카푸치노 : 4,500원',
'10:00',
'22:00',
'4.61',
'명동',
'명동_cafe_out_2.png',
'명동_cafe_in_2.png');
INSERT INTO cafe ( name, content, phone, addr,menu,opentime,closetime,grade,location,outimage,inimage)
VALUES ('포비 을지로',
'정성 가득 담은 베이글과 커피로 밝은 아침을 책임지고 활기찬 에너지를 선사하고자 합니다.',
'0260200880',
'서울 중구 수표동 99',
'카푸치노 : 4,500원/피콜로 : 4,000원/플랫화이트 : 4,500원',
'07:00',
'21:00',
'4.5',
'명동',
'명동_cafe_out_3.png',
'명동_cafe_in_3.png');


INSERT INTO cafe ( name, content, phone, addr,menu,opentime,closetime,grade,location,outimage,inimage)
VALUES ('바움',
'바움은 국산 곡물들로 세척, 스팀기에 찌는 과정, 건조, 로스팅 등의 과정을 거쳐 곡물가루와 음료를 만들고 있습니다.',
'07088667757',
'서울 용산구 이태원동 207-7',
'기본.5 : 5,500원/기본.쑥6 : 6,000원/기본.흑6 : 6,500원',
'10:30',
'19:30',
'4.9',
'이태원',
'이태원_cafe_out_1.png',
'이태원_cafe_in_1.png');
INSERT INTO cafe ( name, content, phone, addr,menu,opentime,closetime,grade,location,outimage,inimage)
VALUES ('리젠트스카이 루프탑 카페',
'서울 한복판에 위치한 특별한 루프탑 카페.',
'050713597541',
'서울 용산구 이태원동 260-230',
'아메리카노 : 7,000원/칵테일 : 15,000원/조각케이크 : 7,000원',
'14:00',
'21:30',
'4.71',
'이태원',
'이태원_cafe_out_2.png',
'이태원_cafe_in_2.png');
INSERT INTO cafe ( name, content, phone, addr,menu,opentime,closetime,grade,location,outimage,inimage)
VALUES ('테이프',
'은하수 우주 케이크가 유명하고, 고급 원두를 사용하여 내린 커피가 특징인 카페 테이프',
'050714195608',
'서울 용산구 이태원동 63-5 2층 TAPE',
'아메리카노 : 5,000원/콜드브루 : 6,000원/케이크 : 변동',
'12:00',
'22:00',
'4.35',
'이태원',
'이태원_cafe_out_3.png',
'이태원_cafe_in_3.png');


INSERT INTO cafe ( name, content, phone, addr,menu,opentime,closetime,grade,location,outimage,inimage)
VALUES ('서울커피 익선점',
'앙버터 식빵이 유명하고 옛 정취를 서울 정중앙에서 느낄 수 있는 카페.',
'050714044890',
'서울 종로구 익선동 166-31',
'앙버터식빵 : 4,500원/인절미 티라미수 : 7,000원/아메리카노 : 5,000원',
'11:00',
'22:00',
'4.53',
'익선동',
'익선동_cafe_out_1.png',
'익선동_cafe_in_1.png');
INSERT INTO cafe ( name, content, phone, addr,menu,opentime,closetime,grade,location,outimage,inimage)
VALUES ('시그니처알',
'커피가 맛있는 한옥형 로스터리.',
'01042474832',
'서울 종로구 익선동 166-6 시그니처 R',
'라떼 : 5,500원/아메리카노 : 5,000원/브리티쉬 라떼 : 6,100원',
'10:30',
'22:00',
'4.51',
'익선동',
'익선동_cafe_out_2.png',
'익선동_cafe_in_2.png');
INSERT INTO cafe ( name, content, phone, addr,menu,opentime,closetime,grade,location,outimage,inimage)
VALUES ('식물',
'익선동의 과거와 현재가 교차하는 카페',
'027427582',
'서울 종로구 익선동 166-62',
'아메리카노 : 5,000원/라떼 : 5,500원/플랫화이트 : 5,000원',
'12:00',
'22:00',
'4.4',
'익선동',
'익선동_cafe_out_3.png',
'익선동_cafe_in_3.png');


INSERT INTO cafe ( name, content, phone, addr,menu,opentime,closetime,grade,location,outimage,inimage)
VALUES ('우물',
'색감과 조화를 중요시하는 카페',
'050713531816',
'서울 광진구 화양동 2-1 1층',
'아메리카노 : 4,300원/라뗴 : 4,600원/토마토 에이드 : 6,000원',
'12:00',
'22:00',
'4.76',
'건대',
'건대_cafe_out_1.png',
'건대_cafe_in_1.png');
INSERT INTO cafe ( name, content, phone, addr,menu,opentime,closetime,grade,location,outimage,inimage)
VALUES ('북카페세모',
'책, 디저트, 와인과 함께 파티가 열리는 곳. 루프탑 카페.',
'050713698005',
'서울 광진구 화양동 8-43 2층, 3층',
'녹차 아인슈페너 : 6,500원/우주를 줄게 : 6,500원/게이샤 아메리카노 : 4,500원',
'12:00',
'22:00',
'4.76',
'건대',
'건대_cafe_out_2.png',
'건대_cafe_in_2.png');
INSERT INTO cafe ( name, content, phone, addr,menu,opentime,closetime,grade,location,outimage,inimage)
VALUES ('카페 26',
'대표 메뉴인 아인슈페너를 기반으로, 아이스크림과 크로플 등이 맛있는 카페입니다.',
'07086723050',
'서울 광진구 화양동 110-40 2F카페 / 6F루프탑라운지',
'아이스크림 크로플 : 6,500원/아인슈페너 : 4,500원/비엔나 밀크티 라떼 : 5,000원',
'12:00',
'21:00',
'4.68',
'건대',
'건대_cafe_out_3.png',
'건대_cafe_in_3.png');


INSERT INTO cafe ( name, content, phone, addr,menu,opentime,closetime,grade,location,outimage,inimage)
VALUES ('학림',
'세월이 고스란히 남아있는 고즈넉한 카페',
'027422877',
'서울 종로구 명륜4가  94-2 2층 학림카페',
'크림 치즈케익 : 6,000원/비엔나커피 : 6,000원/파르페 : 8,000원',
'10:00',
'22:00',
'4.51',
'대학로',
'대학로_cafe_out_1.png',
'대학로_cafe_in_1.png');
INSERT INTO cafe ( name, content, phone, addr,menu,opentime,closetime,grade,location,outimage,inimage)
VALUES ('369마실',
'성곽길따라 여유있는 한옥 카페.',
'050713202787',
'서울 성북구 삼선동1가 11-123',
'아메리카노 : 3,000원/카페라떼 : 3,500원/카푸치노 : 3,500원',
'11:00',
'19:00',
'4.52',
'대학로',
'대학로_cafe_out_2.png',
'대학로_cafe_in_2.png');
INSERT INTO cafe ( name, content, phone, addr,menu,opentime,closetime,grade,location,outimage,inimage)
VALUES ('카페 선선혜화',
'작지만 따뜻하며 분위기 좋은 카페 선선혜화 입니다.',
'050713860047',
'서울 종로구 명륜4가 164-1 3층 카페 선선혜화',
'아메리카노 : 4,100원/카페라떼 : 4,500원/더티초코 크로플 : 8,500원',
'12:00',
'20:30',
'4.66',
'대학로',
'대학로_cafe_out_3.png',
'대학로_cafe_in_3.png');


INSERT INTO cafe ( name, content, phone, addr,menu,opentime,closetime,grade,location,outimage,inimage)
VALUES ('퍼스트커피랩',
'전문 바리스타양성 기관인 [퍼스트 바리스타 아카데미]에서 운영하는 카페입니다.',
'07078678367',
'서울 마포구 동교동 179-39',
'아인슈페너 : 6,000원/아메리카노 : 4.500원/카페라떼 : 5,000원',
'09:00',
'21:00',
'4.75',
'홍대',
'홍대_cafe_out_1.png',
'홍대_cafe_in_1.png');
INSERT INTO cafe ( name, content, phone, addr,menu,opentime,closetime,grade,location,outimage,inimage)
VALUES ('공미학',
'공미학의 공은 비어있음을 의미하며, 이 공간에서 무엇을 채우던 다 의미가 있는 미학으로 탄생한다는 의미를 가짐. ',
'050713743349',
'서울 마포구 동교동 165-5 카카오프렌즈 3층',
'마포의 미학 : 7,800원/친구의 미학 : 7,800원/딸기듬뿍라떼 : 6,800원',
'11:00',
'23:00',
'4.58',
'홍대',
'홍대_cafe_out_2.png',
'홍대_cafe_in_2.png');
INSERT INTO cafe ( name, content, phone, addr,menu,opentime,closetime,grade,location,outimage,inimage)
VALUES ('카페 오로라',
'라운지같은 편안함의 1층과 예술적 전시회 느낌의 지하로 구성되어 있습니다!',
'050713998450',
'서울 마포구 서교동 337-36 1F 1F, B1F',
'드립커피 : 6,500원/돌체 콜드브루 : 6,500원/아메리카노 : 5,000원',
'12:00',
'20:00',
'4.77',
'홍대',
'홍대_cafe_out_3.png',
'홍대_cafe_in_3.png');


INSERT INTO cafe ( name, content, phone, addr,menu,opentime,closetime,grade,location,outimage,inimage)
VALUES ('레레플레이',
'동대문에 몇 안되는 고전적 이미지를 지닌 카페.',
'050714132092',
'서울 중구 황학동 753-33 1, 2층',
'커피 맑음 : 6,000원/커피 구름 : 8,000원/자메이카 블루마운틴 : 15,000원',
'11:00',
'20:00',
'4.55',
'동대문',
'동대문_cafe_out_1.png',
'동대문_cafe_in_1.png');
INSERT INTO cafe ( name, content, phone, addr,menu,opentime,closetime,grade,location,outimage,inimage)
VALUES ('차차티클럽',
'준비된 차 도구를 이용해 직접 차를 우려 마셔볼 수 있는 공간.',
'050714049489',
'서울 종로구 창신동 461-2',
'찻차리 : 8,000원/설기 카스텔라 : 6,800원/말차의 섬 : 6,500원',
'13:00',
'22:00',
'4.64',
'동대문',
'동대문_cafe_out_2.png',
'동대문_cafe_in_2.png');


INSERT INTO cafe ( name, content, phone, addr,menu,opentime,closetime,grade,location,outimage,inimage)
VALUES ('C27 가로수길점',
'달콤하고 진한 27가지의 프리미엄 치즈케이크의 향연. 70%의 치즈 함유량을 보여주는 오리지널 치즈케익의 맛을 보세요.',
'025441527',
'서울 강남구 신사동 545-12',
'치즈케이크 : 8,900원/C27 coffee : 6,000원/치즈라떼 : 6,500원',
'11:00',
'21:00',
'4.28',
'가로수길',
'가로수길_cafe_out_1.png',
'가로수길_cafe_in_1.png');
INSERT INTO cafe ( name, content, phone, addr,menu,opentime,closetime,grade,location,outimage,inimage)
VALUES ('아우어 베이커리',
'빵이 유명한 맛집. 이영자의 픽.',
'025463800',
'서울 강남구 신사동 523-19',
'아메리카노 : 4,300원/더티초코 : 4,700원/바닐라더블 : 5,200원',
'09:00',
'20:00',
'4.46',
'가로수길',
'가로수길_cafe_out_2.png',
'가로수길_cafe_in_2.png');




create table users(
	idx int auto_increment,
	name varchar(5) not null,
	password varchar(10) not null,
	email varchar(30) not null,
	gender char(10) check (gender in ('남','여')),
	age tinyint not null,
	phone varchar(11) not null,
	addr varchar(50) not null,
	PRIMARY key (idx)
);

select * from users;

insert into users(name,password,email,gender,age,phone,addr,nickname)
values('이현수','1001','soo@naver.com','남','26','01038319625','서울 관악구 봉천동','frontman');
insert into users(name,password,email,gender,age,phone,addr,nickname)
values('이지환','1002','hwan@naver.com','남','26','01093862375','경기도 성남시 분당동','51nam');
insert into users(name,password,email,gender,age,phone,addr,nickname)
values('강규석','1003','kang@naver.com','남','32','01023779159','서울 강남구 역삼동','aaaa');
insert into users(name,password,email,gender,age,phone,addr,nickname)
values('선명진','1004','seon@naver.com','남','33','01022765920','서울 중랑구 중화동','깐부');
insert into users(name,password,email,gender,age,phone,addr,nickname)
values('이동욱','1005','wook@naver.com','남','28','01013467946','경기도 부천시 원미동','abc');

create table cafe(
   idx int auto_increment,
   name varchar(25) not null,
   content varchar(100) not null,
   phone varchar(20) not null,
   addr varchar(50) not null,
   menu varchar(200) not null,
   opentime varchar(10) not null,
   closetime varchar(10) not null,
   grade decimal(3,2) not null,
   location varchar(10) not null,
   outimage varchar(100),   -- list에 들어갈 image
   inimage varchar(100),   -- detail에 들어갈 image
   primary key(idx)
);

create table users(
   idx int auto_increment,
   name varchar(5) not null,
   password varchar(10) not null,
   email varchar(30) not null,
   gender char(15) check (gender in ('남','여')),
   age tinyint not null,
   phone varchar(11) not null,
   addr varchar(50) not null,
   nickname varchar(10) not null,
   primary key(idx)
);

create table shows(
   sidx int auto_increment,
   name varchar(25) not null,
   content varchar(100) not null,
   phone varchar(20) not null,
   addr varchar(50) not null,
   menu varchar(200) not null,
   opentime varchar(10) not null,
   closetime varchar(10) not null,
   grade decimal(3,2) not null,
   location varchar(10) not null,
   outimage varchar(100),   -- list에 들어갈 image
   inimage varchar(100),   -- detail에 들어갈 image
   link varchar(100),
   primary key(sidx)
);

create table etc(
   eidx int auto_increment,
   name varchar(25) not null,
   content varchar(100) not null,
   phone varchar(20) not null,
   addr varchar(50) not null,
   menu varchar(200) not null,
   opentime varchar(10) not null,
   closetime varchar(10) not null,
   grade decimal(3,2) not null,
   location varchar(10) not null,
   outimage varchar(100),   -- list에 들어갈 image
   inimage varchar(100),   -- detail에 들어갈 image
   primary key(eidx)
);

create table food(
   fidx int auto_increment,
   name varchar(25) not null,
   content varchar(200) not null,
   phone varchar(20) not null,
   addr varchar(50) not null,
   menu varchar(200) not null,
   opentime varchar(10) not null,
   closetime varchar(10) not null,
   grade decimal(3,2) not null,
   location varchar(10) not null,
   outimage varchar(100),  
   inimage varchar(100),   
   primary key(fidx)
);

create table dibs(
   idx int auto_increment primary key,
   dibCafe varchar(300),
   dibFood varchar(300),
   dibShow varchar(300),
   dibEx varchar(300),
   nickname varchar(10) not null,
   foreign key (nickname) references users(nickname)
);

create table review(
   idx int auto_increment,   -- 번호
   nickname varchar(30) not null, -- 리뷰 작성 시 email
   grade int not null, -- 리뷰 평점
   content varchar(500) not null, -- 리뷰 내용
   category varchar(20) not null,
   imgfile varchar(100),
   refidx int,
   fidx int,
   sidx int,
   eidx int,
   primary key(idx),
   foreign key(nickname) references users(nickname),
   foreign key(refidx) references cafe(idx),
   foreign key(fidx) references food(fidx),
   foreign key(sidx) references shows(sidx),
   foreign key(eidx) references etc(eidx)
);

