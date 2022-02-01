--- �������� ��������� ��� ���������� �������� � ����. ---

-- ������� ��� ���� ��������� �� ��������� �������� (��������� �� ��-��)
CREATE PROCEDURE AvgMarkBySubj
@SubjID int 
AS
	--SELECT Subj.Name_sbj AS '�������' FROM Subj
	--	WHERE Subj.Id_Subj = @SubjID
	SELECT Name_stud, AVG(CONVERT(decimal, KMMark)) AS '������� ����'
		FROM Student 
		INNER JOIN AccMarks ON Student.Id_stud = AccMarks.Id_Stud
		INNER JOIN KM ON AccMarks.Id_AccMarks = KM.Id_AccMarks
		WHERE AccMarks.Id_Subj = @SubjID
		GROUP BY Name_stud 
	ORDER BY Name_stud;
GO

AvgMarkBySubj 6;

-- ������� ������������ ��� ���� ���������, ��������� �� ���� ���������
CREATE PROCEDURE AvgMark
AS
	SELECT Name_stud, AVG(CONVERT(decimal, KMMark)) AS '������� ����'
		FROM Student 
		INNER JOIN AccMarks ON Student.Id_stud = AccMarks.Id_Stud
		INNER JOIN KM ON AccMarks.Id_AccMarks = KM.Id_AccMarks
		GROUP BY Name_stud 
	ORDER BY Name_stud;
GO

AvgMark;

-- ������ ������������ ���������
CREATE PROCEDURE AvgBadMark
AS
	SELECT Name_stud, AVG(CONVERT(decimal, KMMark)) AS '������� ����'
		INTO #AvgMarks
		FROM Student 
		INNER JOIN AccMarks ON Student.Id_stud = AccMarks.Id_Stud
		INNER JOIN KM ON AccMarks.Id_AccMarks = KM.Id_AccMarks
		GROUP BY Name_stud 
	ORDER BY [������� ����];
	SELECT Name_stud AS '������������ ��������' FROM #AvgMarks 
		WHERE [������� ����] < 3
GO

AvgBadMark;
