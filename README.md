git pull this repo, and move the "university" folder inside the webapps folder present in tomcat server version-10
c:\tomcat10\webapps\university
now start the tomcat server using cmd prompt in c:\tomcat10\bin> startup.bat(Enter)
run the startup.bat file ( now the tomcat server is running ) and then

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
