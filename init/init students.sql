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
INSERT INTO students (firstname,lastname,middlename,'group') VALUES ('Алексеевич','Александр','Дмитриевич','107519');
INSERT INTO students (firstname,lastname,middlename,'group') VALUES ('Бабурко','ЕВгения','Олеговна','107519');
INSERT INTO students (firstname,lastname,middlename,'group') VALUES ('Батура','Артём','Сергеевич','107519');
INSERT INTO students (firstname,lastname,middlename,'group') VALUES ('Горовой','Дмитрий','Владимирович','107519');
INSERT INTO students (firstname,lastname,middlename,'group') VALUES ('Дашкевич','Станислав','Викторович','107519');
INSERT INTO students (firstname,lastname,middlename,'group') VALUES ('Жевняк','Владислав','Игоревич','107519');
INSERT INTO students (firstname,lastname,middlename,'group') VALUES ('Зеленков','Максим','Алексеевич','107519');
INSERT INTO students (firstname,lastname,middlename,'group') VALUES ('Кирцун','Вероника','Михайловна','107519');
INSERT INTO students (firstname,lastname,middlename,'group') VALUES ('Клокова','Екатерина','Александровна','107519');
INSERT INTO students (firstname,lastname,middlename,'group') VALUES ('Крищик','Евгений','Николаевич','107519');
INSERT INTO students (firstname,lastname,middlename,'group') VALUES ('Курейчик','Андрей','Игоревич','107519');
INSERT INTO students (firstname,lastname,middlename,'group') VALUES ('Леонович','Марина','Сергеевна','107519');
INSERT INTO students (firstname,lastname,middlename,'group') VALUES ('Михно','Вячеслав','Святославович','107519');
INSERT INTO students (firstname,lastname,middlename,'group') VALUES ('Мулярчик','Екатерина','Ивановна','107519');
INSERT INTO students (firstname,lastname,middlename,'group') VALUES ('Мухаревский','Александр','Юрьевич','107519');
INSERT INTO students (firstname,lastname,middlename,'group') VALUES ('Ненартович','Максим','Николаевич','107519');
INSERT INTO students (firstname,lastname,middlename,'group') VALUES ('Полячок','Сергей','Александрович','107519');
INSERT INTO students (firstname,lastname,middlename,'group') VALUES ('Поседько','Виктория','Александровна','107519');
INSERT INTO students (firstname,lastname,middlename,'group') VALUES ('Прокопенко','Герман','Игоревич','107519');
INSERT INTO students (firstname,lastname,middlename,'group') VALUES ('Прокурат','Еевгений','Игоревич','107519');
INSERT INTO students (firstname,lastname,middlename,'group') VALUES ('Синякевич','Николай','Александрович','107519');
INSERT INTO students (firstname,lastname,middlename,'group') VALUES ('Страленя','Михаил','Николаевич','107519');
INSERT INTO students (firstname,lastname,middlename,'group') VALUES ('Стрижов','Александр','Иванович','107519');
INSERT INTO students (firstname,lastname,middlename,'group') VALUES ('Тарасевич','Анастасия','Леонидовна','107519');
INSERT INTO students (firstname,lastname,middlename,'group') VALUES ('Царик','Дмитрий','Васильевич','107519');
INSERT INTO students (firstname,lastname,middlename,'group') VALUES ('Чумак','Евгений','Александрович','107519');
INSERT INTO students (firstname,lastname,middlename,'group') VALUES ('Шахнова','Татьяна','Александровна','107519');
INSERT INTO students (firstname,lastname,middlename,'group') VALUES ('Шподарев','Андрей','Андреевич','107519');
INSERT INTO students (firstname,lastname,middlename,'group') VALUES ('Щёголева','Мария','Алексеевна','107519');
INSERT INTO students (firstname,lastname,middlename,'group') VALUES ('Юсель','Алексей','Павлович','107519');

DELETE FROM students
WHERE id<31
