DELETE FROM mysql.user WHERE User='';
UPDATE mysql.user SET Password=PASSWORD('{{admin_passwd}}') WHERE User='root';
DELETE FROM mysql.user WHERE User='root' AND Host NOT IN ('localhost', '127.0.0.1', '::1');
DROP DATABASE IF EXISTS test;
FLUSH PRIVILEGES;
