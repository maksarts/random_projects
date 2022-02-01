--- Хранимые процедуры для реализации рейтинга и проч. ---

-- Рейтинг для всех студентов по заданному предмету (считается по КМ-ам)
CREATE PROCEDURE AvgMarkBySubj
@SubjID int 
AS
	--SELECT Subj.Name_sbj AS 'Предмет' FROM Subj
	--	WHERE Subj.Id_Subj = @SubjID
	SELECT Name_stud, AVG(CONVERT(decimal, KMMark)) AS 'Средний балл'
		FROM Student 
		INNER JOIN AccMarks ON Student.Id_stud = AccMarks.Id_Stud
		INNER JOIN KM ON AccMarks.Id_AccMarks = KM.Id_AccMarks
		WHERE AccMarks.Id_Subj = @SubjID
		GROUP BY Name_stud 
	ORDER BY Name_stud;
GO

AvgMarkBySubj 6;

-- Текущая успеваемость для всех студентов, считается по всем предметам
CREATE PROCEDURE AvgMark
AS
	SELECT Name_stud, AVG(CONVERT(decimal, KMMark)) AS 'Средний балл'
		FROM Student 
		INNER JOIN AccMarks ON Student.Id_stud = AccMarks.Id_Stud
		INNER JOIN KM ON AccMarks.Id_AccMarks = KM.Id_AccMarks
		GROUP BY Name_stud 
	ORDER BY Name_stud;
GO

AvgMark;

-- Список неуспевающих студентов
CREATE PROCEDURE AvgBadMark
AS
	SELECT Name_stud, AVG(CONVERT(decimal, KMMark)) AS 'Средний балл'
		INTO #AvgMarks
		FROM Student 
		INNER JOIN AccMarks ON Student.Id_stud = AccMarks.Id_Stud
		INNER JOIN KM ON AccMarks.Id_AccMarks = KM.Id_AccMarks
		GROUP BY Name_stud 
	ORDER BY [Средний балл];
	SELECT Name_stud AS 'Неуспевающие студенты' FROM #AvgMarks 
		WHERE [Средний балл] < 3
GO

AvgBadMark;
