SELECT stuNAME, stu_AGE, stuCITY,
CASE
	WHEN stu_AGE > 29 then 'OLD'
    WHEN stu_AGE between 27 AND 29 THEN 'YOUNG'
    ELSE 'BABY'
END
FROM students
ORDER BY stu_AGE

-- we can use multiple when statements,we can calculates salary after raises or price aftr rasie of certain %