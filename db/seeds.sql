/*
moving all of Sade's code from schema to here now
*/

DROP DATABASE IF EXISTS project2;

CREATE DATABASE project2;

USE DATABASE project2;

/*
PR Request Section
*/

CREATE TABLE PR_Request (
    PR_Number integer AUTO_INCREMENT not null,
    Item varchar(400) not null,
    Quantity integer not null,
    Unit_of_Measure varchar(100) not null,
    Est_Amount integer not null,
    Total_Amount integer not null,
    Tax_Rate integer not null,
    Estimated_Shipping integer not null,
    Date_Needed date not null,
    Justification varchar(500) not null,
    Comments varchar(600),
    Create_Date date not null,
    Vendor varchar(100) not null,
    StatusQ varchar(50) not null,
    Complete_Date date,
    Created_By varchar(100) not null
);

INSERT INTO PR_Request (
	PR_Number, 
	Item, 
	Quantity, 
	Unit_of_Measure, 
	Est_Amount,
	Total_Amount, 
	Tax_Rate, 
	Estimated_Shipping,
	Date_Needed,
	Justification,
	Comments, 
	Create_Date, 
	Vendor, 
	StatusQ, 
	Complete_Date, 
	Created_By
	)

VALUES (
	1, 
	'Description goes here', 
	1, 
	'bot', 
	150.90,
	150.90, 
	8.25, 
	30.00,
	20180203, 
	'Justification of item', 
	'Comments about item',
	20170809,  
	'Apple', 
	'approved', 
	20170815,
	'Sade Browne'
	);

INSERT INTO PR_Request (
	PR_Number, 
	Item, 
	Quantity, 
	Unit_of_Measure, 
	Est_Amount,
	Total_Amount, 
	Tax_Rate, 
	Estimated_Shipping,
	Date_Needed,
	Justification,
	Comments, 
	Create_Date, 
	Vendor, 
	StatusQ, 
	Complete_Date, 
	Created_By
	)

VALUES (
	2, 
	'Description goes here', 
	2, 
	'box', 
	123.33,
	123.33, 
	8.25, 
	30.00,
	20180203, 
	'Justification of item', 
	'Comments about item',
	20170906,  
	'Verizon', 
	'approved',
	20170815, 
	'Sade Browne'
	);

INSERT INTO PR_Request (
	PR_Number, 
	Item, 
	Quantity, 
	Unit_of_Measure, 
	Est_Amount,
	Total_Amount, 
	Tax_Rate, 
	Estimated_Shipping,
	Date_Needed,
	Justification,
	Comments, 
	Create_Date, 
	Vendor, 
	StatusQ, 
	Complete_Date, 
	Created_By
	)

VALUES (
	3, 
	'Description goes here', 
	3, 
	'case', 
	1111.45,
	1111.45, 
	8.25, 
	30.00,
	20180203, 
	'Justification of item', 
	'Comments about item',
	20170806,  
	'Ford', 
	'approved',
	20170813, 
	'Jason Saenz'
	);

INSERT INTO PR_Request (
	PR_Number, 
	Item, 
	Quantity, 
	Unit_of_Measure, 
	Est_Amount,
	Total_Amount, 
	Tax_Rate, 
	Estimated_Shipping,
	Date_Needed,
	Justification,
	Comments, 
	Create_Date, 
	Vendor, 
	StatusQ, 
	Complete_Date, 
	Created_By
	)

VALUES (
	4, 
	'Description goes here', 
	4, 
	'case', 
	876.23,
	876.23, 
	8.25, 
	30.00,
	20180103, 
	'Justification of item', 
	'Comments about item',
	20171203,  
	'Microsoft', 
	'pending',
	'no date until approved', 
	'Jenny Usrey-Scott'
	);

INSERT INTO PR_Request (
	PR_Number, 
	Item, 
	Quantity, 
	Unit_of_Measure, 
	Est_Amount,
	Total_Amount, 
	Tax_Rate, 
	Estimated_Shipping,
	Date_Needed,
	Justification,
	Comments, 
	Create_Date, 
	Vendor, 
	StatusQ, 
	Complete_Date, 
	Created_By
	)

VALUES (
	5, 
	'Description goes here', 
	5, 
	'case', 
	365.09,
	365.09, 
	8.25, 
	30.00,
	20180218, 
	'Justification of item', 
	'Comments about item',
	20171207,  
	'Shell', 
	'pending',
	'no date until approved', 
	'Jenny Usrey-Scott'
	);

INSERT INTO PR_Request (
	PR_Number, 
	Item, 
	Quantity, 
	Unit_of_Measure, 
	Est_Amount,
	Total_Amount, 
	Tax_Rate, 
	Estimated_Shipping,
	Date_Needed,
	Justification,
	Comments, 
	Create_Date, 
	Vendor, 
	StatusQ, 
	Complete_Date, 
	Created_By
	)

VALUES (
	6, 
	'Description goes here', 
	7, 
	'each', 
	124.44,
	124.44, 
	8.25, 
	30.00,
	20180222, 
	'Justification of item', 
	'Comments about item',
	20171117,  
	'Samsung', 
	'approved',
	20171125, 
	'Anita Rodgerson'
	);

INSERT INTO PR_Request (
	PR_Number, 
	Item, 
	Quantity, 
	Unit_of_Measure, 
	Est_Amount,
	Total_Amount, 
	Tax_Rate, 
	Estimated_Shipping,
	Date_Needed,
	Justification,
	Comments, 
	Create_Date, 
	Vendor, 
	StatusQ, 
	Complete_Date, 
	Created_By
	)

VALUES (
	7, 
	'Description goes here', 
	9, 
	'foot', 
	346,
	346, 
	8.25, 
	30.00,
	20180230, 
	'Justification of item', 
	'Comments about item',
	20171130,  
	'Ford', 
	'approved',
	20171210, 
	'Anita Rodgerson'
	);

INSERT INTO PR_Request (
	PR_Number, 
	Item, 
	Quantity, 
	Unit_of_Measure, 
	Est_Amount,
	Total_Amount, 
	Tax_Rate, 
	Estimated_Shipping,
	Date_Needed,
	Justification,
	Comments, 
	Create_Date, 
	Vendor, 
	StatusQ, 
	Complete_Date, 
	Created_By
	)

VALUES (
	/*
	there are two "8s" and i think this
	might be a mistake
	*/
	8, 
	'Description goes here', 
	10, 
	'gal', 
	23330,
	23330, 
	8.25, 
	30.00,
	20180203, 
	'Justification of item', 
	'Comments about item',
	20171030,  
	'Ford', 
	'approved',
	20171112, 
	'Jason Saenz'
	);

INSERT INTO PR_Request (
	PR_Number, 
	Item, 
	Quantity, 
	Unit_of_Measure, 
	Est_Amount,
	Total_Amount, 
	Tax_Rate, 
	Estimated_Shipping,
	Date_Needed,
	Justification,
	Comments, 
	Create_Date, 
	Vendor, 
	StatusQ, 
	Complete_Date, 
	Created_By
	)

VALUES (
	8, 
	'Description goes here', 
	3, 
	'bot', 
	200,
	200, 
	8.25, 
	30.00,
	20180203, 
	'Justification of item', 
	'Comments about item',
	20171202,  
	'Chevron', 
	'approved',
	'no date until approved', 
	'Henry Dillard'
	);

INSERT INTO PR_Request (
	PR_Number, 
	Item, 
	Quantity, 
	Unit_of_Measure, 
	Est_Amount,
	Total_Amount, 
	Tax_Rate, 
	Estimated_Shipping,
	Date_Needed,
	Justification,
	Comments, 
	Create_Date, 
	Vendor, 
	StatusQ, 
	Complete_Date, 
	Created_By
	)

VALUES (
	9, 
	'Description goes here', 
	1, 
	'lgth', 
	90.98,
	90.98, 
	8.25, 
	30.00,
	20180214, 
	'Justification of item', 
	'Comments about item',
	20170930,  
	'Dell', 
	'approved',
	20171013, 
	'Sade Brown'
	);

INSERT INTO PR_Request (
	PR_Number, 
	Item, 
	Quantity, 
	Unit_of_Measure, 
	Est_Amount,
	Total_Amount, 
	Tax_Rate, 
	Estimated_Shipping,
	Date_Needed,
	Justification,
	Comments, 
	Create_Date, 
	Vendor, 
	StatusQ, 
	Complete_Date, 
	Created_By
	)

VALUES (
	10, 
	'Description goes here', 
	2, 
	'lot', 
	230.91,
	230.91, 
	8.25, 
	30.00,
	20170730, 
	'Justification of item', 
	'Comments about item',
	20170930,  
	'Amazon', 
	'approved',
	20170810, 
	'Henry Dillard'
	);

INSERT INTO PR_Request (
	PR_Number, 
	Item, 
	Quantity, 
	Unit_of_Measure, 
	Est_Amount,
	Total_Amount, 
	Tax_Rate, 
	Estimated_Shipping,
	Date_Needed,
	Justification,
	Comments, 
	Create_Date, 
	Vendor, 
	StatusQ, 
	Complete_Date, 
	Created_By
	)

VALUES (
	11, 
	'Description goes here', 
	6, 
	'set', 
	765.41,
	765.41, 
	8.25, 
	30.00,
	20180203, 
	'Justification of item', 
	'Comments about item',
	20170908,  
	'Apple', 
	'approved',
	20170917, 
	'Anita Rodgerson'
	);



/*
THIS IS THE END OF THE PR REQUEST SECTION
*/

/*
User DB Section
*/
CREATE TABLE User_DB (
    Last_Name varchar(100) not null,
    First_Name varchar(100) not null,
    Staff_ID integer not null,
    Security Role varchar(100) not null,
    AD_Login varchar(100) not null,
    Location_Code integer not null,
    Email varchar(200) not null
);

INSERT INTO User_DB (
	Last_Name, 
	First_Name, 
	Staff_ID, 
	Security_Role, 
	AD_Login, 
	Location_Code, 
	Email
	);

VALUES (
	'Browne', 
	'Sade', 
	12345,
	'initiator',
	'BrowneS',
	10,
	'sbribrowne@gmail.com'
	);

INSERT INTO User_DB (
	Last_Name, 
	First_Name, 
	Staff_ID, 
	Security_Role, 
	AD_Login, 
	Location_Code, 
	Email
	);

VALUES (
	'Saenz', 
	'Jason', 
	54321,
	'admin',
	'SaenzJ',
	11,
	'saenzj@trax.com'
	);

INSERT INTO User_DB (
	Last_Name, 
	First_Name, 
	Staff_ID, 
	Security_Role, 
	AD_Login, 
	Location_Code, 
	Email
	);

VALUES (
	'Rodgerson', 
	'Anita', 
	34521,
	'initiator',
	'RodgersonA',
	10,
	'aadk@runbox.com'
	);

INSERT INTO User_DB (
	Last_Name, 
	First_Name, 
	Staff_ID, 
	Security_Role, 
	AD_Login, 
	Location_Code, 
	Email
	);

VALUES (
	'Usrey-Scott', 
	'Jenny', 
	33451,
	'admin',
	'Usrey-ScottJ',
	11,
	'sylvrleef@gmail.com'
	);

INSERT INTO User_DB (
	Last_Name, 
	First_Name, 
	Staff_ID, 
	Security_Role, 
	AD_Login, 
	Location_Code, 
	Email
	);

VALUES (
	'Dillard', 
	'Henry', 
	22345,
	'reviewer',
	'DillardH',
	13,
	'hmd1987@gmail.com'
	);

INSERT INTO User_DB (
	Last_Name, 
	First_Name, 
	Staff_ID, 
	Security_Role, 
	AD_Login, 
	Location_Code, 
	Email
	);

VALUES (
	'White', 
	'Jack', 
	23451,
	'reviewer',
	'WhiteJ',
	13,
	'whitej@trax.com'
	);

INSERT INTO User_DB (
	Last_Name, 
	First_Name, 
	Staff_ID, 
	Security_Role, 
	AD_Login, 
	Location_Code, 
	Email
	);

VALUES (
	'Green', 
	'Amanda', 
	54123,
	'reviewer',
	'GreenA',
	12,
	'greena@trax.com'
	);


