ods html;
proc logistic data = sasdata.accidents descending;
	model dead = ISS / risklimits;
	output out = logout predicted = prob;
	title 'Simple Binary Logistic Regression with Plot';
run;
goptions reset = all;
proc sort data = logout; by iss; run;
title 'logistic plot';
proc gplot data = logout;
	plot prob*ISS;
run;
ods html close;
quit;

ods html;
proc logistic data = sasdata.accidents descending;
class gender;
model dead = penetrate iss age gender sbp gcs
			/ expb
			  selection = backward
			  include = 1
			  slentry = 0.05
			  slstay = 0.05
			  risklimits;
			  title 'logistic on trauma data where age <= 18';
run;
ods html close;
quit;

ods html;
ods graphics on;
proc logistic data = sasdata.accidents descending;
class gender;
model dead = penetrate iss age gcs / expb
									 lackfit
									 risklimits
									 ctable
									 outroc = roc1;
title 'Assessing the Models Predictive Ability';
run;
ods graphics off;
ods html close;
quit;

