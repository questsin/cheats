sql server users

CREATE USER [mike@contoso.com] FROM EXTERNAL PROVIDER; -- To create a user with Azure Active Directory

CREATE USER Ann WITH PASSWORD = '<strong_password>'; -- To create a SQL Database contained database user

CREATE USER Mary FROM LOGIN Mary;  -- To create a SQL Server user based on a SQL Server authentication login

GRANT ALTER ANY USER TO Mary;