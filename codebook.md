### Data Dictionary - run_analysis.R

The number on the left side of the variable name listed below represents the column number of the variable.  

The original data set along with more extensive information on the data collection and variables 
can be found at the following link http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#

1 	subjectid (id of the subject being observed during the study)
2 	activity (activity the subject was performing when the measurements were taken)

The following variables represent the mean for each subject for each activity performed in the course of the study.  They can be understood by breaking down the variable name by the following legend:

t = time, f=frequency
gravity = gravity acceleration signal
body = body acceleration signal
acc = accelerometer
gyro = gyroscope
jerk = jerk signals
angle = angle between two vectors
mean = mean
std = standard deviation
meanfreq = weighted average of the frequency components to obtain a mean frequency
x,y,z = each represents a different direction

* note that the variable names differ slightly from the original data in that they have been converted to lower case and punctuation (underscores, parentheses, etc) has been removed.  This is consistent with the principles of "tidy data". 

* note that in some variable names body appears twice (i.e. fbodybodygyrojerkmagstd).  It appears this was a typo in the original data set.  For purposes of consistency with the original data, I have maintained the original variable names in these cases.  

* note that for all the variables, the data has been divided by its range to normalize it.  Therefore, the units of measure are canceled out. 

3 	tbodyaccmeanx
4 	tbodyaccmeany
5 	tbodyaccmeanz
6 	tbodyaccstdx
7 	tbodyaccstdy
8 	tbodyaccstdz
9 	tgravityaccmeanx
10	tgravityaccmeany
11	tgravityaccmeanz
12	tgravityaccstdx
13	tgravityaccstdy
14	tgravityaccstdz
15	tbodyaccjerkmeanx
16	tbodyaccjerkmeany
17	tbodyaccjerkmeanz
18	tbodyaccjerkstdx
19	tbodyaccjerkstdy
20	tbodyaccjerkstdz
21	tbodygyromeanx
22	tbodygyromeany
23	tbodygyromeanz
24	tbodygyrostdx
25	tbodygyrostdy
26	tbodygyrostdz
27	tbodygyrojerkmeanx
28	tbodygyrojerkmeany
29	tbodygyrojerkmeanz
30	tbodygyrojerkstdx
31	tbodygyrojerkstdy
32	tbodygyrojerkstdz
33	tbodyaccmagmean
34	tbodyaccmagstd
35	tgravityaccmagmean
36	tgravityaccmagstd
37	tbodyaccjerkmagmean
38	tbodyaccjerkmagstd
39	tbodygyromagmean
40	tbodygyromagstd
41	tbodygyrojerkmagmean
42	tbodygyrojerkmagstd
43	fbodyaccmeanx
44	fbodyaccmeany
45	fbodyaccmeanz
46	fbodyaccstdx
47	fbodyaccstdy
48	fbodyaccstdz
49	fbodyaccmeanfreqx
50	fbodyaccmeanfreqy
51	fbodyaccmeanfreqz
52	fbodyaccjerkmeanx
53	fbodyaccjerkmeany
54	fbodyaccjerkmeanz
55	fbodyaccjerkstdx
56	fbodyaccjerkstdy
57	fbodyaccjerkstdz
58	fbodyaccjerkmeanfreqx
59	fbodyaccjerkmeanfreqy
60	fbodyaccjerkmeanfreqz
61	fbodygyromeanx
62	fbodygyromeany
63	fbodygyromeanz
64	fbodygyrostdx
65	fbodygyrostdy
66	fbodygyrostdz
67	fbodygyromeanfreqx
68	fbodygyromeanfreqy
69	fbodygyromeanfreqz
70	fbodyaccmagmean
71	fbodyaccmagstd
72	fbodyaccmagmeanfreq
73	fbodybodyaccjerkmagmean
74	fbodybodyaccjerkmagstd
75	fbodybodyaccjerkmagmeanfreq
76	fbodybodygyromagmean
77	fbodybodygyromagstd
78	fbodybodygyromagmeanfreq
79	fbodybodygyrojerkmagmean
80	fbodybodygyrojerkmagstd
81	fbodybodygyrojerkmagmeanfreq
82	angletbodyaccmeangravity
83	angletbodyaccjerkmeangravitymean
84	angletbodygyromeangravitymean
85	angletbodygyrojerkmeangravitymean
86	anglexgravitymean
87	angleygravitymean
88	anglezgravitymean
