# Week 6 Lab

Clone this repo into your www folder under laragon. In the command prompt cd into the \laragon\www folder. Make sure that you are in the correct folder and that laragon\www appears in the command prompt. Type git clone your-repo-url (Get your repo url from github after creating the repo). Then cd into the folder you have just cloned by typing cd week6Lab-yourgithubid. Once you are in the correct folder, keep this command window open so you can type in your git commands as required.

This lab further builds on your ability to connect PHP to a MySQL database and process data into and out of the database. By the end of this lab students will be able to:

-  Gather data from a form and insert it into a database
-  Retrieve data from a database using a MySQL join query and display it in a table


# Part 1
Copy and paste the SQL script from the gp_surgery.sql file in the starter code from the assignment. Place it in a new query window in HeidiSQL. Execute the query so that a new database will be created complete with three tables Patient, Doctor and Visit. Note which table(s) have Foreign Keys.

Given the form you have been given in the starter code called newVisit.html, write a PHP program that will gather data from the form and insert it into the Visit Table in the gp_surgery database. In order to do this you must figure out what to call your new file. This can be determined from the action attribute of the FORM tag in the newVisit.html file.
Your new PHP program should contain an include command that pulls-in PHP code containing credentials to connect to the gp_surgery database. You can call this file dbcon.php and you may reuse code you have written in previous labs but remember the database name in the credentials will need to be changed.

The program should then pull values from the HTML FORM and assign them to simple PHP variables. 

Once all the values from the form have been assigned to simple PHP variables they can be used to build a simple SQL "insert into" statement. To do this take one of the INSERT INTO statements from the gp_surgery.sql file, enclose this in quotation marks, and assign it to a PHP variable called $sql. 
Modify this Insert into a statement so that rather than using hard-coded data, it uses values from the simple PHP variables that contain the values from the HTML FORM.

echo your $sql variable to the screen. Test your code. If the SQL statement on the screen looks correct, then copy and paste it into HeidiSQL into a new query window. Verify that it works by executing your query. If the syntax of your SQL is correct, a new row should be created in the Visit table. Once you have ensured that the SQL statement is correct, commit and push your code.

# Part 2

Make a small adjustment to your code so that the line that echoes the SQL command to the screen is commented out. (to comment out a single line of code in PHP use // at the beginning of the line).
Add a few lines of code that execute the SQL query contained in the $sql variable against the database connection stored in $conn. If you don't have easy access to these five lines of PHP code (which make up an if-else block from a previous example), you can get them here [PHP mysql insert statement](https://www.w3schools.com/php/php_mysql_insert.asp) (be sure and scroll down to the MySQLi Procedural example as opposed to the Objected Oriented example). Once you have included these lines, verify that the submission of the form will cause the data added by the user to be inserted into the Visit table. Do this by doing a ***SELECT * from VISIT*** command in the SQL query window on HeidiSQL.
Once you are certain that your code is working and data is being automatically inserted into the database, you can commit and push your code.

# Part 3

Create a PHP program in your repo called **visitList.php**. The program should include the dbcon.php which you created in Part 1. The program should use the connection object stored in the $conn variable (from your dbcon.php file). Create $sql variable containing your SQL query - ***"select * from visit"***. Use the example in the slides entitled "PHP Outputting HTML" which pulls data from the databases and outputs the data using a loop wrapped in &lt;TR&gt;&lt;/TR&gt; and &lt;TD&gt;&lt;/TD&gt; tags. You may also use starter code from previous weeks labs which does this for the member table in the tennisclub database. For this example you do not need to include the &lt;TABLE&gt;&lt;/TABLE&gt; tags outside the loop as these are included in the wrapper file showVisits.php. To test your code visit http://localhost/week6Lab-yourgithubid/showVisits.php. This is the wrapper file which uses Bootstrap5 to make the table look better. This file uses an include statement to pull in your visitList.php file.

# Part 4

Copy your visitList.php file to a new file called visitListWithNames.php. Replace your SQL code ***"select * from visit"*** with the following SQL query ***"SELECT visit_date, visit_time, patient.Firstname, patient.Surname FROM visit INNER JOIN patient ON patient.id = visit.patient_id"***. This query joins the visit table to the patient table - effectively looking up the patient names and replacing the patientID with names to make the information more meaningful. **Note that some of the columns in this query start with capital letters and some start with lower case. When retrieving the data using the $row associative array you must use case sensitive indices - e.g. $row['visit_date'] and $row['Firstname'].** Given this new query, the columns in the resultant data are visit_date, visit_time, Firstname and Surname. Modify the code you created in Part 3 so that you use these new column headers to create four simple PHP variables and then use those PHP variables then use those PHP variables to output data in rows and columns. To test your code visit http://localhost/week6Lab-yourgithubid/showVisitsWithNames.php




