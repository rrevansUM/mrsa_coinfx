/**************************************
 De-identify Co-Infection Project Data
**************************************/

data co_infx.main_plus;
	format adm_dat cult_dat MMYYS.;
	set co_infx.main_plus;
		if age >= 89 then age = 89;
	drop fin;
run;

