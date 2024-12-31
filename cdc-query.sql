USE [VeritabanıAdı];


--1. CDC Özelliğini Veritabanında Açma
EXEC sys.sp_cdc_enable_db;

--2. Bir Tablo İçin CDC Etkinleştirme
EXEC sys.sp_cdc_enable_table
    @source_schema = N'dbo',
    @source_name = N'TabloAdı',
    @role_name = NULL;
    
--3. CDC Tablolarını Kontrol Etme
SELECT * FROM cdc.change_tables;

--4. CDC Verilerini Okuma
SELECT * FROM cdc.dbo_TabloAdi_CT;