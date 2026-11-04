USE LimanKonteynerDB;
GO

CREATE TABLE Gemiler (
    GemiID INT IDENTITY(1,1) PRIMARY KEY,
    GemiAdi VARCHAR(100) NOT NULL,
    Bayrak VARCHAR(50),
    KapasiteTEU INT,
    VarisTarihi DATETIME
);

CREATE TABLE Rihtimlar (
    RihtimID INT IDENTITY(1,1) PRIMARY KEY,
    RihtimAdi VARCHAR(50) NOT NULL,
    MaksimumKapasiteTEU INT,
    Durum VARCHAR(20) DEFAULT 'Müsait'
);

CREATE TABLE Konteynerler (
    KonteynerID INT IDENTITY(1,1) PRIMARY KEY,
    KonteynerNo VARCHAR(20) UNIQUE NOT NULL,
    Tip VARCHAR(20),
    Agirlik DECIMAL(10,2),
    FirmaAdi VARCHAR(100)
);

CREATE TABLE Saha_Bloklari (
    BlokID INT IDENTITY(1,1) PRIMARY KEY,
    BlokKodu VARCHAR(10) NOT NULL,
    Kapasite INT,
    DoluKapasite INT DEFAULT 0
);

CREATE TABLE Vincler (
    VincID INT IDENTITY(1,1) PRIMARY KEY,
    VincAdi VARCHAR(50) NOT NULL,
    VincTipi VARCHAR(50),
    Durum VARCHAR(20) DEFAULT 'Aktif'
);

CREATE TABLE Personeller_Operatorler (
    PersonelID INT IDENTITY(1,1) PRIMARY KEY,
    AdSoyad VARCHAR(100) NOT NULL,
    Gorev VARCHAR(50),
    Telefon VARCHAR(15)
);

CREATE TABLE Gemi_Operasyonlari (
    OperasyonID INT IDENTITY(1,1) PRIMARY KEY,
    GemiID INT FOREIGN KEY REFERENCES Gemiler(GemiID),
    RihtimID INT FOREIGN KEY REFERENCES Rihtimlar(RihtimID),
    YanaşmaZamani DATETIME,
    AyrilisZamani DATETIME
);

CREATE TABLE Konteyner_Hareketleri (
    HareketID INT IDENTITY(1,1) PRIMARY KEY,
    KonteynerID INT FOREIGN KEY REFERENCES Konteynerler(KonteynerID),
    GemiID INT FOREIGN KEY REFERENCES Gemiler(GemiID),
    BlokID INT FOREIGN KEY REFERENCES Saha_Bloklari(BlokID),
    VincID INT FOREIGN KEY REFERENCES Vincler(VincID),
    PersonelID INT FOREIGN KEY REFERENCES Personeller_Operatorler(PersonelID),
    IslemTuru VARCHAR(50)
);