PREREQUISITE 
apache tomcat 10
MySQL community server
Jdk23 or above
install MySQL and jdk23, COPY jdk23/bin to c:/jdk23/bin
set environment variables
variable name = "JAVA_HOME" and
variable value = "c:\jdk23" in user variable
and same in System variable Also set the MySQL path in environment variable inside PATH variable in System variable
repo, and move the "university" folder inside the webapps folder present in tomcat server version-10
Open cmd and clone this
c:\\tomcat10\\webapps\\university
now open cmd go to c:/tomcat10/webapps/university
rename folder as "university" -> "test"
now open MySQL cli/workbench and login as root user and
run the university.sql script
now database and user is created with privileges and and tables created

make sure you have added the tomcat path and jdk path in the startup.bat file, if not then 
set CATALINE_HOME=c:\tomcat10
set JAVA_HOME=c:\jdk23
add the above 2 lines in startup.bat file after echo@off

now start the tomcat server using cmd prompt in c:\tomcat10\bin> startup.bat(Enter)
now tomcat server is started on port 8080. 
default port is set as 8080.

search "localhost:8080/university/SignUpForm.jsp" in your browser

you will be able to see the Create account page in your browser.

Fill out the form and click on "Create account"

your details are sent to server and stored in the my sql database, You can also check your given data.

To check your data in the server, follow the steps

Open Cmd prompt
Login as user "university" and password as "university" Enter "mysql -uuniversity -p" if mysql is not recognised as an internal cmd then set the path by entering 'path=c:\Windows;c:\Windows\System32;"c:\Program Files\MySQL\MySQL Server 8.0\bin" ', now again login as university user "mysql -uuniversity -p" now it will ask for password enter password "university"
Enter "use univeristy_db;"
Enter "select * from applicant_account;"
It will show your given data in MySQL database.
