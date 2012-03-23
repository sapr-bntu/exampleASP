CREATE TABLE [students] (
[id] INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT,
[firstname] VARCHAR(255)  NULL,
[lastname] vARCHAR(255)  NULL,
[middlename] VARCHAR(255)  NULL,
[group] VARCHAR(255)  NULL
);

CREATE TABLE [teams] (
[id] INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT,
[iduser] INTEGER,  
[idteam] INTEGER,
)



CREATE TABLE [labs] (
[id] INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
[numlab] INTEGER,
[link] VARCHAR(255)  NULL,
[name] VARCHAR(255)  NULL,
[idteam] INTEGER
)

INSERT INTO students (firstname,lastname,middlename,'group') VALUES ('name','name','name','107000')
INSERT INTO teams (iduser,idteam) VALUES (0,0)
INSERT INTO labs (numlab,link,name,idteam) VALUES (0,'name','name',0)


SELECT 