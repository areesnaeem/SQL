/* UPDATE mysql
SET stuName = 'Akmal'
WHERE stuID = 3
*/
DELETE FROM students
WHERE stuID = 9

-- be careful while deleting as it cannot be recovered once command run so trick is to pull select * against specfic queary and look what you are actually deleting and reconfirm.