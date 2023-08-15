Create database dbPracticaG04
go 
Use dbPracticaG04
go

Create table Rol
(
 [Id] int not null primary key identity(1,1),
 [Nombre] varchar(100) not null
)
go

Create table Usuario
(
 [Id] int not null primary key identity(1,1), 
 [IdRol] int not null, 
 [Nombre] varchar(100) not null, 
 [Apellido] varchar(100) not null,
 [Login] varchar(100) not null,
 [Password] varchar(37) not null,
 [Estatus] tinyint not null,
 [FechaRegistro] datetime not null,
 foreign key (IdRol) references Rol(Id)
)
go

/*viernes70*/
Insert into Usuario(IdRol, Nombre, Apellido, Login, Password, Estatus, FechaRegistro)
Values(1, 'Victor', 'Rivas', 'ViDuran', '58074cb93ac0ebd10d011605eaf5e71c', 1, '2023-08-15')
go
