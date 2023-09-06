create database comercialCelulares;

use comercialCelulares;

-- CREACION DE LA TABLA DE PRODUCTOS
create table descripciones(
	DES_id int primary key auto_increment,
    DESram varchar(10),
    DESrom varchar(10),
    DEScamara varchar(10),
    DESbateria varchar(10),
    DESpantalla varchar(10)
);

-- CREACION DE LA TABLA DE CLIENTES
create table marcas(
	MAR_id int primary key auto_increment,
	MARtipo varchar(20)
);

-- CREACION DE LA TABLA DE PRODUCTOS
create table productos(
	PRO_id int primary key auto_increment,
    DES_id int not null,
    MAR_id int not null,
    PROmodelo varchar(20) not null default('---'),
    PROgama varchar(10) not null default('---'),
    PROfoto blob not null,
    PROlote int not null,
    PROstock int not null,
    PROestado int,
    foreign key (DES_id) references descripciones(DES_id),
    foreign key (MAR_id) references marcas(MAR_id)
);

-- CREACION DE LA TABLA DE CLIENTES
create table documentos(
	DOC_id int primary key auto_increment,
	DOCtipo varchar(20)
);

-- CREACION DE LA TABLA DE CLIENTES
create table clientes(
	CLI_id int primary key auto_increment,
	CLInombres varchar(40) not null,
    CLIapellidos varchar(40) not null,
    DOC_id int not null,
    CLInumeroDoc int,
    CLIdireccion varchar(200),
    CLItelefono int,
    CLIemail varchar(100),
    CLIfechaReg date,
    CLIestado int,
    foreign key (DOC_id) references documentos(DOC_id)
);

-- CREACION DE LA TABLA DE CARGOS
create table cargos(
	CAR_id int primary key auto_increment,
	CARtipo varchar(20)
);

-- CREACION DE LA TABLA DE EMPLEADOS
create table empleados(
	EMP_id int primary key auto_increment not null,
	CAR_id int,
    EMPnombres varchar(200),
    EMPapellidos varchar(200),
    EMPsexo varchar(50),
    EMPfoto blob,
    EMPfechaNac date,
    DOC_id int,
    EMPnumeroDoc bigint(20),
    EMPdireccion varchar(200),
    EMPtelefono int,
    EMPemail varchar(200),
    EMPacceso varchar(200),
    EMPcredencial varchar(200),
    EMPfechaReg datetime,
    EMPfechaBaja datetime,
    EMPestado int,
    foreign key (CAR_id) references cargos(CAR_id),
    foreign key (DOC_id) references documentos(DOC_id)
);

-- CREACION DE LA TABLA DE VENTA
create table ventas(
	VEN_id int primary key auto_increment,
	EMP_id int,
    CLI_id int,
    VENfechaReg int,
    VENtipoComprobante int,
    VENestado bit,
    foreign key (EMP_id) references empleados(EMP_id),
    foreign key (CLI_id) references clientes(CLI_id)
);

-- CREACION DE LA TABLA DE DETALLE DE VENTA
create table detalles(
	DET_id int primary key auto_increment,
	VEN_id int,
    PRO_id int,
    DETcantidad int,
    DETprecio int,
    DETdescuento bit,
    foreign key (VEN_id) references ventas(VEN_id),
    foreign key (PRO_id) references productos(PRO_id)
);

create table proveedores(
	PROV_id int primary key auto_increment,
    PROVruc bigint(20),
    PROVrazon varchar(50),
    PROVnombre varchar(50),
    PROVdireccion varchar(200),
    PROVtelefono int,
    PROVcorreo varchar(100),
    PROVestado int
);

create table ingresos(
	ING_id int primary key auto_increment,
    EMP_id int,
    PROV_id int,
    INGfecha date,
    INGtipoComprobante varchar(10),
    INGestado int,
    foreign key (EMP_id) references empleados(EMP_id),
    foreign key (PROV_id) references proveedores(PROV_id)
);

create table detalleingresos(
	DIN_id int primary key auto_increment,
    ING_id int,
    PRO_id int,
    DINfecha date,
    DINprecioCompra decimal(10.2),
    INGstock int,
    foreign key (ING_id) references ingresos(ING_id),
    foreign key (PRO_id) references productos(PRO_id)
);

-- Insertamos datos a la tabla cargos
insert into cargos(CARtipo) values('administrador');
insert into cargos(CARtipo) values('supervisor');
insert into cargos(CARtipo) values('almacenero');
insert into cargos(CARtipo) values('vendedor');

-- Insertamos datos a la tabla documentos
insert into documentos(DOCtipo) values('DNI');
insert into documentos(DOCtipo) values('pasaporte');
insert into documentos(DOCtipo) values('Cedula de identidad');

-- Insertamos datos a la tabla marcas
insert into marcas(MARtipo) values('Apple');
insert into marcas(MARtipo) values('Asus');
insert into marcas(MARtipo) values('Black Shark');
insert into marcas(MARtipo) values('BlackBerry');
insert into marcas(MARtipo) values('BLU');
insert into marcas(MARtipo) values('Cat');
insert into marcas(MARtipo) values('Google');
insert into marcas(MARtipo) values('Haier');
insert into marcas(MARtipo) values('HiSense');
insert into marcas(MARtipo) values('Honor');
insert into marcas(MARtipo) values('HP');
insert into marcas(MARtipo) values('HTC');
insert into marcas(MARtipo) values('Huawei');
insert into marcas(MARtipo) values('Lenovo');
insert into marcas(MARtipo) values('LG');
insert into marcas(MARtipo) values('Microsoft');
insert into marcas(MARtipo) values('Motorola');
insert into marcas(MARtipo) values('Nokia');
insert into marcas(MARtipo) values('OnePlus');
insert into marcas(MARtipo) values('Oppo');
insert into marcas(MARtipo) values('Panasonic');
insert into marcas(MARtipo) values('POCO');
insert into marcas(MARtipo) values('Razer');
insert into marcas(MARtipo) values('realme');
insert into marcas(MARtipo) values('Samsung');
insert into marcas(MARtipo) values('Sony');
insert into marcas(MARtipo) values('TCL');
insert into marcas(MARtipo) values('Uimi');
insert into marcas(MARtipo) values('vivo');
insert into marcas(MARtipo) values('Xiaomi');
insert into marcas(MARtipo) values('ZTE');

-- Insertamos datos a la tabla empleados
insert into empleados(CAR_id,EMPnombres,EMPapellidos,EMPsexo,EMPfoto,EMPfechaNac,DOC_id,EMPnumeroDoc,EMPdireccion,EMPtelefono,EMPemail,EMPacceso,EMPcredencial,EMPfechaReg,EMPfechaBaja,EMPestado)
values(1,'Mateo','Guzmán','','','1997-06-15',3,3683002945,'Calle 123, Avenida Principal, Ciudad X',980123456,'Mateo.Guzmán@.gmail.com','E3683002945','12345','2002-10-12','2005-09-07',0);
insert into empleados(CAR_id,EMPnombres,EMPapellidos,EMPsexo,EMPfoto,EMPfechaNac,DOC_id,EMPnumeroDoc,EMPdireccion,EMPtelefono,EMPemail,EMPacceso,EMPcredencial,EMPfechaReg,EMPfechaBaja,EMPestado)
values(1,'Catalina','Navarro','','','1998-06-08',2,38413728,'Avenida Central, Urbanización Los Pinos, Ciudad Y',981234567,'Catalina .Navarro@.gmail.com','E3683002945','12345','2005-10-26','2006-02-28',0);
insert into empleados(CAR_id,EMPnombres,EMPapellidos,EMPsexo,EMPfoto,EMPfechaNac,DOC_id,EMPnumeroDoc,EMPdireccion,EMPtelefono,EMPemail,EMPacceso,EMPcredencial,EMPfechaReg,EMPfechaBaja,EMPestado)
values(2,'Sebastián','Bravo','','','2001-02-23',2,22659186,'Calle Rosa, Barrio Oeste, Ciudad Z',982345678,'Sebastián. Bravo@.gmail.com','E22659186','12345','2003-01-03',null,1);
insert into empleados(CAR_id,EMPnombres,EMPapellidos,EMPsexo,EMPfoto,EMPfechaNac,DOC_id,EMPnumeroDoc,EMPdireccion,EMPtelefono,EMPemail,EMPacceso,EMPcredencial,EMPfechaReg,EMPfechaBaja,EMPestado)
values(3,'Martina','Espinoza','','','2003-11-16',1,5146744,'Carrera 45, Conjunto Residencial Sol Dorado, Ciudad W',983456789,'Martina.Espinoza@.gmail.com','E5146744','12345','2000-08-21','2005-04-15',0);
insert into empleados(CAR_id,EMPnombres,EMPapellidos,EMPsexo,EMPfoto,EMPfechaNac,DOC_id,EMPnumeroDoc,EMPdireccion,EMPtelefono,EMPemail,EMPacceso,EMPcredencial,EMPfechaReg,EMPfechaBaja,EMPestado)
values(1,'Felipe','Pinto','','','2003-10-08',1,3646616,'Callejón Verde, Colonia del Sol, Ciudad A',984567890,'Felipe.Pinto@.gmail.com','E3646616','12345','2000-04-22','2005-04-16',0);
insert into empleados(CAR_id,EMPnombres,EMPapellidos,EMPsexo,EMPfoto,EMPfechaNac,DOC_id,EMPnumeroDoc,EMPdireccion,EMPtelefono,EMPemail,EMPacceso,EMPcredencial,EMPfechaReg,EMPfechaBaja,EMPestado)
values(4,'Paula','Medina','','','1998-10-11',3,4343571977,'Avenida del Parque, Edificio Jardines Altos, Ciudad B',985678901,'Paula.Medina@.gmail.com','E4343571977','12345','2004-03-01','2005-03-22',0);
insert into empleados(CAR_id,EMPnombres,EMPapellidos,EMPsexo,EMPfoto,EMPfechaNac,DOC_id,EMPnumeroDoc,EMPdireccion,EMPtelefono,EMPemail,EMPacceso,EMPcredencial,EMPfechaReg,EMPfechaBaja,EMPestado)
values(1,'Lucas','Ríos','','','2002-08-09',2,2561017,'Calle Cerezos, Condominio Las Rosas, Ciudad C',986789012,'Lucas. Ríos@.gmail.com','E2561017','12345','2004-09-13',null,1);
insert into empleados(CAR_id,EMPnombres,EMPapellidos,EMPsexo,EMPfoto,EMPfechaNac,DOC_id,EMPnumeroDoc,EMPdireccion,EMPtelefono,EMPemail,EMPacceso,EMPcredencial,EMPfechaReg,EMPfechaBaja,EMPestado)
values(4,'Victoria','Paredes','','','2003-06-14',3,9700704345,'Calle 567, Sector Los Álamos, Ciudad D',987890123,'Victoria.Paredes@.gmail.com','E9700704345','12345','2003-05-19',null,1);
insert into empleados(CAR_id,EMPnombres,EMPapellidos,EMPsexo,EMPfoto,EMPfechaNac,DOC_id,EMPnumeroDoc,EMPdireccion,EMPtelefono,EMPemail,EMPacceso,EMPcredencial,EMPfechaReg,EMPfechaBaja,EMPestado)
values(4,'Matías','Silva','','','2000-08-28',2,74326157,'Avenida Primavera, Residencial El Bosque, Ciudad E',988901234,'Matías.Silva@.gmail.com','E74326157','12345','2005-10-07',null,1);
insert into empleados(CAR_id,EMPnombres,EMPapellidos,EMPsexo,EMPfoto,EMPfechaNac,DOC_id,EMPnumeroDoc,EMPdireccion,EMPtelefono,EMPemail,EMPacceso,EMPcredencial,EMPfechaReg,EMPfechaBaja,EMPestado)
values(4,'Natalia','Ortega','','','2000-05-04',1,4143720,'Paseo del Sol, Conjunto Vista Hermosa, Ciudad F',989012345,'Natalia.Ortega@.gmail.com','E4143720','12345','2005-02-08',null,1);

-- Insertamos datos a la tabla proveedores
insert into proveedores(PROVruc,PROVrazon,PROVnombre,PROVdireccion,PROVtelefono,PROVcorreo,PROVestado)
values(1234567890123,'Apple Inc.','iPhone (Apple)','Apple Inc. - Cupertino, California, Estados Unidos.',2704583,'Apple Inc.@iPhone (Apple).com',1);
insert into proveedores(PROVruc,PROVrazon,PROVnombre,PROVdireccion,PROVtelefono,PROVcorreo,PROVestado)
values(9876543210987,'Samsung Electronics Co., Ltd.','Galaxy (Samsung)','Samsung Electronics Co., Ltd. - Suwon, Corea del Sur.',2707219,'Samsung Electronics Co., Ltd.@Galaxy (Samsung).com',1);
insert into proveedores(PROVruc,PROVrazon,PROVnombre,PROVdireccion,PROVtelefono,PROVcorreo,PROVestado)
values(4567890123456,'Huawei Technologies Co., Ltd.','Mate (Huawei)','Huawei Technologies Co., Ltd. - Shenzhen, China.',2721365,'Huawei Technologies Co., Ltd.@Mate (Huawei).com',1);
insert into proveedores(PROVruc,PROVrazon,PROVnombre,PROVdireccion,PROVtelefono,PROVcorreo,PROVestado)
values(7890123456789,'Xiaomi Corporation','Redmi (Xiaomi)','Xiaomi Corporation - Pekín, China.',2708901,'Xiaomi Corporation@Redmi (Xiaomi).com',1);
insert into proveedores(PROVruc,PROVrazon,PROVnombre,PROVdireccion,PROVtelefono,PROVcorreo,PROVestado)
values(2345678901234,'Sony Corporation','Xperia (Sony)','Sony Corporation - Tokio, Japón.',2735248,'Sony Corporation@Xperia (Sony).com',1);
insert into proveedores(PROVruc,PROVrazon,PROVnombre,PROVdireccion,PROVtelefono,PROVcorreo,PROVestado)
values(5678901234567,'LG Electronics Inc.','G Series (LG)','LG Electronics Inc. - Seúl, Corea del Sur.',2710076,'LG Electronics Inc.@G Series (LG).com',1);
insert into proveedores(PROVruc,PROVrazon,PROVnombre,PROVdireccion,PROVtelefono,PROVcorreo,PROVestado)
values(8901234567890,'OnePlus Technology Co., Ltd.','OnePlus','OnePlus Technology Co., Ltd. - Shenzhen, China.',2706492,'OnePlus Technology Co., Ltd.@OnePlus.com',1);
insert into proveedores(PROVruc,PROVrazon,PROVnombre,PROVdireccion,PROVtelefono,PROVcorreo,PROVestado)
values(3456789012345,'Motorola Mobility LLC','Moto (Motorola)','Motorola Mobility LLC - Chicago, Illinois, Estados Unidos.',2789350,'Motorola Mobility LLC@Moto (Motorola).com',0);
insert into proveedores(PROVruc,PROVrazon,PROVnombre,PROVdireccion,PROVtelefono,PROVcorreo,PROVestado)
values(6789012345678,'Nokia Corporation','Nokia','Nokia Corporation - Espoo, Finlandia.',2746821,'Nokia Corporation@Nokia.com',0);
insert into proveedores(PROVruc,PROVrazon,PROVnombre,PROVdireccion,PROVtelefono,PROVcorreo,PROVestado)
values(9012345678901,'Oppo Electronics Corporation','Find X (Oppo)','Oppo Electronics Corporation - Dongguan, China.',2725998,'Oppo Electronics Corporation@Find X (Oppo).com',0);

-- Insertamos datos a la tabla descripciones
insert into descripciones(DESram,DESrom,DEScamara,DESbateria,DESpantalla) values('6 GB','128/256/512 GB','Triple 12 MP','3,240 mAh','6.7" OLED');
insert into descripciones(DESram,DESrom,DEScamara,DESbateria,DESpantalla) values('4 GB','128/256 GB','Doble 12 MP','2,438 mAh','5.4 pulgadas, OLED');
insert into descripciones(DESram,DESrom,DEScamara,DESbateria,DESpantalla) values('12 GB','128/256/512 GB','Cuádruple 108 MP','5,000 mAh','6.8 pulgadas, Dynamic AMOLED');
insert into descripciones(DESram,DESrom,DEScamara,DESbateria,DESpantalla) values('8/12 GB','128/256 GB','Triple 12 MP','4,000 mAh','6.2 pulgadas, Dynamic AMOLED');
insert into descripciones(DESram,DESrom,DEScamara,DESbateria,DESpantalla) values('8 GB','256 GB','Triple 12 MP','4,300 mAh','6.7 pulgadas, Dynamic AMOLED');
insert into descripciones(DESram,DESrom,DEScamara,DESbateria,DESpantalla) values('8 GB','256 GB','Triple 12 MP','3,500 mAh','6.3 pulgadas, Dynamic AMOLED');
insert into descripciones(DESram,DESrom,DEScamara,DESbateria,DESpantalla) values('6/8 GB','128/256 GB','Doble 13 MP','8,000 mAh','11 pulgadas, LTPS LCD');
insert into descripciones(DESram,DESrom,DEScamara,DESbateria,DESpantalla) values('3 GB','32/64 GB','Doble 8 MP','7,040 mAh','10.4 pulgadas, TFT');
insert into descripciones(DESram,DESrom,DEScamara,DESbateria,DESpantalla) values('8/12 GB','128/256 GB','Cuádruple 50 MP','4,360 mAh','6.6 pulgadas, OLED');
insert into descripciones(DESram,DESrom,DEScamara,DESbateria,DESpantalla) values('6/8 GB','128/256 GB','Triple 50 MP','3,800 mAh','6.1 pulgadas, OLED');
insert into descripciones(DESram,DESrom,DEScamara,DESbateria,DESpantalla) values('8 GB','256 GB','Cuádruple 50 MP','4,400 mAh','6.76 pulgadas, OLED');
insert into descripciones(DESram,DESrom,DEScamara,DESbateria,DESpantalla) values('6/8 GB','128/256 GB','Triple 40 MP','4,200 mAh','6.62 pulgadas, OLED');
insert into descripciones(DESram,DESrom,DEScamara,DESbateria,DESpantalla) values('4/6 GB','64/128/256 GB','Doble 13 MP','7,500 mAh','10.8 pulgadas, TFT IPS');
insert into descripciones(DESram,DESrom,DEScamara,DESbateria,DESpantalla) values('2/3 GB','16/32/64 GB','Doble 5 MP','5,100 mAh','10.1 pulgadas, IPS LCD');
insert into descripciones(DESram,DESrom,DEScamara,DESbateria,DESpantalla) values('8/12 GB','128/256 GB','Triple 108 MP','4,600 mAh','6.81 pulgadas, AMOLED');
insert into descripciones(DESram,DESrom,DEScamara,DESbateria,DESpantalla) values('8/12 GB','128/256 GB','Cuádruple 108 MP','4,780 mAh','6.67 pulgadas, AMOLED');
insert into descripciones(DESram,DESrom,DEScamara,DESbateria,DESpantalla) values('6/8 GB','64/128 GB','Cuádruple 64 MP','5,020 mAh','6.67 pulgadas, AMOLED');
insert into descripciones(DESram,DESrom,DEScamara,DESbateria,DESpantalla) values('2 GB','32 GB','Doble 13 MP','5,000 mAh','6.53 pulgadas, IPS LCD');
insert into descripciones(DESram,DESrom,DEScamara,DESbateria,DESpantalla) values('6/8 GB','128/256 GB','Cuádruple 48 MP','5,160 mAh','6.67 pulgadas, IPS LCD');
insert into descripciones(DESram,DESrom,DEScamara,DESbateria,DESpantalla) values('6/8 GB','128/256 GB','Triple 48 MP','4,520 mAh','6.67 pulgadas, AMOLED');

-- Insertamos datos a la tabla productos
insert into productos(DES_id,MAR_id,PROmodelo,PROgama,PROfoto,PROlote,PROstock,PROestado) values(1,2,'iPhone 13 Pro Max','iPhone','','000-5984-98',26,1);
insert into productos(DES_id,MAR_id,PROmodelo,PROgama,PROfoto,PROlote,PROstock,PROestado) values(2,'2','iPhone 13 Mini','iPhone','','000-5984-99',48,1);
insert into productos(DES_id,MAR_id,PROmodelo,PROgama,PROfoto,PROlote,PROstock,PROestado) values(3,26,'Galaxy S22 Ultra','Galaxy S','','000-5999-14',61,1);
insert into productos(DES_id,MAR_id,PROmodelo,PROgama,PROfoto,PROlote,PROstock,PROestado) values(4,26,'Galaxy S21','Galaxy S','','000-5274-475',21,1);
insert into productos(DES_id,MAR_id,PROmodelo,PROgama,PROfoto,PROlote,PROstock,PROestado) values(5,26,'Galaxy Note 20','Galaxy Note','','000-5984-136',30,1);
insert into productos(DES_id,MAR_id,PROmodelo,PROgama,PROfoto,PROlote,PROstock,PROestado) values(6,26,'Galaxy Note 10','Galaxy Note','','000-5374-107',14,1);
insert into productos(DES_id,MAR_id,PROmodelo,PROgama,PROfoto,PROlote,PROstock,PROestado) values(7,26,'Galaxy Tab S7','Galaxy Tab','','000-5394-758',0,1);
insert into productos(DES_id,MAR_id,PROmodelo,PROgama,PROfoto,PROlote,PROstock,PROestado) values(8,26,'Galaxy Tab A7','Galaxy Tab','','000-5984-109',0,0);
insert into productos(DES_id,MAR_id,PROmodelo,PROgama,PROfoto,PROlote,PROstock,PROestado) values(9,14,'Huawei P50 Pro','P Series','','000-5984-110',18,1);
insert into productos(DES_id,MAR_id,PROmodelo,PROgama,PROfoto,PROlote,PROstock,PROestado) values(10,14,'Huawei P40','P Series','','000-5984-111',15,1);
insert into productos(DES_id,MAR_id,PROmodelo,PROgama,PROfoto,PROlote,PROstock,PROestado) values(11,14,'Huawei Mate 40 Pro','Mate Series','','000-5984-112',10,1);
insert into productos(DES_id,MAR_id,PROmodelo,PROgama,PROfoto,PROlote,PROstock,PROestado) values(12,14,'Huawei Mate 30','Mate Series','','000-5984-113',26,1);
insert into productos(DES_id,MAR_id,PROmodelo,PROgama,PROfoto,PROlote,PROstock,PROestado) values(13,14,'Huawei MediaPad M6','MediaPad','','000-5984-114',48,1);
insert into productos(DES_id,MAR_id,PROmodelo,PROgama,PROfoto,PROlote,PROstock,PROestado) values(14,14,'Huawei MediaPad T5','MediaPad','','000-5984-115',16,1);
insert into productos(DES_id,MAR_id,PROmodelo,PROgama,PROfoto,PROlote,PROstock,PROestado) values(15,31,'Xiaomi Mi 11','Mi Series','','000-5984-116',98,1);
insert into productos(DES_id,MAR_id,PROmodelo,PROgama,PROfoto,PROlote,PROstock,PROestado) values(16,31,'Xiaomi Mi 10','Mi Series','','000-5984-117',52,1);
insert into productos(DES_id,MAR_id,PROmodelo,PROgama,PROfoto,PROlote,PROstock,PROestado) values(17,31,'Redmi Note 10 Pro','Redmi Series','','000-5984-118',60,1);
insert into productos(DES_id,MAR_id,PROmodelo,PROgama,PROfoto,PROlote,PROstock,PROestado) values(18,31,'Redmi 9A','Redmi Series','','000-5984-119',40,1);
insert into productos(DES_id,MAR_id,PROmodelo,PROgama,PROfoto,PROlote,PROstock,PROestado) values(19,31,'Poco X3 Pro','Poco Series','','000-5927-025',84,1);
insert into productos(DES_id,MAR_id,PROmodelo,PROgama,PROfoto,PROlote,PROstock,PROestado) values(20,31,'Poco F3','Poco Series','','000-3884-258',15,1);

-- Insertamos datos a la tabla de clientes
insert into clientes(CLInombres,CLIapellidos,DOC_id,CLInumeroDoc,CLIdireccion,CLItelefono,CLIemail,CLIfechaReg,CLIestado) values('Carlos','Rodríguez',1,4006436,'Calle Falsa #123',1,'Carlos.Rodríguez@gmail.com','2017-03-02',1);
insert into clientes(CLInombres,CLIapellidos,DOC_id,CLInumeroDoc,CLIdireccion,CLItelefono,CLIemail,CLIfechaReg,CLIestado) values('Ana','Pérez',1,8167471,'Avenida Imaginaria #456',1,'Ana.Pérez@gmail.com','2020-03-15',1);
insert into clientes(CLInombres,CLIapellidos,DOC_id,CLInumeroDoc,CLIdireccion,CLItelefono,CLIemail,CLIfechaReg,CLIestado) values('Javier','López',1,4197813,'Carrera Inventada #789',1,'Javier.López@gmail.com','2020-10-01',1);
insert into clientes(CLInombres,CLIapellidos,DOC_id,CLInumeroDoc,CLIdireccion,CLItelefono,CLIemail,CLIfechaReg,CLIestado) values('Laura','González',1,9650368,'Callejón Sin Salida #101',1,'Laura.González@gmail.com','2020-05-01',1);
insert into clientes(CLInombres,CLIapellidos,DOC_id,CLInumeroDoc,CLIdireccion,CLItelefono,CLIemail,CLIfechaReg,CLIestado) values('Pedro','Martínez',1,1410485,'Boulevard de los Sueños #234',1,'Pedro.Martínez@gmail.com','2020-12-25',1);
insert into clientes(CLInombres,CLIapellidos,DOC_id,CLInumeroDoc,CLIdireccion,CLItelefono,CLIemail,CLIfechaReg,CLIestado) values('María','Fernández',1,2370166,'Camino de la Ilusión #567',1,'María.Fernández@gmail.com','2015-07-31',1);
insert into clientes(CLInombres,CLIapellidos,DOC_id,CLInumeroDoc,CLIdireccion,CLItelefono,CLIemail,CLIfechaReg,CLIestado) values('Juan','Smith',1,1725844,'Plaza de los Deseos #890',1,'Juan.Smith@gmail.com','2020-08-12',1);
insert into clientes(CLInombres,CLIapellidos,DOC_id,CLInumeroDoc,CLIdireccion,CLItelefono,CLIemail,CLIfechaReg,CLIestado) values('Elena','Johnson',1,8675152,'Pasaje de la Imaginación #1234',1,'Elena.Johnson@gmail.com','2015-07-25',1);
insert into clientes(CLInombres,CLIapellidos,DOC_id,CLInumeroDoc,CLIdireccion,CLItelefono,CLIemail,CLIfechaReg,CLIestado) values('Miguel','Brown',1,4512235,'Avenida de la Fantasía #5678',1,'Miguel.Brown@gmail.com','2019-05-05',1);
insert into clientes(CLInombres,CLIapellidos,DOC_id,CLInumeroDoc,CLIdireccion,CLItelefono,CLIemail,CLIfechaReg,CLIestado) values('Sofia','Davis',1,5805162,'Calle de los Sueños Rotos #9012',1,'Sofia.Davis@gmail.com','2015-05-08',1);
insert into clientes(CLInombres,CLIapellidos,DOC_id,CLInumeroDoc,CLIdireccion,CLItelefono,CLIemail,CLIfechaReg,CLIestado) values('David','Miller',1,8575602,'Paseo de la Abstracción #3456',1,'David.Miller@gmail.com','2020-10-25',1);
insert into clientes(CLInombres,CLIapellidos,DOC_id,CLInumeroDoc,CLIdireccion,CLItelefono,CLIemail,CLIfechaReg,CLIestado) values('Andrea','Wilson',1,9286489,'Ruta de la Creatividad #7890',1,'Andrea.Wilson@gmail.com','2016-04-18',1);
insert into clientes(CLInombres,CLIapellidos,DOC_id,CLInumeroDoc,CLIdireccion,CLItelefono,CLIemail,CLIfechaReg,CLIestado) values('Luis','Lee',1,9467671,'Avenida de la Inspiración #12345',1,'Luis.Lee@gmail.com','2015-11-30',1);
insert into clientes(CLInombres,CLIapellidos,DOC_id,CLInumeroDoc,CLIdireccion,CLItelefono,CLIemail,CLIfechaReg,CLIestado) values('Carmen','Taylor',1,6886364,'Calle del Arte #67890',1,'Carmen.Taylor@gmail.com','2022-12-18',1);
insert into clientes(CLInombres,CLIapellidos,DOC_id,CLInumeroDoc,CLIdireccion,CLItelefono,CLIemail,CLIfechaReg,CLIestado) values('Jorge','Anderson',1,2374930,'Avenida de los Pensamientos #123456',1,'Jorge.Anderson@gmail.com','2022-02-28',1);
insert into clientes(CLInombres,CLIapellidos,DOC_id,CLInumeroDoc,CLIdireccion,CLItelefono,CLIemail,CLIfechaReg,CLIestado) values('Marta','White',1,2253679,'Pasaje de la Imaginación #789012',1,'Marta.White@gmail.com','2015-03-18',1);
insert into clientes(CLInombres,CLIapellidos,DOC_id,CLInumeroDoc,CLIdireccion,CLItelefono,CLIemail,CLIfechaReg,CLIestado) values('Alejandro','Harris',1,1035056,'Calle de las Ideas Brillantes #234567',1,'Alejandro.Harris@gmail.com','2022-05-26',1);
insert into clientes(CLInombres,CLIapellidos,DOC_id,CLInumeroDoc,CLIdireccion,CLItelefono,CLIemail,CLIfechaReg,CLIestado) values('Patricia','Martin',1,5070051,'Avenida de la Innovación #890123',1,'Patricia.Martin@gmail.com','2021-02-25',1);
insert into clientes(CLInombres,CLIapellidos,DOC_id,CLInumeroDoc,CLIdireccion,CLItelefono,CLIemail,CLIfechaReg,CLIestado) values('Manuel','Jackson',1,4069714,'Boulevard de la Creatividad #456789',1,'Manuel.Jackson@gmail.com','2018-03-27',1);
insert into clientes(CLInombres,CLIapellidos,DOC_id,CLInumeroDoc,CLIdireccion,CLItelefono,CLIemail,CLIfechaReg,CLIestado) values('Isabel','Clark',1,3292491,'Camino de la Reflexión #012345',1,'Isabel.Clark@gmail.com','2023-03-02',1);


