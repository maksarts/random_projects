---- Обновление ID в таблицах Grp_Subj и Tchr_Subj ----

CREATE TRIGGER changeIdTchr_T_S ON Tchr FOR UPDATE AS
DECLARE @oldIdTchr int, @newIdTchr int
	SELECT @oldIdTchr = Id_Tchr FROM deleted
	SELECT @newIdTchr = Id_Tchr FROM inserted
	UPDATE Tchr_Subj SET Id_Tchr = @newIdTchr
		WHERE Tchr_Subj.Id_Tchr = @oldIdTchr;

CREATE TRIGGER changeIdSubj_T_S ON Subj FOR UPDATE AS
DECLARE @oldIdSubj int, @newIdSubj int
	SELECT @oldIdSubj = Id_Subj FROM deleted
	SELECT @newIdSubj = Id_Subj FROM inserted
	UPDATE Tchr_Subj SET Id_Subj = @newIdSubj
		WHERE Tchr_Subj.Id_Subj = @oldIdSubj;

CREATE TRIGGER changeIdSubj_G_S ON Subj FOR UPDATE AS
DECLARE @oldIdSubj int, @newIdSubj int
	SELECT @oldIdSubj = Id_Subj FROM deleted
	SELECT @newIdSubj = Id_Subj FROM inserted
	UPDATE Grp_Subj SET Id_Subj = @newIdSubj
		WHERE Grp_Subj.Id_Subj = @oldIdSubj;

CREATE TRIGGER changeIdGrp_G_S ON Grp FOR UPDATE AS
DECLARE @oldIdGrp int, @newIdGrp int
	SELECT @oldIdGrp = Id_Grp FROM deleted
	SELECT @newIdGrp = Id_Grp FROM inserted
	UPDATE Grp_Subj SET Id_Grp = @newIdGrp
		WHERE Grp_Subj.Id_Grp = @oldIdGrp;

---- Обновление рейтинга в AccMarks в зависимости от оценок в КМ ----

/*CREATE TRIGGER changeRateInAccMarks ON KM FOR INSERT AS
DECLARE @id int, @newrate decimal(3, 2)
	SELECT @id = Id_AccMarks FROM inserted
	SELECT @newrate = AVG(KM.KMMark) FROM KM
		WHERE Id_AccMarks = @id
	UPDATE AccMarks SET Rate = @newrate
		WHERE AccMarks.Id_AccMarks = @id;*/

/*CREATE TRIGGER changeRateInAccMarks ON KM FOR INSERT AS
DECLARE @sum int, @count int, @id int
	SELECT @id = Id_AccMarks FROM inserted
	SELECT @sum = SUM(KM.KMMark) FROM KM 
		WHERE Id_AccMarks = @id
	SELECT @count = COUNT(KM.KMMark) FROM KM
		WHERE Id_AccMarks = @id
	UPDATE AccMarks SET Rate = @sum / @count
		WHERE AccMarks.Id_AccMarks = @id;*/




