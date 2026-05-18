/* Set number A
SELECT phone_number AS 'Contacts' FROM buyers
UNION
--Set number B
SELECT phone_number FROM farmers;*/

--Trigger
CREATE TRIGGER SaySomething
ON farmers
AFTER INSERT
AS
BEGIN
	PRINT 'NEW FARMER HAS BEEN ADDED. CHECK IT OUT'
END;