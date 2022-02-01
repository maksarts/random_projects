INSERT INTO Grp VALUES
	('�-13-18', '���', '����', '��'),
	('�-05-18', '���', '����', '��'),
	('�-14-18', '���', '����', '��')

INSERT INTO Subj VALUES
	('���� ������', '�������'),
	('���. ������', '�������'),
	('����. ���. � ���. ����.', '�������'),
	('������ ������', '�������'),
	('����� �������', '����� � �������')

INSERT INTO Tchr VALUES
	('�������� �.�.', 'ginger@mpei.ru', '+79197264853', 5),
	('������ �.�.', 'mint@mpei.ru', '+79197298853', 3),
	('�������� �.�.', 'apple@mpei.ru', '+79197261123', 13),
	('��������������� �.�.', 'beard@mpei.ru', '+79197919253', 2)

INSERT INTO Student VALUES
	('������� �.�.', 'SergeevAM@mpei.ru', '+79872564853', '������', '��������', 0, 1),
	('�������� �.�.', 'AlexeevPT@mpei.ru', '+79872192853', '������', '��������', 0, 1),
	('������ �.�.', 'IvanovII@mpei.ru', '+79872192853', '������', '��������', 0, 1),
	('������ �.�.', 'PetrovPP@mpei.ru', '+79872519253', '�������', '��������', 0, 2),
	('������� �.�.', 'SidorovAN@mpei.ru', '+79871933253', '�������', '��������', 0, 2),
	('�������� �.�.', 'KalmikovNU@mpei.ru', '+79872123253', '�����������', '��������', 0, 2),
	('����� �.�.', 'BazovGC@mpei.ru', '+79872512353', '���������', '��������', 0, 3),
	('������� �.�.', 'CringevSK@mpei.ru', '+79872518253', '��������������', '��������', 0, 3),
	('������ �.�.', 'MozartVA@mpei.ru', '+79872519212', '�����', '��������', 0, 3)

INSERT INTO Grp_Subj VALUES
	(6, 1),
	(7, 1),
	(8, 1),
	(9, 1),
	(6, 2),
	(7, 2),
	(8, 2),
	(9, 2),
	(7, 3),
	(8, 3),
	(9, 3),
	(10, 3)

INSERT INTO Tchr_Subj VALUES
	(7, 1),
	(8, 2),
	(10, 2),
	(6, 3),
	(9, 4)

INSERT INTO AccAttend VALUES
	(1, 6, 3, '������', 1, '2021-9-1'),
	(2, 6, 3, '������', 1, '2021-9-1'),
	(3, 6, 3, '������', 1, '2021-9-1'),
	(1, 7, 1, '������', 1, '2021-9-1'),
	(2, 7, 1, '������', 0, '2021-9-1'),
	(3, 7, 1, '������', 0, '2021-9-1'),

	(4, 6, 3, '������', 0, '2021-9-1'),
	(5, 6, 3, '������', 0, '2021-9-1'),
	(6, 6, 3, '������', 1, '2021-9-1'),
	(4, 7, 1, '������', 1, '2021-9-1'),
	(5, 7, 1, '������', 1, '2021-9-1'),
	(6, 7, 1, '������', 0, '2021-9-1'),

	(7, 10, 2, '������', 1, '2021-9-2'),
	(8, 10, 2, '������', 0, '2021-9-2'),
	(9, 10, 2, '������', 1, '2021-9-2'),
	(7, 8, 2, '������', 1, '2021-9-2'),
	(8, 8, 2, '������', 0, '2021-9-2'),
	(9, 8, 2, '������', 1, '2021-9-2')

INSERT INTO AccMarks VALUES
	(1, 6, 3, 5, 2),
	(2, 6, 3, 4, 2),
	(3, 6, 3, 5, 2),
	(1, 7, 1, 3, 2),
	(2, 7, 1, 5, 2),
	(3, 7, 1, 4, 2),

	(4, 6, 3, 4, 2),
	(5, 6, 3, 5, 2),
	(6, 6, 3, 4, 2),
	(4, 7, 1, 3, 2),
	(5, 7, 1, 4, 2),
	(6, 7, 1, 3, 2),

	(7, 10, 2, 5, 2),
	(8, 10, 2, 4, 2),
	(9, 10, 2, 4, 2),
	(7, 8, 2, 3, 2),
	(8, 8, 2, 5, 2),
	(9, 8, 2, 4, 2)

INSERT INTO KM VALUES
	(2, '�� 1', 5),
	(2, '�� 2', 4),

	(3, '�� 1', 2),
	(3, '�� 2', 3),

	(4, '�� 1', 3),
	(4, '�� 2', 4),

	(5, '�� 1', 3),
	(5, '�� 2', 5),

	(6, '�� 1', 5),
	(6, '�� 2', 5),

	(7, '�� 1', 4),
	(7, '�� 2', 4),

	(8, '�� 1', 3),
	(8, '�� 2', 3),
	(8, '�� 3', 2),
	(8, '�� 4', 2),

	(9, '�� 1', 3),
	(9, '�� 2', 2),

	(10, '�� 1', 5),
	(10, '�� 2', 3),

	(11, '�� 1', 3),
	(11, '�� 2', 4),

	(12, '�� 1', 2),
	(12, '�� 2', 2),

	(13, '�� 1', 3),
	(13, '�� 2', 4),

	(14, '�� 1', 3),
	(14, '�� 2', 4),

	(15, '�� 1', 4),
	(15, '�� 2', 3),

	(16, '�� 1', 5),
	(16, '�� 2', 2),

	(17, '�� 1', 4),
	(17, '�� 2', 5),

	(18, '�� 1', 3),
	(18, '�� 2', 2),

	(19, '�� 1', 5),
	(19, '�� 2', 3)


INSERT INTO Work VALUES
	(59, '�������� 1', '�����', 1, 5),
	(60, '�� 1', '��', 1, 4),
	(61, '�� 1', '��', 0, 2),
	(63, '�� 1', '��', 1, 3),
	(66, '�� 1', '��', 1, 5),
	(70, '�������� 1', '�����', 1, 5),
	(74, '�������� 1', '�����', 0, 2),
	(82, '�� 1', '��', 1, 5),
	(77, '�� 1', '��', 1, 3),
	(80, '�������� 1', '�����', 0, 2),
	(87, '�� 1', '��', 1, 5),
	(84, '�� 1', '��', 1, 4),
	(88, '�������� 1', '�����', 0, 2),
	(93, '�� 1', '��', 1, 4)


