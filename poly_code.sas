/*******************************************************************************************************************************
Project: "Epidemiology of Polymicrobial Infections in Methicillin Resistant Staphylococcus aureus-Associated cSSTIs"

Author: Richard Evans 
********************************************************************************************************************************/

/**************** data library import **************/

libname co_infx "S:\MartinEpi\Projects\Co-Infx\project\data";

* I re-wrote original databases because I was an amateur at the time,
  to reduce the introduction of mistakes I am commenting out these sections;

/************** renaming drugs **************

data co_infx.abx_indx;
	set co_infx.abx_indx;
	abx_nam = tranwrd(abx_nam, ' Metronidazole', 'Metronidazole');
	abx_nam = tranwrd(abx_nam, 'metronidazole', 'Metronidazole');
	abx_nam = tranwrd(abx_nam, 'Amoxacillin-clavulante', 'Amoxicillin-clavulanate');
	abx_nam = tranwrd(abx_nam, 'amoxicillin-clavulanate', 'Amoxicillin-clavulanate');
	abx_nam = tranwrd(abx_nam, 'Amoxicillin-Clavulanate', 'Amoxicillin-clavulanate');
	abx_nam = tranwrd(abx_nam, 'Ampcillin-sulbactam', 'Ampicillin-Sulbactam');
	abx_nam = tranwrd(abx_nam, 'ampicillin-sulbactam', 'Ampicillin-Sulbactam');
	abx_nam = tranwrd(abx_nam, 'Ampicillin-sulbactam', 'Ampicillin-Sulbactam');
	abx_nam = tranwrd(abx_nam, 'azithromycin', 'Azithromycin');
	abx_nam = tranwrd(abx_nam, 'cefazolin', 'Cefazolin');
	abx_nam = tranwrd(abx_nam, 'cefepime', 'Cefepime');
	abx_nam = tranwrd(abx_nam, 'Cefotoxin', 'Cefoxitin');
	abx_nam = tranwrd(abx_nam, 'cefoxitin', 'Cefoxitin');
	abx_nam = tranwrd(abx_nam, 'ceftaroline','Ceftaroline');
	abx_nam = tranwrd(abx_nam, 'ceftriaxone', 'Ceftriaxone');
	abx_nam = tranwrd(abx_nam, 'cephalexin', 'Cephalexin');
	abx_nam = tranwrd(abx_nam, 'ciprofloxacin', 'Ciprofloxacin');
	abx_nam = tranwrd(abx_nam, 'clindamycin', 'Clindamycin');
	abx_nam = tranwrd(abx_nam, 'daptomycin', 'Daptomycin');
	abx_nam = tranwrd(abx_nam, 'doxycycline', 'Doxycycline');
	abx_nam = tranwrd(abx_nam, 'gentamicin', 'Gentamicin');
	abx_nam = tranwrd(abx_nam, 'linezolid', 'Linezolid');
	abx_nam = tranwrd(abx_nam, 'meropenem', 'Meropenem');
	abx_nam = tranwrd(abx_nam, 'moxifloxacin', 'Moxifloxacin');
	abx_nam = tranwrd(abx_nam, 'nafcillin', 'Nafcillin');
	abx_nam = tranwrd(abx_nam, 'Penicillin G', 'Penicillin');
	abx_nam = tranwrd(abx_nam, 'Piperacillin-tazobactam', 'Piperacillin-Tazobactam');
	abx_nam = tranwrd(abx_nam, 'Pipercillin-tazobactam', 'Piperacillin-Tazobactam');
	abx_nam = tranwrd(abx_nam, 'piperacillin-tazobactam', 'Piperacillin-Tazobactam');
	abx_nam = tranwrd(abx_nam, 'Sulfamethoxazole-trimethoprim', 'Sulfamethoxazole-Trimethoprim');
	abx_nam = tranwrd(abx_nam, 'sulfamethoxazole-trimethoprim', 'Sulfamethoxazole-Trimethoprim');
	abx_nam = tranwrd(abx_nam, 'Sulfatrim-bactrim', 'Sulfamethoxazole-Trimethoprim');
	abx_nam = tranwrd(abx_nam, 'bactrim', 'Sulfamethoxazole-Trimethoprim');
	abx_nam = tranwrd(abx_nam, 'vancomycin', 'Vancomycin');
run;

data co_infx.abx_indx;
	set co_infx.abx_indx;
	drop F9 F10;
run;

data co_infx.abx_past;
	set co_infx.abx_past;
	abx_nam1 = tranwrd(abx_nam1, 'Amoxicillin', 'amoxicillin');
	abx_nam1 = tranwrd(abx_nam1, 'Amoxicillin-Clavulanate', 'amoxicillin-clavulanate');
	abx_nam1 = tranwrd(abx_nam1, 'amoxicillin-Clavulanate', 'amoxicillin-clavulanate');
	abx_nam1 = tranwrd(abx_nam1, 'Amoxicillin-clavulanate', 'amoxicillin-clavulanate');
	abx_nam1 = tranwrd(abx_nam1, 'amoxicillin/clav', 'amoxicillin-clavulanate');
	abx_nam1 = tranwrd(abx_nam1, 'Ampicillin', 'ampicillin');
	abx_nam1 = tranwrd(abx_nam1, 'Ampicilllin', 'ampicillin');
	abx_nam1 = tranwrd(abx_nam1, 'Ampicillin-Sulbactam', 'ampicillin-sulbactam');
	abx_nam1 = tranwrd(abx_nam1, 'Ampicillin-sulbactam', 'ampicillin-sulbactam');
	abx_nam1 = tranwrd(abx_nam1, 'Ampicillin/sulbactam', 'ampicillin-sulbactam');
	abx_nam1 = tranwrd(abx_nam1, 'Ampicilllin-sulbactam', 'ampicillin-sulbactam');
	abx_nam1 = tranwrd(abx_nam1, 'ampicillin/sulbactum', 'ampicillin-sulbactam');
	abx_nam1 = tranwrd(abx_nam1, 'ampicillin-Sulbactam', 'ampicillin-sulbactam');
	abx_nam1 = tranwrd(abx_nam1, 'ampicillin-clavulanate', 'amoxicillin-clavulanate');
	abx_nam1 = tranwrd(abx_nam1, 'Azithromycin', 'azithromycin');
	abx_nam1 = tranwrd(abx_nam1, 'Cefazolin', 'cefazolin');
	abx_nam1 = tranwrd(abx_nam1, 'Bactrim', 'sulfamethoxazole-trimethoprim');
	abx_nam1 = tranwrd(abx_nam1, 'Cefepime', 'cefepime');
	abx_nam1 = tranwrd(abx_nam1, 'Cefozollin', 'cefazolin');
	abx_nam1 = tranwrd(abx_nam1, 'Ceftriaxone', 'ceftriaxone');
	abx_nam1 = tranwrd(abx_nam1, 'Cephalexin', 'cephalexin');
	abx_nam1 = tranwrd(abx_nam1, 'Ciprofloxacin', 'ciprofloxacin');
	abx_nam1 = tranwrd(abx_nam1, 'Clindamycin', 'clindamycin');
	abx_nam1 = tranwrd(abx_nam1, 'keflex', 'cephalexin');
	abx_nam1 = tranwrd(abx_nam1, 'Daptomycin', 'daptomycin');
	abx_nam1 = tranwrd(abx_nam1, 'Doxycycline', 'doxycycline');
	abx_nam1 = tranwrd(abx_nam1, 'Gentamicin', 'gentamicin');
	abx_nam1 = tranwrd(abx_nam1, 'Linezolid', 'linezolid');
	abx_nam1 = tranwrd(abx_nam1, 'lineozolid', 'linezolid');
	abx_nam1 = tranwrd(abx_nam1, 'Meropenum', 'meropenem');
	abx_nam1 = tranwrd(abx_nam1, 'Metronidazole', 'metronidazole');
	abx_nam1 = tranwrd(abx_nam1, 'Moxifloxacin', 'moxifloxacin');
	abx_nam1 = tranwrd(abx_nam1, 'Nafcillin', 'nafcillin');
	abx_nam1 = tranwrd(abx_nam1, 'Piperacillin-tazobactam', 'piperacillin-tazobactam');
	abx_nam1 = tranwrd(abx_nam1, 'pip/tazo', 'piperacillin-tazobactam');
	abx_nam1 = tranwrd(abx_nam1, 'Sulfamethoxazole-trimethoprim', 'sulfamethoxazole-trimethoprim');
	abx_nam1 = tranwrd(abx_nam1, 'Vancomycin', 'vancomycin');
	abx_nam1 = tranwrd(abx_nam1, 'fulconazole', 'fluconazole');
run;

data co_infx.past_and_indx;
	set co_infx.abx_indx
		co_infx.abx_past;
run;
*/

/******************** gathering tables of microbial text fields *********************/

ods rtf;
proc freq data = co_infx.main;
	tables infx_org;
run;

proc freq data = co_infx.main;
	tables resist;
run;

title 'all microbes cultured along w/MRSA';
proc freq data = co_infx.all_clin_data;
	tables infx_org;
run;
ods rtf close;

* making variables for tables;

/*
data co_infx.main;
	set co_infx.main;
	if charlson = 'score : 1, age-related score: 2, 10yr: 90%' then charlson = "score: 1, age-related score: 2, 10yr: 90%";
run;
*/

/*
data co_infx.main;
	set co_infx.main;
	if age > 65 then eld = 1;
	if ulc_loc ne ' ' then ulc = 1;
	if wt_unit = 'lb' then weight = weight * 0.453592;
	if wt_unit = 'lb' then wt_unit = 'kg';
	if prxmatch("m/leg|knee|ankle|foot|lle|heel|hand|toe|hallux|tibia|malleolus|arm|feet|finger|wrist|elbow|forearm|extremity|le/i", infx_site) then extremity = 1;
	if prxmatch("m/leg|knee|ankle|foot|lle|heel|hand|toe|hallux|tibia|malleolus|arm|feet|finger|wrist|elbow|forearm|fingers|extremity|le/i", site) then extremity = 1;
	if prxmatch("m/leg|knee|ankle|foot|lle|heel|hand|toe|hallux|tibia|malleolus|arm|feet|finger|wrist|elbow|forearm|extremity|le|calf/i", infx_site1) then extremity = 1;
	if extremity = '.' then extremity = 0;
	if male = '.' then delete;
run;

data co_infx.main_2;
	set co_infx.main_2;
	if age > 65 then eld=1;
	if ulc_loc ne ' ' then ulc = 1;
	if wt_unit = 'lb' then weight = weight*0.453592;
	if wt_unit = 'lb' then wt_unit = 'kg';
	if prxmatch("m/leg|knee|ankle|foot|lle|heel|hand|toe|hallux|tibia|malleolus|arm|feet|finger|wrist|elbow|forearm|extremity|le/i", infx_site) then extremity = 1;
	if prxmatch("m/leg|knee|ankle|foot|lle|heel|hand|toe|hallux|tibia|malleolus|arm|feet|finger|wrist|elbow|forearm|fingers|extremity|le/i", site) then extremity = 1;
	if prxmatch("m/leg|knee|ankle|foot|lle|heel|hand|toe|hallux|tibia|malleolus|arm|feet|finger|wrist|elbow|forearm|extremity|le|calf/i", infx_site1) then extremity = 1;
	if extremity = '.' then extremity = 0;
	if male = '.' then delete;
run;

data co_infx.main;
	set co_infx.main;
		if eld = '.' then eld = 0;
		if ulc = '.' then ulc = 0;
		drop site;
run;

data co_infx.all_clin_data;
	set co_infx.all_clin_data;
		if eld = '.' then eld = 0;
		if ulc = '.' then ulc = 0;
		drop site;
run;
*/

/*
***********************************************************************************
adding death assessment from Narcis Baran. excluding for this analysis for now. 

data lzd_9_3.death_dmc;
	set lzd_9_3.death_dmc;
	keep study_id dth_study dth_dat;
run;

data lzd_9_3.death_hfh;
	set lzd_9_3.death_hfh;
	keep study_id dth_study dth_dat;
run;

data lzd_9_3.death;
	set lzd_9_3.death_hfh
		lzd_9_3.death_dmc;
run;

data lzd_9_3.death;
	set lzd_9_3.death;
	rename study_id = id;
	label study_id = id;
run;

proc sort data = lzd_9_3.death; by id; run;
proc sort data = co_infx.all_clin_data; by id; run;

data co_infx.all_clin_data;
	merge lzd_9_3.death 
		  co_infx.all_clin_data;
	by id;
	if male = '.' then delete;
run;

*********************************************************************************;
*/

/*
data co_infx.main;
	set co_infx.main;
	los = dis_dat - adm_dat;
	if dth30_dat ne '.' then dth_study = 1;
	if dth_study ne 1 then dth_study = 0;
	if fail_dth = 1 then dth_study = 1;
	if cssti = 1 then cssti1 = 1;
	if cssti = 2 then cssti2 = 1;
	if cssti = 3 then cssti3 = 1;
	if cssti = 4 then cssti4 = 1;
	if cssti1 ne 1 then cssti1 = 0;
	if cssti2 ne 1 then cssti2 = 0;
	if cssti3 ne 1 then cssti3 = 0;
	if cssti4 ne 1 then cssti4 = 0;
	drop other;
run;

data co_infx.all_clin_data;
	set co_infx.all_clin_data;
	los = dis_dat - adm_dat;
	year = year(cult_dat);
	if dth30_dat ne '.' then dth_study = 1;
	if dth_study ne 1 then dth_study = 0;
	if fail_dth = 1 then dth_study = 1;
	if cssti = 1 then cssti1 = 1;
	if cssti = 2 then cssti2 = 1;
	if cssti = 3 then cssti3 = 1;
	if cssti = 4 then cssti4 = 1;
	if cssti1 ne 1 then cssti1 = 0;
	if cssti2 ne 1 then cssti2 = 0;
	if cssti3 ne 1 then cssti3 = 0;
	if cssti4 ne 1 then cssti4 = 0;
run;

data co_infx.all_clin_data;
	set co_infx.all_clin_data;
	if adm_hosp = "HUH" then hosp = "DMC";
	if adm_hosp = "HVH" then hosp = "DMC";
	if adm_hosp = "SGH" then hosp = "DMC";
	if adm_hosp = "DRH" then hosp = "DMC";
	if adm_hosp = "HFH" then hosp = "HFH";
run;

data co_infx.main;
	set co_infx.main;
		if race = 4 then black = 1;
		if race = 5 then white = 1;
		if race = 6 then other = 1;
		if race = 2 then other = 1;
		if race = 3 then other = 1;
		if black ne 1 then black = 0;
		if white ne 1 then white = 0;
		if race = '.' then black = '.';
		if race = '.' then white = '.';
		if race = '.' then other = '.';
run;

data co_infx.all_clin_data;
	set co_infx.all_clin_data;
		if race = 4 then black = 1;
		if race = 5 then white = 1;
		if race = 6 then other = 1;
		if race = 2 then other = 1;
		if race = 3 then other = 1;
		if black ne 1 then black = 0;
		if white ne 1 then white = 0;
		if race = '.' then black = '.';
		if race = '.' then white = '.';
		if race = '.' then other = '.';
		if other ne 1 then other = 0;
		if race = '.' then other = '.';
run;

data co_infx.all_clin_data;
	set co_infx.all_clin_data;
		if resid = 1 then home = 1;
		if resid ne 1 then home = 0;
		if resid = '.' then home = '.';
		if resid = 2 then ltacf = 1;
		if resid ne 2 then ltacf = 0;
		if resid = '.' then ltacf = '.';
		if resid = 3 then oth_resid = 1;
		if resid ne 3 then oth_resid = 0;
		if resid = '.' then oth_resid = '.';
run;

data co_infx.main_2;
	set co_infx.main_2;
		if resid = 1 then home = 1;
		if resid ne 1 then home = 0;
		if resid = '.' then home = '.';
		if resid = 2 then ltacf = 1;
		if resid ne 2 then ltacf = 0;
		if resid = '.' then ltacf = '.';
		if resid = 3 then oth_resid = 1;
		if resid ne 3 then oth_resid = 0;
		if resid = '.' then oth_resid = '.';
run;

data co_infx.main_2;
	set co_infx.main_2;
		if id = 1615 then age = 49;
run;
*/

/********************** Begin Risk Factor Analysis ***********************/

ods rtf;
title 'univariate stats on age between single and multiple organism infection';
proc univariate data = co_infx.main;
	class poly_infx;
	var age;
run;

title 't-test on age between single and multiple organism infection';
proc ttest data = co_infx.main;
	class poly_infx;
	var age;
run;

title 't-test of weight between single and multiple organism infections';
proc ttest data = co_infx.main;
	class poly_infx;
	var weight;
run;

title 'chi-sq on elderly status between single and multiple organism infections';
proc freq data = co_infx.main;
	tables poly_infx * eld / chisq expected;
run;

title 'chi-sq on gender between single and multiple organism infections';
proc freq data = co_infx.main;
	tables poly_infx * male / chisq expected;
run;

title 'contingency analysis on race';
proc freq data = co_infx.main;
	tables poly_infx * race / chisq expected;
run;

title 'white vs. other';
proc freq data = co_infx.main;
	tables poly_infx * white / chisq;
run;

title 'black vs. other';
proc freq data = co_infx.main;
	tables poly_infx * black / chisq;
run;

title 'other races vs. others';
proc freq data = co_infx.main;
	tables poly_infx * other / chisq;
run;

title 'home admission';
proc freq data = co_infx.main;
	tables poly_infx * home / chisq;
run;

title 'ltcf admission';
proc freq data = co_infx.main;
	tables poly_infx *ltacf / chisq;
run;

title 'other residence prior to admission';
proc freq data = co_infx.main;
	tables poly_infx * oth_resid / chisq;
run;

title 'all cssti';
proc freq data = co_infx.main;
	tables poly_infx * cssti / chisq;
run;

title 'cssti class 1';
proc freq data = co_infx.main;
	tables poly_infx * cssti1 / chisq;
run;

title 'cssti class 2';
proc freq data = co_infx.main;
	tables poly_infx * cssti2 / chisq;
run;

title 'cssti class 3';
proc freq data = co_infx.main;
	tables poly_infx * cssti3 / chisq;
run;

title 'cssti class 4 - sepsis';
proc freq data = co_infx.main;
	tables poly_infx *cssti4 / chisq;
run;

title 'contingency analysis on obesity condition';
proc freq data = co_infx.main;
	tables poly_infx * obese / chisq expected;
run;

title 'contingency analysis on residence prior to hospitalization';
proc freq data = co_infx.main;
	tables poly_infx * resid / chisq expected;
run;

title 'contingency analysis on diabetes condition';
proc freq data = co_infx.main;
	tables poly_infx * diabetes / chisq expected;	
run;

title 'contingency analysis on presence of ulcers';
proc freq data = co_infx.main;
	tables poly_infx * ulc / chisq expected;
run;

title 'contingency analysis on history of chronic skin wounds';
proc freq data = co_infx.main;
	tables poly_infx * chr_wnd / chisq expected;
run;

title 'location of cSSTI: extremity vs. other';
proc freq data = co_infx.main;
tables poly_infx * extremity / chisq expected;
run;

title 'contingency analysis of cSSTI classes between single and multiple organism infections';
proc freq data = co_infx.main;
	tables poly_infx * cssti / chisq expected;
run;

proc npar1way data = co_infx.main wilcoxon;
	class poly_infx;
	var c_score;
run;

proc univariate data = co_infx.main;
	class poly_infx;
	var c_score;
run;
ods rtf close;

/*********** end characteristics analysis ************/

proc sort data = co_infx.main_2; by id; run;

/*
data co_infx.main;
	set co_infx.main;
	if id = 6587 then los = 10;
	if id = 6623 then los = 8;
	if read_30 = 2 then read_30 = 1;
run;
*/

/********************* start outcomes_R: outcomes associated with resistant polymicrobial infections **********************

ods rtf;
title 'univariate statistics on LOS between MRSA only and multiple resistant organism cultures';
proc univariate data = co_infx.all_clin_data;
	class res_org;
	var los;
run;

title 'Mann-Whitney U-test on LOS between MRSA only and multiple resistant organism cultures';
proc npar1way data = co_infx.all_clin_data wilcoxon;
	class res_org;
	var los;
run;

title 'contingency analysis on New ICU Transfer from 48hr prior (to culture date) to 7 days post culture date';
proc freq data = co_infx.all_clin_data;
	tables res_org*new_icu / chisq expected;
run;

title 'contingency analysis on New Intubation from 48hr prior (to culture date) to 7 days post culture';
proc freq data = co_infx.all_clin_data;
	tables res_org*new_int / chisq expected;
run;

title 'contingency analysis on new surgery 48hr prior (to culture date) to 14 days post culture date';
proc freq data = co_infx.all_clin_data;
	tables res_org*new_surg / chisq expected;
run;

title 'contingency analysis on new CVC 48 hr prior to (culture date) to 7 days post culture';
proc freq data = co_infx.all_clin_data;
	tables res_org*new_cvc / chisq expected;
run;

title 'contingency analysis on new Urinary Catheter 48 hr prior to (culture date) to 7 days post culture';
proc freq data = co_infx.all_clin_data;
	tables res_org*new_uc / chisq expected;
run;

title 'contingency analysis on new Acute Renal Failure 48 hr prior to (culture date) to 7 days post culture';
proc freq data = co_infx.all_clin_data;
	tables res_org*new_arf / chisq expected;
run;

title 'contingency analysis on new Acute Liver Injury 48 hr prior to (culture date) to 7 days post culture';
proc freq data = co_infx.all_clin_data;
	tables res_org*new_liv / chisq expected;
run;

title 'contingency analysis on new Endocarditis 48 hr prior to (culture date) to 7 days post culture';
proc freq data = co_infx.all_clin_data;
	tables res_org*new_endo / chisq expected;
run;

title 'contingency analysis on new Vasopressor usage 48 hr prior to (culture date) to 7 days post culture';
proc freq data = co_infx.all_clin_data;
	tables res_org*vaso / chisq expected;
run;

title 'contingency analysis on Documentation of Treatment Failure between MRSA only and multiple resistant organism cultures';
proc freq data = co_infx.all_clin_data;
	tables res_org*trt_fail / chisq expected;
run;

title 'contingency analysis on Change of ABX as a result of treatment failure between MRSA only and multiple resistant organism cultures';
proc freq data = co_infx.all_clin_data;
	tables res_org*abx_chng / chisq expected;
run;

title 'contingency analysis on ICU transfer a result of Treatment Failure between MRSA only and multiple resistant organism cultures';
proc freq data = co_infx.all_clin_data;
	tables res_org*fail_icu / chisq expected;
run;

proc freq data = co_infx.all_clin_data;
	tables res_org*fail_org / chisq expected;
title 'contingency analysis on Need for Organ Support as a result of treatment failure between MRSA only and multiple resistant organism cultures';
run;

title 'contingency analysis on Need for Re-operation as a result of Treatment Failure between MRSA only and multiple resistant organism cultures';
proc freq data = co_infx.all_clin_data;
	tables res_org*fail_reop / chisq expected;
run;

title 'contingency analysis on Evidence of Infection Greater Than 4 days during therapy between MRSA only and multiple resistant organism cultures';
proc freq data = co_infx.all_clin_data;
	tables res_org*fail_infx / chisq expected;		
run;

title 'number of additional failures comparison between single and multiple resistant organism cultures';
proc univariate normal data = co_infx.all_clin_data;
	class res_org;
	var fail_tot;
	histogram fail_tot / normal;
run;

title 'number of additional failures comparison between single and multiple resistant organism cultures';
proc npar1way data = co_infx.all_clin_data wilcoxon;
	class res_org;
	var fail_tot;
run;

title 'contingency analysis on Thirty-day Readmission between single and multiple resistant organism cultures';
proc freq data = co_infx.all_clin_data;
	tables res_org*read_30 / chisq expected;
run;

title 'contingency analysis on All-Cause Mortality between single and multiple resistant organism cultures';
proc freq data = co_infx.all_clin_data;
	tables res_org*dth_study / chisq expected;
run;

title 'contingency analysis between single and multiple resistant organism cultures regarding Death due to Infection';
proc freq data = co_infx.all_clin_data;
	tables res_org*fail_dth / chisq expected;
run;

title 'contingency analysis on Death within 30 days of Discharge between single and multiple resistant organism cultures';
proc freq data = co_infx.all_clin_data;
	tables res_org*dth30 / chisq expected;
run;
ods rtf close;
*/

/*********** start outcomes_p: outcomes associated with polymicrobial infections ************/
/*
data co_infx.all_clin_data;
	set co_infx.all_clin_data;
		if fail_res1 = 1 then abx_chng = 1;
		if fail_res2 = 1 then abx_chng = 1;
		if abx_chng ne 1 then abx_chng = 0;
		if trt_fail = 0 then abx_chng = 0;
		if trt_fail = '.' then abx_chng = '.';
run;
*/

ods rtf;
proc univariate data = co_infx.main;
	class poly_infx;
	var los;
	title 'univariate statistics on LOS between single and multiple infection MRSA positive patients';
run;

proc npar1way data = co_infx.main wilcoxon;
	class poly_infx;
	var los;
	title 'Mann-Whitney U-test on LOS between single and multiple infection MRSA positive patients ';
run;

proc freq data = co_infx.main;
	tables poly_infx*new_icu / chisq expected;
	title 'contingency analysis on New ICU Transfer from 48hr prior (to culture date) to 7 days post culture date';
run;

proc freq data = co_infx.main;
	tables poly_infx*new_int / chisq expected;
	title 'contingency analysis on New Intubation from 48hr prior (to culture date) to 7 days post culture';
run;

proc freq data = co_infx.main;
	tables poly_infx*new_surg / chisq expected;
	title 'contingency analysis on new surgery 48hr prior (to culture date) to 14 days post culture date';
run;

proc freq data = co_infx.main;
	tables poly_infx*new_cvc / chisq expected;
	title 'contingency analysis on new CVC 48 hr prior to (culture date) to 7 days post culture';
run;

proc freq data = co_infx.main;
	tables poly_infx*new_uc / chisq expected;
	title 'contingency analysis on new Urinary Catheter 48 hr prior to (culture date) to 7 days post culture';
run;

proc freq data = co_infx.main;
	tables poly_infx*new_arf / chisq expected;
	title 'contingency analysis on new Acute Renal Failure 48 hr prior to (culture date) to 7 days post culture';
run;

proc freq data = co_infx.main;
	tables poly_infx*new_liv / chisq expected;
	title 'contingency analysis on new Acute Liver Injury 48 hr prior to (culture date) to 7 days post culture';
run;

proc freq data = co_infx.main;
	tables poly_infx*new_endo / chisq expected;
	title 'contingency analysis on new Endocarditis 48 hr prior to (culture date) to 7 days post culture';
run;

proc freq data = co_infx.main;
	tables poly_infx*vaso / chisq expected;
	title 'contingency analysis on new Vasopressor usage 48 hr prior to (culture date) to 7 days post culture';
run;

proc freq data = co_infx.main;
	tables poly_infx*trt_fail / chisq expected;
	title 'contingency analysis on Documentation of Treatment Failure between single and multiply infected MRSA patients';
run;

proc freq data = co_infx.main;
	tables poly_infx*abx_chng / chisq expected;
	title 'contingency analysis on Change of ABX as a result of treatment failure between single and multiply infected MRSA patients';
run;

proc freq data = co_infx.main;
	tables poly_infx*fail_icu / chisq expected;
	title 'contingency analysis on ICU transfer a result of Treatment Failure between single and multiply infected MRSA patients';
run;

proc freq data = co_infx.main;
	tables poly_infx*fail_org / chisq expected;
	title 'contingency analysis on Need for Organ Support as a result of treatment failure between single and mutliply infected MRSA patients';
run;

proc freq data = co_infx.main;
	tables poly_infx*fail_reop / chisq expected;
	title 'contingency analysis on Need for Re-operation as a result of Treatment Failure between single and multiply infected MRSA patients';
run;

proc freq data = co_infx.main;
	tables poly_infx*fail_infx / chisq expected;
	title 'contingency analysis on Evidence of Infection Greater Than 4 days during therapy between single and multiply infected MRSA patients';
run;

proc univariate normal data = co_infx.main;
	class poly_infx;
	var fail_tot;
	histogram fail_tot/normal;
	title 'number of additional failures comparison between single and multiple resistant organism cultures';
run;

proc npar1way data = co_infx.main wilcoxon;
	class poly_infx;
	var fail_tot;
	title 'number of additional failures comparison between single and multiply infected MRSA positive patients';
run;

proc freq data = co_infx.main_plus;
	tables poly_infx * read_30 / chisq expected;
	title 'contingency analysis on Thirty-day Readmission between single and multiply infected MRSA positive patients';
run;

proc freq data = co_infx.main;
	tables poly_infx*dth_study / chisq expected;
	title 'contingency analysis on All-Cause Mortality between single and multiply infected MRSA positive patients';
run;

proc freq data = co_infx.main;
	tables poly_infx*fail_dth / chisq expected;
	title 'contingency analysis between single and multiply infected MRSA positive patients regarding Death due to Infection';
run;
ods rtf close;

/*
data co_infx.all_clin_data;
	set co_infx.all_clin_data;
		if bacter = 1 then emia = 1;
		if bacter = 2 then emia = 1;
		if bacter = 3 then emia = 1;
		if bacter = 0 then emia = 0;
		if bacter = '.' then emia = '.';
		if (emia = 1 and dth_study = 1) then EMDTH = 1;
		if EMDTH ne 1 then EMDTH = 0; 
run;

data co_infx.main_2;
	set co_infx.main_2;
		if bacter = 1 then emia = 1;
		if bacter = 2 then emia = 1;
		if bacter = 3 then emia = 1;
		if bacter = 0 then emia = 0;
		if bacter = '.' then emia = '.';
		if (emia = 1 and dth_study = 1) then EMDTH = 1;
		if EMDTH ne 1 then EMDTH = 0; 
run;
*/

ods html;
proc freq data = co_infx.main;
	tables poly_infx*emia poly_infx*EMDTH / chisq;
	title 'bactermia';
run;

proc freq data = co_infx.main;
	tables gram aerobe gram_r aerobe_r;
	title 'Gram and Aerobicity analysis';
run;

proc freq data = co_infx.organisms;
tables organism important;
title 'polymicrobial infection organisms';
run;

proc freq data = co_infx.org_r;
tables organism_r;
run;
ods html close;

/*************** start characteristics_R: risk factors associated with resistant polymicrobial MRSA ABSSSI **************/

ods rtf;
proc univariate data = co_infx.all_clin_data;
	class res_org;
	var age;
	title 'univariate stats on age between single and multiple resistant organism infection patients';
run;

proc ttest data = co_infx.all_clin_data;
	class res_org;
	var age;
	title 't-test on age between single and multiple resistant organism infection patients';
run;

proc ttest data = co_infx.all_clin_data;
	class res_org;
	var weight;
	title 't-test of weight between single and multiple resistant organism infections';
run;

proc freq data = co_infx.all_clin_data;
	tables res_org*eld / chisq expected;
	title 'chi-sq on elderly status between single and multiple resistant organism infections';
run;

proc freq data = co_infx.all_clin_data;
	tables res_org*male / chisq expected;
	title 'chi-sq on gender between single and multiple resistant organism infections';
run;

proc freq data = co_infx.all_clin_data;
	tables res_org*race / chisq expected;
	title 'contingency analysis on race';
run;

proc freq data = co_infx.all_clin_data;
	tables res_org*obese / chisq expected;
	title 'contingency analysis on obesity condition';
run;

proc freq data = co_infx.all_clin_data;
	tables res_org*resid / chisq expected;
	title 'contingency analysis on residence prior to hospitalization';
run;

proc freq data = co_infx.all_clin_data;
	tables res_org*diabetes / chisq expected;
	title 'contingency analysis on diabetes condition';
run;

proc freq data = co_infx.all_clin_data;
	tables res_org*ulc / chisq expected;
	title 'contingency analysis on presence of ulcers';
run;

proc freq data = co_infx.all_clin_data;
	tables res_org*chr_wnd / chisq expected;
	title 'contingency analysis on history of chronic skin wounds';
run;

proc freq data = co_infx.all_clin_data;
	tables res_org*extremity / chisq expected;
	title 'location of cSSTI: extremity vs. other';
run;

proc freq data = co_infx.all_clin_data;
	tables res_org*cssti / chisq expected;
	title 'contingency analysis of cSSTI classes between single and multiple organism infections';
run;
ods rtf close;

ods graphics on;
proc univariate data = co_infx.all_clin_data normal;
	class res_org;
	var c_score;
	histogram;
run;
ods graphics off;

proc npar1way data = co_infx.all_clin_data wilcoxon;
	class res_org;
	var c_score;
run;

proc freq data = co_infx.all_clin_data;
	tables poly_infx*lzd_group res_org*lzd_group / chisq expected;
run;

data organisms;
	set co_infx.all_clin_data;
	keep infx_org;
run;

data hfh;
	set co_infx.all_clin_data;
	if adm_hosp = 'HFH';
run;

proc freq data = work.hfh;
	tables male*race;
run;

proc freq data = work.hfh;
	tables male*eth;
run;

proc univariate data = tables.all_clin_data;
	class new_flag;
	var mccabe;
run;

ods graphics on;
proc npar1way data = tables.all_clin_data wilcoxon;
	class new_flag;
	var mccabe;
run;
ods graphics off;

proc gchart data = co_infx.poly_org;
	pie organism / percent = arrow;
	title 'Distribution of organisms found alongside MRSA';
run;
ods html close;

proc freq data = co_infx.;
	tables important;
run;

ods html;
proc gchart data = co_infx.;
	vbar important / width = 5;
run;
ods html close;

proc gchart data = co_infx.poly_org;
	hbar organism / discrete;
	title 'all organisms detected';
run;

ods rtf;
proc gchart data = co_infx.poly_org;
	hbar important / discrete;
	title 'distribution of co-infection organisms cultured from SSTIs positive for MRSA';
run;

proc gchart data = co_infx.resist_org;
	hbar resist_org / discrete;
	title 'distribution of resistant organisms cultured from SSTIs positive for MRSA';
run;

proc gchart data = co_infx.poly_org;
	pie organism / noheading across = 2 slice = outside percent=outside;
	title 'distribution of co-infection organisms cultured from SSTIs positive for MRSA';
run;

proc gchart data = co_infx.resist_org;
	pie resist_org / noheading across = 2 slice = outside percent=outside;
	title 'distribution of resistant organisms cultured from SSTIs positive for MRSA';
run;

proc gchart data = co_infx.poly_org;
	pie important / noheading percent = outside;
	title 'distribution of co-infection organisms cultured from SSTIs positive for MRSA';
run;
ods rtf close;

proc univariate data = co_infx.all_clin_data;
	class poly_infx;
	var cult_days;
	histogram cult_days;
	title 'inpatient days prior to culture';
run;

proc univariate data = co_infx.all_clin_data;
	class res_org;
	var cult_days;
	title 'inpatient days prior to culture';
run;

proc npar1way data = co_infx.all_clin_data wilcoxon;
	class poly_infx;
	var cult_days;
run;

proc npar1way data = co_infx.all_clin_data wilcoxon;
	class res_org;
	var cult_days;
run;

/*********** end characteristics_R ***********/

/*
data co_infx.all_clin_data;
	set co_infx.all_clin_data;
		if adm_hosp = "HUH" then hosp = 'DMC';
		if adm_hosp = "SGH" then hosp = 'DMC';
		if adm_hosp = "HVH" then hosp = 'DMC';
		if adm_hosp = "DRH" then hosp = 'DMC';
		if adm_hosp = "HFH" then hosp = 'HFH';
		year = year(cult_dat);
run;
*/

ods rtf;
proc freq data = co_infx.all_clin_data;
	tables lzd_group*hosp*year;
	title 'lzd_group=1 <-linezolid patient, lzd_group=0 <-control patient';
run;
ods rtf close;

/*
data co_infx.all_clin_data;
	set co_infx.all_clin_data;
	if cssti = 1 then cssti1 = 1;
		else cssti1 = 0;
	if cssti = 2 then cssti2 = 1;
		else cssti2 = 0;
	if cssti = 3 then cssti3 = 1;
		else cssti3 = 0;
	if cssti = 4 then cssti4 = 1;
		else cssti4 = 0;
run;
*/

proc freq data = co_infx.all_clin_data;
	tables poly_infx * (cssti1 cssti2 cssti3 cssti4)
		  / chisq expected;
run;

proc gchart data = co_infx.all_clin_data;
	pie cssti;
run;

proc univariate data = co_infx.all_clin_data;
	class poly_infx;
	var c_score;
run;

proc npar1way data = co_infx.all_clin_data wilcoxon;
	class poly_infx;
	var c_score;
run;

proc gchart data = co_infx.poly_org;
	hbar important / discrete;
	title 'distribution of co-infection organisms cultured from SSTIs positive for MRSA';
run;

proc gchart data = co_infx.resist_org;
	hbar resist_org / discrete;
	title 'distribution of resistant organisms cultured from SSTIs positive for MRSA';
run;

proc gchart data = co_infx.poly_org;
	pie organism / noheading across = 2 slice = outside percent=outside;
	title 'distribution of organisms cultured from cSSTIs due to MRSA';
run;

proc gchart data = co_infx.resist_org;
	pie resist_org / noheading across = 2 slice = outside percent=outside;
	title 'distribution of resistant organisms cultured from cSSTIs due to MRSA';
run;

proc gchart data = co_infx.poly_org;
	pie important / noheading percent = outside;
	title 'distribution of organisms cultured from cSSTIs due to MRSA';
run;

proc gchart data = co_infx.poly_org;
	vbar important / discrete;
	title 'distribution of co-infection organisms cultured from SSTIs positive for MRSA';
run;

/*******************************************************************************************
 begin test for independence between linezolid group and polymicrobial infection group     
********************************************************************************************/

/*
data co_infx.abx_indx;
	set co_infx.abx_indx;
	if abx_nam = "Linezolid" then lzd = 1;
	if abx_nam ne "Linezolid" then lzd = 0;
run;
*/

* merging patient data with antibiotic data with identifier in place;
proc sort data = co_infx.abx_indx; by id; run;
proc sort data = co_infx.main; by id; run;

data trtment;
	merge co_infx.main (in = main) co_infx.abx_indx (in = abx);
	by id;
	if main AND abx;
run;

*creating patient level flag for linezolid=1;

data treatment_split;
	do until (last.id);
		set trtment;
		by id;
		if lzd = 1 then lzd_group = 1;
	end;
	lzd_group = coalesce(lzd_group, 0);
	keep id lzd_group;
run;

data lzd_group;
	set treatment_split;
	where lzd_group = 1;
run;

data control_group;
	set treatment_split;
	where lzd_group ne 1;
run;

*merging lzd_group with clinical data so as to coalesce all data;

proc sort data = lzd_group; by id; run;
proc sort data = co_infx.main; by id; run;

data lzd_clin;
	merge lzd_group (in=inlzd) co_infx.main (in=inmain);
	by id;
	if inlzd and inmain;
run;

*merging control group identifier with all clinical data;

proc sort data = control_group; by id; run;
proc sort data = co_infx.main; by id; run;

data control_clin;
	merge control_group (in=control) co_infx.main (in=main);
	by id;
	if control AND main;
run;

*appending patient groups into one table;

data co_infx.all_clin_data;
	set control_clin
		lzd_clin;
run;

ods rtf;
proc freq data = co_infx.all_clin_data;
tables poly_infx*lzd_group / chisq;
title 'polymicrobial infection versus linezolid group (lzd_group=1 <-lzd group, lzd_group=0 <-comparison group)';
run;
ods rtf close;

data co_infx.lzd_section;
	set co_infx.all_clin_data;
	if lzd_group = 1;
run;

data co_infx.compare_sec;
	set co_infx.all_clin_data;
	if lzd_group = 0;
run;

*making two different tables, one for comparison group and one for lzd group;

ods rtf;
proc freq data = co_infx.lzd_section;
tables poly_infx*eld poly_infx*male poly_infx*obese
	poly_infx*race poly_infx*white poly_infx*black poly_infx*other
		poly_infx*resid poly_infx*home poly_infx*ltacf poly_infx*oth_resid
		poly_infx*diabetes poly_infx*ulc poly_infx*chr_wnd poly_infx*extremity
		poly_infx*emia poly_infx*cssti poly_infx*cssti1 poly_infx*cssti2
		poly_infx*cssti3 poly_infx*cssti4 / chisq;
title - 'characteristics';
run;

proc ttest data = co_infx.lzd_section;
class poly_infx;
var age;
run;

proc ttest data = co_infx.lzd_section;
class poly_infx;
var weight;
run;

proc univariate data = co_infx.lzd_section;
class poly_infx;
var c_score;
run;

proc npar1way data = co_infx.lzd_section wilcoxon;
class poly_infx;
var c_score;
run;

proc univariate data = co_infx.lzd_section;
class poly_infx;
var los;
run;

proc npar1way data = co_infx.lzd_section;
class poly_infx;
var los;
run;

proc freq data = co_infx.lzd_section;
tables poly_infx*new_icu poly_infx*new_int poly_infx*new_surg poly_infx*new_cvc
		poly_infx*new_uc poly_infx*new_arf poly_infx*new_liv poly_infx*new_endo
		poly_infx*vaso poly_infx*read_30 poly_infx*dth_study poly_infx*fail_dth / chisq;
run;
ods rtf close;

ods rtf;
proc freq data = co_infx.lzd_section;
tables poly_infx*trt_fail poly_infx*abx_chng poly_infx*fail_icu poly_infx*fail_org
		poly_infx*fail_reop poly_infx*fail_infx / chisq;
run;
ods rtf close;

*char and outcomes for compare_sec;

data co_infx.compare_sec;
	set co_infx.compare_sec;
	los = dis_dat-adm_dat;
run;

ods rtf;
proc freq data = co_infx.compare_sec;
tables poly_infx*eld poly_infx*male poly_infx*obese
		poly_infx*race poly_infx*white poly_infx*black poly_infx*other
		poly_infx*resid poly_infx*home poly_infx*ltacf poly_infx*oth_resid
		poly_infx*diabetes poly_infx*ulc poly_infx*chr_wnd poly_infx*extremity
		poly_infx*emia poly_infx*cssti poly_infx*cssti1 poly_infx*cssti2
		poly_infx*cssti3 poly_infx*cssti4 / chisq;
run;

proc ttest data = co_infx.compare_sec;
class poly_infx;
var age;
run;

proc ttest data = co_infx.compare_sec;
class poly_infx;
var weight;
run;

proc univariate data = co_infx.compare_sec;
class poly_infx;
var c_score;
run;

proc npar1way data = co_infx.compare_sec wilcoxon;
class poly_infx;
var c_score;
run;

proc univariate data = co_infx.compare_sec;
class poly_infx;
var los;
run;

proc npar1way data = co_infx.compare_sec;
class poly_infx;
var los;
run;

proc freq data = co_infx.compare_sec;
tables poly_infx*new_icu poly_infx*new_int poly_infx*new_surg poly_infx*new_cvc
		poly_infx*new_uc poly_infx*new_arf poly_infx*new_liv poly_infx*new_endo
		poly_infx*vaso poly_infx*read_30 poly_infx*dth_study poly_infx*fail_dth
		poly_infx*trt_fail poly_infx*abx_chng poly_infx*fail_icu
		poly_infx*fail_org poly_infx*fail_reop poly_infx*fail_infx / chisq;
run;
ods rtf close;


**************************************************************************************
| Data collection for pfizer-linezolid project over as of 2/10/14 re-analyzing data  |
*************************************************************************************;

data co_infx.main;
	set pfizer.main;
	year = year(cult_dat);
	if adm_hosp = "DRH" then hosp = "DMC";
	if adm_hosp = "HFH" then hosp = "HFH";
	if adm_hosp = "HUH" then hosp = "DMC";
	if adm_hosp = "HVH" then hosp = "DMC";
	if adm_hosp = "SGH" then hosp = "DMC";
	if adm_hosp = "hfh" then hosp = "HFH";
run;

data co_infx.abx_indx;
	set co_infx.abx_indx;
	if abx_nam = "Linezolid" then lzd = 1;
	if abx_nam ne "Linezolid" then lzd = 0;
run;

*merging patient data with antibiotic data with identifier in place;

proc sort data = co_infx.abx_indx; by id; run;
proc sort data = co_infx.main; by id; run;

data trtment;
	merge co_infx.main (in = main) co_infx.abx_indx (in = abx);
	by id;
	if main AND abx;
run;

*creating patient level flag for linezolid=1;

data treatment_split;
	do until (last.id);
		set trtment;
		by id;
		if lzd = 1 then lzd_group = 1;
	end;
	lzd_group = coalesce(lzd_group, 0);
	keep id lzd_group;
run;

data lzd_group;
	set treatment_split;
	where lzd_group = 1;
run;

data control_group;
	set treatment_split;
	where lzd_group ne 1;
run;

*merging lzd_group with clinical data so as to coalesce all data;

proc sort data = lzd_group; by id; run;
proc sort data = co_infx.main; by id; run;

data lzd_clin;
	merge lzd_group (in=inlzd) co_infx.main (in=inmain);
	by id;
	if inlzd and inmain;
run;

*merging control group identifier with all clinical data;

proc sort data = control_group; by id; run;
proc sort data = co_infx.main; by id; run;

data control_clin;
	merge control_group (in=control) co_infx.main (in=main);
	by id;
	if control AND main;
run;

*appending patient groups into one table;

data co_infx.all_clin_data;
	set control_clin
		lzd_clin;
run;

ods html;
proc freq data = co_infx.all_clin_data;
tables year*hosp year*lzd_group lzd_group*hosp;
run;
ods html close;

/************************************************************************/

data co_infx.all_clin_data;
	set co_infx.all_clin_data;
	if diabetes = 0 then amputat = '.';
	if renal ne 0 then kidney = 1;
	if kidney ne 1 then kidney = 0;
	if renal = '.' then kidney = '.';
	if wt_unit = "lb" then weight = weight*0.453592;
	if wt_unit = "lb" then wt_unit = "kg";
	if ht_unit = "in" then height = height*2.54;
	if ht_unit = "in" then ht_unit = "cm";
run;

ods rtf;
proc freq data = co_infx.main_2;
tables poly_infx
	   poly_infx*male poly_infx*obese poly_infx*eth poly_infx*race
       poly_infx*resid poly_infx*ltcf poly_infx*neutro poly_infx*surg_yr
	   poly_infx*abx_yr poly_infx*device poly_infx*diabetes poly_infx*amputat
	   poly_infx*retino poly_infx*diab_com poly_infx*neuro poly_infx*nephro
	   poly_infx*renal poly_infx*kidney poly_infx*chr_wnd poly_infx*wnd_site poly_infx*wnd_pre
	   poly_infx*steroid poly_infx*chemothp poly_infx*radiothp poly_infx*post_trn
	   poly_infx*ulcer poly_infx*cssti poly_infx*sepsis poly_infx*new_icu poly_infx*new_int
	   poly_infx*new_surg poly_infx*new_proc poly_infx*new_cvc poly_infx*new_uc
	   poly_infx*new_arf poly_infx*new_liv poly_infx*new_endo poly_infx*vaso
	   poly_infx*gram poly_infx*aerobe poly_infx*res_org poly_infx*fail_dth
	   poly_infx*read_30 poly_infx*infx_doc poly_infx*trt_fail poly_infx*fail_res1 poly_infx*fail_icu
	   poly_infx*fail_org poly_infx*fail_org poly_infx*fail_reop poly_infx*fail_infx
	   poly_infx*fail_tot poly_infx*eld poly_infx*ulc poly_infx*extremity
	   poly_infx*dth_study poly_infx*cssti1 poly_infx*cssti2 poly_infx*cssti3
	   poly_infx*cssti4 poly_infx*year poly_infx*hosp poly_infx*black
	   poly_infx*white poly_infx*other poly_infx*home poly_infx*ltacf poly_infx*oth_resid
	   poly_infx*emia poly_infx*emdth / chisq relrisk;
run;

proc univariate data = co_infx.main_2;
class poly_infx;
var age;
run;

proc npar1way data = co_infx.main_2 wilcoxon;
class poly_infx;
var age;
run;

proc ttest data = co_infx.main_2;
class poly_infx;
var age;
run;

proc ttest data = co_infx.main_2;
class poly_infx;
var weight;
run;

proc npar1way data = co_infx.main_2 wilcoxon;
class poly_infx;
var weight;
run;

proc ttest data = co_infx.main_2;
class poly_infx;
var height;
run;

proc ttest data = co_infx.main_2;
class poly_infx;
var bmi;
run;

proc npar1way data = co_infx.main_2 wilcoxon;
class poly_infx;
var bmi;
run;

proc univariate data = co_infx.main_2 normal;
class poly_infx;
var cult_days;
run;

proc npar1way data = co_infx.main_2 wilcoxon;
class poly_infx;
var cult_days;
run;

proc ttest data = co_infx.main_2;
class poly_infx;
var creat;
run;

proc npar1way data = co_infx.main_2 wilcoxon;
class poly_infx;
var creat;
run;

proc ttest data = co_infx.main_2;
class poly_infx;
var neut;
run;

proc npar1way data = co_infx.main_2 wilcoxon;
class poly_infx;
var neut;
run;

proc univariate data = co_infx.main_2 normal;
class poly_infx;
var past_adm;
run;

proc ttest data = co_infx.main_2;
class poly_infx;
var past_adm;
run;

proc npar1way data = co_infx.main_2 wilcoxon;
class poly_infx;
var past_adm;
run;

proc univariate data = co_infx.main_2 normal;
class poly_infx;
var mccabe;
run;

proc npar1way data = co_infx.main_2 wilcoxon;
class poly_infx;
var mccabe;
run;

proc univariate data = co_infx.main_2 normal;
class poly_infx;
var c_score;
run;

proc ttest data = co_infx.main_2;
class poly_infx;
var c_score;
run;

proc npar1way data = co_infx.main_2 wilcoxon;
class poly_infx;
var c_score;
run;

proc univariate data = co_infx.main_2 normal;
class poly_infx;
var age_score;
run;

proc npar1way data = co_infx.main_2 wilcoxon;
class poly_infx;
var age_score;
run;

proc univariate data = co_infx.main_2 normal;
class poly_infx;
var ulc_stg1;
run;

proc npar1way data = co_infx.main_2 wilcoxon;
class poly_infx;
var ulc_stg1;
run;

proc univariate data = co_infx.main_2 normal;
class poly_infx;
var resol_dt;
run;

proc npar1way data = co_infx.main_2 wilcoxon;
class poly_infx;
var resol_dt;
run;

proc ttest data = co_infx.main_2;
class poly_infx;
var resol_dt;
run;

proc univariate data = co_infx.main_2 normal;
class poly_infx;
var los;
run;

proc npar1way data = co_infx.main_2 wilcoxon;
class poly_infx;
var los;
run;
ods rtf close;

*Logistic regression;

data co_infx.all_clin_data;
	set co_infx.all_clin_data;
	if c_score >= 3 then charl_cat = 1;
	else charl_cat = 0;
	if (cssti3 = 1 | cssti4 = 1) then cssti_lev = 1;
	else cssti_lev = 0; 
run;

ods rtf;
proc logistic data = co_infx.main_2 descending;
model poly_infx = eld past_adm home ltacf diabetes kidney ulc device surg_yr abx_yr c_score charl_cat emia cssti1 cssti2 cssti3 cssti4
					/ selection = stepwise
					  slentry = 0.05
					  slstay = 0.05
					  risklimits;
					  title 'Logistic Regression on coinfection';
run;
ods rtf close;
quit;

ods rtf;
proc logistic data = co_infx.main_2 descending;
model poly_infx = eld home ltacf diabetes kidney chr_wnd device surg_yr abx_yr charl_cat emia cssti_lev
					/ selection = backward
					  slentry = 0.05
					  slstay = 0.05
					  risklimits;
					  title 'logistic regression on coinfection';
run;
ods rtf close;
quit;

ods rtf;
proc logistic data = co_infx.main_2 descending;
model res_org = eld home ltacf kidney ulc device surg_yr abx_yr charl_cat emia cssti_lev 
				/ selection = backward
				  slentry = 0.05
				  slstay = 0.05
				  risklimits;
				  title 'logistic regression on coinfection';
run;
ods rtf close;
quit;

ods rtf;
proc logistic data = co_infx.main_2 descending simple;
model res_org = eld diabetes ulc charl_cat emia cssti_lev
				/ selection = backward
				  slentry = 0.05
				  slstay = 0.05
				  risklimits;
				  title 'logistic regression on coinfection ulcer';
run;

proc logistic data = co_infx.main_2 descending;
model res_org = eld diabetes chr_wnd charl_cat emia cssti_lev
				/ selection = backward
				  slentry = 0.05
				  slstay = 0.05
				  details
				  risklimits;
				  title 'logistic regression on coinfection chronic wound';
run;

proc logistic data = co_infx.main_2 descending;
model poly_infx = eld diabetes chr_wnd charl_cat emia cssti_lev
					/ selection = backward
					  slentry = 0.05
					  slstay = 0.05
					  details
					  risklimits;
					  title 'Logistic Regression on coinfection';
run;
ods rtf close;
quit;

data co_infx.all_clin_data;
	set co_infx.all_clin_data;
	if age >= 65 then eld = 1; else eld = 0;
run;

ods html;
proc freq data = co_infx.all_clin_data;
tables poly_infx*lzd_group / chisq;
run;

proc logistic data = co_infx.all_clin_data descending;
model poly_infx = eld diabetes chr_wnd charl_cat emia cssti_lev lzd_group
					/ selection = backward
					  slentry = 0.05
					  slstay = 0.05
					  risklimits;
					  title 'Logistic Regression on coinfection';
run;
ods html close;
quit;

ods html;
proc logistic data = co_infx.all_clin_data descending;
model read_30 =  eld diabetes chr_wnd  charl_cat cssti_lev lzd_group
					/ selection = backward
					  slentry = 0.05
					  slstay = 0.05
					  details
					  risklimits;
					  title 'Logistic Regression on coinfection';
run;

proc logistic data = co_infx.all_clin_data descending;
model dth_study =  eld chr_wnd charl_cat cssti_lev lzd_group
					/ selection = backward
					  slentry = 0.05
					  slstay = 0.05
					  risklimits;
					  title 'Logistic Regression on coinfection';
run;
ods html close;

ods rtf;
proc freq data = co_infx.main_2;
tables poly_infx*male poly_infx*eld poly_infx*obese poly_infx*eth poly_infx*cult_loc
	   poly_infx*neutro poly_infx*surg_yr poly_infx*abx_yr poly_infx*device poly_infx*diabetes
	   poly_infx*diab_com poly_infx*amputat poly_infx*retino poly_infx*neuro poly_infx*nephro
	   poly_infx*chr_wnd poly_infx*steroid poly_infx*chemothp poly_infx*radiothp poly_infx*post_trn
	   poly_infx*ulcer poly_infx*extremity poly_infx*cssti1 poly_infx*cssti2 poly_infx*cssti3
	   poly_infx*cssti4 poly_infx*black poly_infx*white poly_infx*other poly_infx*home
       poly_infx*ltacf poly_infx*oth_resid poly_infx*emia poly_infx*kidney poly_infx*charl_cat
	   poly_infx*cssti_lev/ chisq relrisk;
run;
ods rtf close;

data co_infx.main_2;
	set co_infx.main_2;
	if res_org = 1 then poly_infx = 1;
run;

ods html;
proc freq data = co_infx.main_2;
tables poly_infx*charl_cat poly_infx*cssti_lev / chisq;
run;
ods html close;

*making tables of res_org*risk_factor;

ods rtf;
proc freq data = co_infx.main_2;
tables res_org;
run;

proc freq data = co_infx.main_2;
tables res_org*male res_org*obese res_org*eth res_org*race res_org*resid res_org*neutro
	   res_org*surg_yr res_org*abx_yr res_org*device res_org*diabetes res_org*diab_com
	   res_org*amputat res_org*retino res_org*neuro res_org*nephro res_org*chr_wnd
	   res_org*steroid res_org*chemothp res_org*radiothp res_org*post_trn res_org*ulcer
	   res_org*cssti res_org*poly_infx res_org*eld res_org*ulc res_org*extremity res_org*cssti1
	   res_org*cssti2 res_org*cssti3 res_org*cssti4 res_org*black res_org*white res_org*other
	   res_org*home res_org*ltacf res_org*oth_resid res_org*emia res_org*kidney res_org*charl_cat
	   res_org*cssti_lev / chisq relrisk;
run;

proc univariate data = co_infx.main_2;
class res_org;
var age;
run;

proc npar1way data = co_infx.main_2 wilcoxon;
class res_org;
var age;
run;

proc univariate data = co_infx.main_2 normal;
class res_org;
var age;
run;

proc ttest data = co_infx.main_2;
class res_org;
var age;
run;

proc npar1way data = co_infx.main_2 wilcoxon;
class res_org;
var age;
run;

proc univariate data = co_infx.main_2 normal;
class res_org;
var weight;
run;

proc ttest data = co_infx.main_2;
class res_org;
var weight;
run;

proc npar1way data = co_infx.main_2 wilcoxon;
class res_org;
var weight;
run;

proc univariate data = co_infx.main_2 normal;
class res_org;
var height;
run;

proc ttest data = co_infx.main_2;
class res_org;
var height;
run;

proc npar1way data = co_infx.main_2 wilcoxon;
class res_org;
var height;
run;

proc univariate data = co_infx.main_2 normal;
class res_org;
var past_adm;
run;

proc ttest data = co_infx.main_2;
class res_org;
var past_adm;
run;

proc npar1way data = co_infx.main_2 wilcoxon;
class res_org;
var past_adm;
run;

proc univariate data = co_infx.main_2 normal;
class res_org;
var cult_days;
run;

proc ttest data = co_infx.main_2;
class res_org;
var cult_days;
run;

proc npar1way data = co_infx.main_2 wilcoxon;
class res_org;
var cult_days;
run;

proc univariate data = co_infx.main_2 normal;
class res_org;
var creat;
run;

proc ttest data = co_infx.main_2;
class res_org;
var creat;
run;

proc npar1way data = co_infx.main_2;
class res_org;
var creat;
run;

proc univariate data = co_infx.main_2 normal;
class res_org;
var neut;
run;

proc ttest data = co_infx.main_2;
class res_org;
var neut;
run;

proc npar1way data = co_infx.main_2 wilcoxon;
class res_org;
var neut;
run;

proc univariate data = co_infx.main_2 normal;
class res_org;
var mccabe;
run;

proc ttest data = co_infx.main_2;
class res_org;
var mccabe;
run;

proc npar1way data = co_infx.main_2 wilcoxon;
class res_org;
var mccabe;
run;

proc univariate data = co_infx.main_2 normal;
class res_org;
var c_score;
run;

proc npar1way data = co_infx.main_2 wilcoxon;
class res_org;
var c_score;
run;

proc univariate data = co_infx.main_2 normal;
class res_org;
var age_score;
run;

proc npar1way data = co_infx.main_2 wilcoxon;
class res_org;
var age_score;
run;

proc univariate data= co_infx.main_2 normal;
class res_org;
var bmi;
run;

proc ttest data = co_infx.main_2;
class res_org;
var bmi;
run;

proc npar1way data = co_infx.main_2 wilcoxon;
class res_org;
var bmi;
run;

proc univariate data = co_infx.main_2 normal;
class res_org;
var ulc_stg1;
run;

proc npar1way data = co_infx.main_2 wilcoxon;
class res_org;
var ulc_stg1;
run;

proc univariate data = co_infx.main_2 normal;
class res_org;
var los;
run;

proc npar1way data = co_infx.main_2 wilcoxon;
class res_org;
var los;
run;

proc univariate data = co_infx.main_2 normal;
class res_org;
var resol_dt;
run;

proc npar1way data = co_infx.main_2 wilcoxon;
class res_org;
var resol_dt;
run;

proc freq data = co_infx.main_2;
tables res_org*new_icu res_org*new_int res_org*new_surg res_org*new_proc res_org*new_cvc res_org*new_uc
	   res_org*new_arf res_org*new_liv res_org*new_endo res_org*vaso res_org*trt_fail
	   res_org*fail_icu res_org*fail_org res_org*fail_reop res_org*fail_infx res_org*fail_dth res_org*read_30
	   res_org*emdth res_org*infx_doc res_org*fail_dth res_org*dth_study / chisq relrisk;
run;
ods rtf close;

*making variables to identify which patient has which organism;

data co_infx.organisms;
	set co_infx.organisms;
	if organism = "Streptococcus sp" then organism = "Streptococcus sp.";
run;

ods rtf;
proc freq data = co_infx.organisms;
tables organism important;
run;
ods rtf close;

data co_infx.org_code;
	set co_infx.org_code;
	if gram = "-" then gram = "negative";
	if gram = "+" then gram = "positive";
run;

data co_infx.organisms;
	set co_infx.organisms;
	if prxmatch("m/B. fragilis/i", infx_org) then b_fragilis = 1; else b_fragilis = 0;
	if poly_infx = 0 then b_fragilis = '.';
	if prxmatch("m/B. uniformis|Bacteroides sp./i", infx_org) then bacter = 1; else bacter = 0;
	if poly_infx = 0 then bacter = '.';
	if prxmatch("m/C. difficile|C. sordelli/i", infx_org) then clost = 1; else clost = 0;
	if poly_infx = 0 then clost = '.';
	if prxmatch("m/Peptostreptpcoccus/i", infx_org) then pepto = 1; else pepto = 0;
	if poly_infx = 0 then pepto = '.';
	if prxmatch("m/A. baumannii/i", infx_org) then abau = 1; else abau = 0;
	if poly_infx = 0 then abau = '.';
	if prxmatch("m/C. freundii/i", infx_org) then cfreu = 1; else cfreu = 0;
	if poly_infx = 0 then cfreu = '.';
	if prxmatch("m/E. coli/i", infx_org) then ecoli = 1; else ecoli = 0;
	if poly_infx = 0 then ecoli = '.';
	if prxmatch("m/E. cloacae/i", infx_org) then ecloa = 1; else ecloa = 0;
	if poly_infx = 0 then ecloa = '.';
	if prxmatch("m/Enterobacter sp./i", infx_org) then ebac = 1; else ebac = 0;
	if poly_infx = 0 then ebac = '.';
	if prxmatch("m/K. oxytoca/i", infx_org) then koxy = 1; else koxy = 0;
	if poly_infx = 0 then koxy = '.';
	if prxmatch("m/K. pneumoniae/i", infx_org) then kpneu = 1; else kpneu = 0;
	if poly_infx = 0 then kpneu = '.';
	if prxmatch("m/M. morganii/i", infx_org) then morgan = 1; else morgan = 0;
	if poly_infx = 0 then morgan = '.';
	if prxmatch("m/P. mirabilis/i", infx_org) then mirab = 1; else mirab = 0;
	if poly_infx = 0 then mirab = '.';
	if prxmatch("m/P. vulgaris/i", infx_org) then vulgar = 1; else vulgar = 0;
	if poly_infx = 0 then vulgar = '.';
	if prxmatch("m/P. aeruginosa/i", infx_org) then aeru = 1; else aeru = 0;
	if poly_infx = 0 then aeru = '.';
	if prxmatch("m/S. maltophilia/i", infx_org) then malt = 1; else malt = 0;
	if poly_infx = 0 then malt = '.';
	if prxmatch("m/E. faecalis/i", infx_org) then faecalis = 1; else faecalis = 0;
	if poly_infx = 0 then faecalis = '.';
	if prxmatch("m/E. faecium/i", infx_org) then faecium = 1; else faecium = 0;
	if poly_infx = 0 then faecium = '.';
	if prxmatch("m/E. raffinosus|Enterococcus sp./i", infx_org) then entero = 1; else entero = 0;
	if poly_infx = 0 then entero = '.';
	if prxmatch("m/S. aureus/i", infx_org) then aureus = 1; else aureus = 0;
	if poly_infx = 0 then aureus = '.';
	if prxmatch("m/S. epidermidis|S. haemolyticus|S. intermedius|S. lugdunensis/i", infx_org) then staph = 1; else staph = 0;
	if poly_infx = 0 then staph = '.';
	if prxmatch("m/S. pyogenes/i", infx_org) then pyogenes = 1; else pyogenes = 0;
	if poly_infx = 0 then pyogenes = '.';
	if prxmatch("m/S. agalactiae/i", infx_org) then agal = 1; else agal = 0;
	if poly_infx = 0 then agal = '.';
	if prxmatch("m/S. anginosus|S. pneumoniae|S. viridans|Streptococcus sp./i", infx_org) then strep = 1; else strep = 0;
	if poly_infx = 0 then strep = '.';
run;

data co_infx.main_2;
	set co_infx.main_2;
	if prxmatch("m/B. fragilis/i", infx_org) then b_fragilis = 1; else b_fragilis = 0;
	if poly_infx = 0 then b_fragilis = '.';
	if prxmatch("m/B. uniformis|Bacteroides sp./i", infx_org) then bacter = 1; else bacter = 0;
	if poly_infx = 0 then bacter = '.';
	if prxmatch("m/C. difficile|C. sordelli/i", infx_org) then clost = 1; else clost = 0;
	if poly_infx = 0 then clost = '.';
	if prxmatch("m/Peptostreptococcus/i", infx_org) then pepto = 1; else pepto = 0;
	if poly_infx = 0 then pepto = '.';
	if prxmatch("m/A. baumannii/i", infx_org) then abau = 1; else abau = 0;
	if poly_infx = 0 then abau = '.';
	if prxmatch("m/C. freundii/i", infx_org) then cfreu = 1; else cfreu = 0;
	if poly_infx = 0 then cfreu = '.';
	if prxmatch("m/E. coli/i", infx_org) then ecoli = 1; else ecoli = 0;
	if poly_infx = 0 then ecoli = '.';
	if prxmatch("m/E. cloacae/i", infx_org) then ecloa = 1; else ecloa = 0;
	if poly_infx = 0 then ecloa = '.';
	if prxmatch("m/Enterobacter sp.|Enterobacter|E. aerogenes|E. intermedius|E. turicensis/i", infx_org) then ebac = 1; else ebac = 0;
	if poly_infx = 0 then ebac = '.';
	if prxmatch("m/K. oxytoca/i", infx_org) then koxy = 1; else koxy = 0;
	if poly_infx = 0 then koxy = '.';
	if prxmatch("m/K. pneumoniae/i", infx_org) then kpneu = 1; else kpneu = 0;
	if poly_infx = 0 then kpneu = '.';
	if prxmatch("m/M. morganii/i", infx_org) then morgan = 1; else morgan = 0;
	if poly_infx = 0 then morgan = '.';
	if prxmatch("m/P. mirabilis/i", infx_org) then mirab = 1; else mirab = 0;
	if poly_infx = 0 then mirab = '.';
	if prxmatch("m/P. vulgaris/i", infx_org) then vulgar = 1; else vulgar = 0;
	if poly_infx = 0 then vulgar = '.';
	if prxmatch("m/P. aeruginosa/i", infx_org) then aeru = 1; else aeru = 0;
	if poly_infx = 0 then aeru = '.';
	if prxmatch("m/S. maltophilia/i", infx_org) then malt = 1; else malt = 0;
	if poly_infx = 0 then malt = '.';
	if prxmatch("m/E. faecalis/i", infx_org) then faecalis = 1; else faecalis = 0;
	if poly_infx = 0 then faecalis = '.';
	if prxmatch("m/E. faecium/i", infx_org) then faecium = 1; else faecium = 0;
	if poly_infx = 0 then faecium = '.';
	if prxmatch("m/E. raffinosus|Enterococcus sp./i", infx_org) then entero = 1; else entero = 0;
	if poly_infx = 0 then entero = '.';
	if prxmatch("m/S. aureus/i", infx_org) then aureus = 1; else aureus = 0;
	if poly_infx = 0 then aureus = '.';
	if prxmatch("m/S. epidermidis|S. haemolyticus|S. intermedius|S. lugdunensis/i", infx_org) then staph = 1; else staph = 0;
	if poly_infx = 0 then staph = '.';
	if prxmatch("m/S. pyogenes/i", infx_org) then pyogenes = 1; else pyogenes = 0;
	if poly_infx = 0 then pyogenes = '.';
	if prxmatch("m/S. agalactiae/i", infx_org) then agal = 1; else agal = 0;
	if poly_infx = 0 then agal = '.';
	if prxmatch("m/S. anginosus|S. pneumoniae|S. viridans|Streptococcus sp./i", infx_org) then strep = 1; else strep = 0;
	if poly_infx = 0 then strep = '.';
	if prxmatch("m/C. albicans/i", infx_org) then albican = 1; else albican = 0;
	if poly_infx = 0 then albican = '.';
	if prxmatch("m/C. glabrata|Candida sp.|C. parapsilosis|C. tropicalis/i", infx_org) then candida = 1; else candida = 0;
	if poly_infx = 0 then candida = '.';
run;

data co_infx.org_r;
	set co_infx.org_r;
	if prxmatch("m/B. fragilis/i", resist) then b_fragilis = 1; else b_fragilis = 0;
	if prxmatch("m/B. uniformis|Bacteroides sp./i", resist) then bacter = 1; else bacter = 0;
	if prxmatch("m/C. difficile|C. sordelli/i", resist) then clost = 1; else clost = 0;
	if prxmatch("m/Peptostreptococcus/i", resist) then pepto = 1; else pepto = 0;
	if prxmatch("m/A. baumannii/i", resist) then abau = 1; else abau = 0;
	if prxmatch("m/C. freundii/i", resist) then cfreu = 1; else cfreu = 0;
	if prxmatch("m/E. coli/i", resist) then ecoli = 1; else ecoli = 0;
	if prxmatch("m/E. cloacae/i", resist) then ecloa = 1; else ecloa = 0;
	if prxmatch("m/Enterobacter sp.|Enterobacter|E. aerogenes|E. intermedius|E. turicensis/i", resist) then ebac = 1; else ebac = 0;
	if prxmatch("m/K. oxytoca/i", resist) then koxy = 1; else koxy = 0;
	if prxmatch("m/K. pneumoniae/i", resist) then kpneu = 1; else kpneu = 0;
	if prxmatch("m/M. morganii/i", resist) then morgan = 1; else morgan = 0;
	if prxmatch("m/P. mirabilis/i", resist) then mirab = 1; else mirab = 0;
	if prxmatch("m/P. vulgaris/i", resist) then vulgar = 1; else vulgar = 0;
	if prxmatch("m/P. aeruginosa/i", resist) then aeru = 1; else aeru = 0;
	if prxmatch("m/S. maltophilia/i", resist) then malt = 1; else malt = 0;
	if prxmatch("m/E. faecalis/i", resist) then faecalis = 1; else faecalis = 0;
	if prxmatch("m/E. faecium/i", resist) then faecium = 1; else faecium = 0;
	if prxmatch("m/E. raffinosus|Enterococcus sp./i", resist) then entero = 1; else entero = 0;
	if prxmatch("m/S. aureus/i", resist) then aureus = 1; else aureus = 0;
	if prxmatch("m/S. epidermidis|S. haemolyticus|S. intermedius|S. lugdunensis/i", resist) then staph = 1; else staph = 0;
	if prxmatch("m/S. pyogenes/i", resist) then pyogenes = 1; else pyogenes = 0;
	if prxmatch("m/S. agalactiae/i", resist) then agal = 1; else agal = 0;
	if prxmatch("m/S. anginosus|S. pneumoniae|S. viridans|Streptococcus sp./i", resist) then strep = 1; else strep = 0;
	if prxmatch("m/C. albicans/i", resist) then albican = 1; else albican = 0;
	if prxmatch("m/C. glabrata|Candida sp.|C. parapsilosis|C. tropicalis/i", resist) then candida = 1; else candida = 0;
run;

ods rtf;
proc freq data = co_infx.main_2;
tables b_fragilis bacter clost pepto abau cfreu ecoli ecloa ebac koxy kpneu morgan mirab vulgar aeru 
	   malt faecalis faecium entero aureus staph pyogenes agal strep albican candida;
run;

proc freq data = co_infx.org_r;
tables b_fragilis bacter clost pepto abau cfreu ecoli ecloa ebac koxy kpneu morgan mirab vulgar aeru 
	   malt faecalis faecium entero aureus staph pyogenes agal strep albican candida;
run;
ods rtf close;

ods html;
proc univariate data = co_infx.main_2 normal;
var age los;
run;
ods html close;

ods html;
proc univariate data = co_infx.main_2 normal;
class poly_infx;
var age los;
run;
ods html close;

data org_r;
	set co_infx.main_2;
	keep id res_org resist;
run;

data co_infx.res_org;
	set org_r;
	if prxmatch("m/B. fragilis/i", resist) then b_fragilis = 1; else b_fragilis = 0;
	if res_org = 0 then b_fragilis = '.';
	if prxmatch("m/B. uniformis|Bacteroides sp./i", resist) then bacter = 1; else bacter = 0;
	if res_org = 0 then bacter = '.';
	if prxmatch("m/C. difficile|C. sordelli/i", resist) then clost = 1; else clost = 0;
	if res_org = 0 then clost = '.';
	if prxmatch("m/Peptostreptococcus/i", resist) then pepto = 1; else pepto = 0;
	if res_org = 0 then pepto = '.';
	if prxmatch("m/A. baumannii/i", resist) then abau = 1; else abau = 0;
	if res_org = 0 then abau = '.';
	if prxmatch("m/C. freundii/i", resist) then cfreu = 1; else cfreu = 0;
	if res_org = 0 then cfreu = '.';
	if prxmatch("m/E. coli/i", resist) then ecoli = 1; else ecoli = 0;
	if res_org = 0 then ecoli = '.';
	if prxmatch("m/E. cloacae/i", resist) then ecloa = 1; else ecloa = 0;
	if res_org = 0 then ecloa = '.';
	if prxmatch("m/Enterobacter sp.|Enterobacter|E. aerogenes|E. intermedius|E. turicensis/i", resist) then ebac = 1; else ebac = 0;
	if res_org = 0 then ebac = '.';
	if prxmatch("m/K. oxytoca/i", resist) then koxy = 1; else koxy = 0;
	if res_org = 0 then koxy = '.';
	if prxmatch("m/K. pneumoniae/i", resist) then kpneu = 1; else kpneu = 0;
	if res_org = 0 then kpneu = '.';
	if prxmatch("m/M. morganii/i", resist) then morgan = 1; else morgan = 0;
	if res_org = 0 then morgan = '.';
	if prxmatch("m/P. mirabilis/i", resist) then mirab = 1; else mirab = 0;
	if res_org = 0 then mirab = '.';
	if prxmatch("m/P. vulgaris/i", resist) then vulgar = 1; else vulgar = 0;
	if res_org = 0 then vulgar = '.';
	if prxmatch("m/P. aeruginosa/i", resist) then aeru = 1; else aeru = 0;
	if res_org = 0 then aeru = '.';
	if prxmatch("m/S. maltophilia/i", resist) then malt = 1; else malt = 0;
	if res_org = 0 then malt = '.';
	if prxmatch("m/E. faecalis/i", resist) then faecalis = 1; else faecalis = 0;
	if res_org = 0 then faecalis = '.';
	if prxmatch("m/E. faecium/i", resist) then faecium = 1; else faecium = 0;
	if res_org = 0 then faecium = '.';
	if prxmatch("m/VRE/i", resist) then VRE = 1; else VRE = 0;
	if res_org = 0 then VRE = '.';
	if (faecalis = 1 AND VRE = 1) then VRE_calis = 1; else VRE_calis = 0;
	if res_org = 0 then VRE_calis = '.';
	if (faecium = 1 AND VRE = 1) then VRE_cium = 1; else VRE_cium = 0;
	if res_org = 0 then VRE_cium = '.'; 
	if prxmatch("m/E. raffinosus|Enterococcus sp./i", resist) then entero = 1; else entero = 0;
	if res_org = 0 then entero = '.';
	if (entero = 1 AND VRE = 1) then VRE_gen = 1; else VRE_gen = 0;
	if res_org = 0 then VRE_gen = '.';
	if VRE_calis = 1 then faecalis = 0;
	if VRE_cium = 1 then faecium = 0;
	if prxmatch("m/S. aureus/i", resist) then aureus = 1; else aureus = 0;
	if res_org = 0 then aureus = '.';
	if prxmatch("m/S. epidermidis|S. haemolyticus|S. intermedius|S. lugdunensis/i", resist) then staph = 1; else staph = 0;
	if res_org = 0 then staph = '.';
	if prxmatch("m/S. pyogenes/i", resist) then pyogenes = 1; else pyogenes = 0;
	if res_org = 0 then pyogenes = '.';
	if prxmatch("m/S. agalactiae/i", resist) then agal = 1; else agal = 0;
	if res_org = 0 then agal = '.';
	if prxmatch("m/S. anginosus|S. pneumoniae|S. viridans|Streptococcus sp./i", resist) then strep = 1; else strep = 0;
	if res_org = 0 then strep = '.';
	if prxmatch("m/C. albicans/i", resist) then albican = 1; else albican = 0;
	if res_org = 0 then albican = '.';
	if prxmatch("m/C. glabrata|Candida sp.|C. parapsilosis|C. tropicalis/i", resist) then candida = 1; else candida = 0;
	if res_org = 0 then candida = '.';
run;

ods html;
proc freq data = co_infx.res_org;
tables b_fragilis bacter clost pepto abau cfreu ecoli ecloa ebac koxy kpneu morgan mirab vulgar aeru 
	   malt faecalis faecium entero VRE_calis VRE_cium VRE_gen aureus staph pyogenes agal strep albican candida;
run;

ods html;
proc ttest data = co_infx.main_2;
class poly_infx;
var los;
run;

proc ttest data = co_infx.main_2;
class res_org;
var los;
run;

proc univariate data = co_infx.main_2 cibasic;
var los;
run;
ods html close;

ods html;
proc univariate data = co_infx.main_2 normal;
class poly_infx;
var bmi;
run;
ods html close;

data diabetes;
	set co_infx.main_2;
	if diabetes = 1;
run;

ods html;
proc freq data = diabetes;
tables poly_infx*diab_com / chisq;
run;
ods html close;

ods html;
proc univariate data = co_infx.main_2 normal;
class poly_infx;
var los;
run;
ods html close;

proc freq data = co_infx.main_2;
tables poly_infx*chr_wnd / chisq;
run;

data co_infx.main_2;
	set co_infx.main_2;
	if faecalis = 1 or faecium = 1 then vre = 1; else vre = 0;
run;

proc freq data = co_infx.main_2;
tables vre*chr_wnd;
run;

*begin cssti;

data organisms;
	set co_infx.organisms;
	keep id_o organism;
	if id_o = . then delete;
run;

proc freq data = organisms;
tables organism;
run;

data organisms;
	set organisms;
	if prxmatch("m/A. faecalis/i", organism) then delete;
	if prxmatch("m/turicensis/i", organism) then delete;
	if prxmatch("m/sordelli/i", organism) then delete;
	if prxmatch("m/coliforms/i", organism) then delete;
	if prxmatch("m/Corynebacterium/i", organism) then delete;
	if prxmatch("m/Eikenella/i", organism) then delete;
	if prxmatch("m/Fusarium/i", organism) then delete;
	if prxmatch("m/Gram Negative/i", organism) then delete;
	if prxmatch("m/Gram Positive/i", organism) then delete;
	if prxmatch("m/influenzae/i", organism) then delete;
	if prxmatch("m/Lactobacillus/i", organism) then delete;
	if prxmatch("m/avium/i", organism) then delete;
	if prxmatch("m/Micrococcus/i", organism) then delete;
	if prxmatch("m/catarrhalis/i", organism) then delete;
	if prxmatch("m/lactose/i", organism) then delete;
	if prxmatch("m/rettgeri/i", organism) then delete;
	if prxmatch("m/prevotella/i", organism) then delete;
	if prxmatch("m/agalactiae/i", organism) then delete;
	if prxmatch("m/marcescens/i", organism) then delete;
	if prxmatch("m/yeast/i", organism) then delete;
	if prxmatch("m/maltophilia/i", organism) then delete;
	if prxmatch("m/fragilis|uniformis/i", organism) then organism = "Bacteroides sp.";
	if prxmatch("m/freundii/i", organism) then organism = "Citrobacter sp.";
	if prxmatch("m/parapsilosis/i", organism) then organism = "Candida sp.";
	if prxmatch("m/tropicalis/i", organism) then organism = "Candida sp.";
	if prxmatch("m/cloacae/i", organism) then organism = "Enterobacter sp.";
	if prxmatch("m/raffinosus|E. avium/i", organism) then organism = "Enterococcus sp.";
	if prxmatch("m/vulgaris/i", organism) then organism = "Proteus sp.";
	if prxmatch("m/viridans|pyogenes|S. pneumoniae|intermedius|anginosus/i", organism) then organism = "Streptococcus sp.";
	if prxmatch("m/aureus|capitis|epidermidis|haemolyticus|lugdunensis/i", organism) then organism = "Staphylococcus sp.";
	if prxmatch("m/rettgeri|stuartii/i", organism) then organism = "Providencia sp.";
run;

data organisms;
	set organisms;
	rename id_o = id;
run;

data organisms;
	set organisms;
	label id = id;
run;

data cssti;
	set co_infx.main_2;
	keep id cssti;
run;

proc sort data = organisms; by id; run;
proc sort data = cssti; by id; run;

data org_cssti;
	merge organisms (in=org) cssti (in=ssti);
	by id;
	if org and ssti;
run;

data org_cssti;
	set org_cssti;
	drop id;
run;

proc corresp data = org_cssti observed short;
title 'cssti';
ods select observed;
tables cssti, organism;
run;

*begin sites;

data sites;
	set co_infx.resist;
	keep id site;
run;

proc sort data = organisms; by id; run;
proc sort data = sites; by id; run;

data org_sites;
	merge organisms (in=org) sites (in=loc);
	by id;
	if org and loc;
run;

data org_sites;
	set org_sites;
	drop id;
run;

proc freq data = org_sites;
table site;
run;

data org_sites;
	set org_sites;
	if prxmatch("m/wall/i",site) then delete;
	if prxmatch("m/bood/i",site) then site = "blood";
	if prxmatch("m/genitalie/i",site) then site = "male genitalia";
	if prxmatch("m/chest|abdomen/i",site) then site = "chest and abdomen";
	if prxmatch("m/groin/i",site) then site = "leg";
	if prxmatch("m/axilla/i",site) then site = "back";
	if prxmatch("m/perirectal/i",site) then delete;
run;

*site by diabetes;

data diabetes;
	set co_infx.main_2;
	keep id diabetes;
	if diabetes = . then delete;
run;

proc sort data = diabetes; by id; run;
proc sort data = sites; by id; run;

data org_sites_diabetes;
	merge diabetes (in=a) sites (in=b);
	by id;
	if a and b;
run;

data org_sites_diabetes;
	set org_sites_diabetes;
	if prxmatch("m/wall/i",site) then delete;
	if prxmatch("m/bood/i",site) then site = "blood";
	if prxmatch("m/genitalie/i",site) then site = "male genitalia";
	if prxmatch("m/chest|abdomen/i",site) then site = "chest and abdomen";
	if prxmatch("m/groin/i",site) then site = "leg";
	if prxmatch("m/axilla/i",site) then site = "back";
	if prxmatch("m/perirectal/i",site) then delete;
run;

data org_site_diab;
	set org_sites_diabetes;
	if diabetes = 1;
run;

data org_site_nodiab;
	set org_sites_diabetes;
	if diabetes = 0;
run;

proc corresp data = org_site_nodiab observed short;
title 'sites by diabetes = 0';
ods select observed;
tables site, organism;
run;

proc corresp data = org_site_diab observed short;
title 'sites by diabetes = 1';
ods select observed;
tables site, organism;
run;

/*************************************************************/

proc freq data = co_infx.organisms;
tables organism;
run;

data test;
	set coinfx.main_fixed;
		row_sum = sum(of b_fragilis--vre);
		poly_infx2 = (row_sum > 0);
		if poly_infx = 1;
	keep infx_org b_fragilis--vre row_sum poly_infx2;
run;
*nrow = 253, ncol = 29;

/*
proc freq data = test;
	table poly_infx2;
run;
*/

data test2;
	set test;
		if poly_infx2 = 0;
	drop row_sum poly_infx2;
run;
* nrow = 57, ncol = 27;

/*
data test2;
	set coinfx.main_plus;
		if infx_org = '' AND resist ne '';
	keep infx_org resist;
run;
* well that's just stupid;

data test;
	set coinfx.main_plus;
		array org{*} $50 org1-org12;
		do i = 1 to 12;
			org(i) = scan(infx_org, i, ",");
		end;
		if infx_org = '' then delete;
		order = _N_;
	keep order org1-org12;
run;
* nrow = 250, ncol = 13;

proc transpose data = test out = long;
	by order;
	var org1-org12;
run;
* nrow = 3000, ncol = 3;

data long2;
	set long;
		if col1 = '' then delete;
		col1 = strip(col1);
	keep col1;
	rename col1 = infx_org;
run;
* nrow = 567, ncol = 1;

proc freq data = long2;
	table infx_org
		  / norow nocol nocum nopercent missing;
run;
*/

* need to fix infectious organisms;
data temp;
	set coinfx.main_plus;
	drop b_fragilis--candida;
run;
* nrow = 688, ncol = 147;

data test;
	set temp;
		if prxmatch("m/a\. baumannii/i", infx_org) then abau = 1;
		if prxmatch("m/a\. faecalis/i", infx_org) then afaecalis = 1;
		if prxmatch("m/a\. turicensis/i", infx_org) then aturi = 1;
		if prxmatch("m/s\. aureus|aureus/i", infx_org) then aureus = 1;
		if prxmatch("m/b\. fragilis/i", infx_org) then b_fragilis = 1;
		if prxmatch("m/bacteroides/i", infx_org) then bacteroid = 1;
		if prxmatch("m/c\. difficile|c\. sordellii/i", infx_org) then clost = 1;
		if prxmatch("m/c\. glabrata|candida sp|parapsilosis|c\. tropicalis/i", infx_org) then candida = 1;
		if prxmatch("m/albicans/i", infx_org) then albicans = 1;
		if prxmatch("m/c\. freundii/i", infx_org) then cfreu = 1;
		if prxmatch("m/cornye|coryne/i", infx_org) then coryne = 1;
		if prxmatch("m/e\. cloacae/i", infx_org) then ecloa = 1;
		if prxmatch("m/e\. coli|e\.coli/i", infx_org) then ecoli = 1;
		if prxmatch("m/e\. faecium/i", infx_org) then faecium = 1;
		if prxmatch("m/e\. faecalis/i", infx_org) then faecalis = 1;
		if prxmatch("m/e\. avium|e\. raffinosus|enterococcus/i", infx_org) then entero = 1;
		if prxmatch("m/e\. aerogenes/i", infx_org) then eaero = 1;
		if prxmatch("m/eikenella/i", infx_org) then eikenella = 1;
		if prxmatch("m/fusarium/i", infx_org) then fusarium = 1;
		if prxmatch("m/s\. agalacatiae|s\. agalactiae/i", infx_org) then sagal = 1;
		if prxmatch("m/s\. pyogenes/i", infx_org) then spyogen = 1;
		if prxmatch("m/s\. viridans/i", infx_org) then sviridan = 1;
		if prxmatch("m/s\. anginosus/i", infx_org) then sangin = 1;
		if prxmatch("m/s\. pnue|s\. intermedius|s\. pneumoniae|g strep|streptococcus non/i", infx_org)
		OR prxmatch("m/streptococcus alpha|streptococcus sp|streptococcus\, non|many streptococcus/i", infx_org)
		OR prxmatch("m/\, streptococcus|non\-hemolytic streptococcus/i", infx_org)
			then strep = 1;
		if prxmatch("m/h\. influenzae/i", infx_org) then hinflu = 1;
		if prxmatch("m/k\. oxytoca/i", infx_org) then koxy = 1;
		if prxmatch("m/k\. pneumonia|k\. pnuemoniae|klebsiella/i", infx_org) then kpneu = 1;
		if prxmatch("m/lactobacillus/i", infx_org) then lactobac = 1;
		if prxmatch("m/m\. catarrhalis/i", infx_org) then mcatarr = 1;
		if prxmatch("m/m\. morganii/i", infx_org) then morgan = 1;
		if prxmatch("m/mrsa/i", infx_org) then aureus = 1;
		if prxmatch("m/micrococcus/i", infx_org) then micro = 1;
		if prxmatch("m/p\. aeruginosa/i", infx_org) then aeru = 1;
		if prxmatch("m/myobacterium avium/i", infx_org) then mavium = 1;
		if prxmatch("m/p\. stuartii|p\. rettgeri/i", infx_org) then providencia = 1;
		if prxmatch("m/p\. mirabilis/i", infx_org) then mirab = 1;
		if prxmatch("m/p\. vulgaris/i", infx_org) then vulgar = 1;
		if prxmatch("m/peptostreptococcus/i", infx_org) then pepto = 1;
		if prxmatch("m/prevotella/i", infx_org) then prevotella = 1;
		if prxmatch("m/proteus/i", infx_org) then proteus = 1;
		if prxmatch("m/staph|s\. capitis|s\. epidermidis|s\. haemolyticus|s\. lugdunensis/i", infx_org) then staph = 1;
		if prxmatch("m/s\. maltophilia/i", infx_org) then malt = 1;
		if prxmatch("m/s\. marcescens/i", infx_org) then serratia = 1;
		if prxmatch("m/yeast/i", infx_org) then yeast = 1;

		if prxmatch("m/coliforms|gram negative bacilli|gram positive bacilli/i", infx_org)
		OR prxmatch("m/non lactose fermenters|alpha\-?hemolytic|beta\-hemolytic/i", infx_org)
		OR prxmatch("m/gram negative cocci|non lactose fermenter/i", infx_org)
		OR prxmatch("m/gram negative non lactose|gram positive coccobacilli|mixed flora/i", infx_org)
		OR prxmatch("m/oxidase positive|oxidase negative|non\-?hemolytic/i", infx_org)
			then unidentified = 1;

		* additional fixes;
		if (poly_infx = 1 AND infx_org = '') then
			do;
				if prxmatch("m/s\. marcescens/i", resist) then serratia = 1;
				if prxmatch("m/p\. aeruginosa/i", resist) then aeru = 1;
				if prxmatch("m/a\. baumannii/i", resist) then abau = 1;
				if prxmatch("m/e\. faecalis/i", resist) then faecalis = 1;
			end;

		array ORGS abau--yeast unidentified;
			do over ORGS;
				if ORGS = . then ORGS = 0;
			end;

		row_sums = sum(of abau--yeast);
		identified = (row_sums > 0);

		if (identified = 0 AND poly_infx = 1) then
			do;
				if prxmatch("m/corynebacterium/i", resist) then coryne = 1;
				if prxmatch("m/psuedomonas|p\. aeruginosa/i", resist) then aeru = 1;
				if prxmatch("m/k\. pnuemoniae/i", resist) then kpneu = 1;
				if prxmatch("m/a\. baumannii/i", resist) then abau = 1;
				if prxmatch("m/citrobacter/i", resist) then citro = 1;
				if prxmatch("m/bacteroid/i", resist) then bacteroid = 1;
			end;

		if citro ne 1 then citro = 0;
		row_sums = sum(of abau--yeast, citro);
		identified = (row_sums > 0);

		strep_any = (strep = 1 OR spyogen = 1 OR sviridan = 1 OR sagal = 1 OR sangin = 1);
		enterococcal = (faecalis = 1 OR faecium = 1 OR entero = 1);

		* quick and dirty fix;
		if id IN (3204 3424) then strep = 0;
run;
* nrow = 688, ncol = 196;

/*
proc freq data = test;
	table poly_infx * identified;
run;

proc contents data = test varnum; run;
*/

data coinfx.main_fixed;
	format id male age eld weight wt_unit height ht_unit bmi obese eth race black white other
		   ins resid ltcf arv_mod adm_hosp adm_dat dis_dat year hosp home ltacf oth_resid

		   cult_loc out_loc inad_loc cult_dat infx_site wound wnd_dat cult_days
		   hba1c hba_dat crp crp_dat creat cre_dat neut neu_dat neutro past_adm surg_yr abx_yr

		   device med_dev diabetes diab_typ dia_meds diab_com amputat amp_dat retino neuro nephro
		   kidney hba_4 renal chr_wnd wnd_site wnd_oth wnd_pre extremity steroid chemothp radiothp
		   post_trn trn_dat mccabe charlson c_score age_score charl_cat trt_dat 
		   ulc ulcer ulc_loc ulc_typ ulc_stg1 ulc_stg2 ulc_stg3 ulc_stg4
		   cssti cssti1 cssti2 cssti3 cssti4 cssti_lev sepsis
		   new_icu new_int new_surg new_proc new_cvc new_uc new_arf new_liv new_endo vaso

		   abx_indx res_sus gram aerobe poly_infx res_org infx_org resist infx_site1 bacter iso_org gram_r aerobe_r

		   abau afaecalis aturi aureus b_fragilis bacteroid clost candida albicans cfreu coryne ecloa ecoli
		   faecium faecalis entero eaero eikenella fusarium strep sagal spyogen sviridan sangin
		   hinflu koxy kpneu lactobac mcatarr morgan micro
		   aeru mavium providencia mirab vulgar pepto prevotella proteus staph malt serratia yeast citro vre
		   unidentified strep_any enterococcal

		   los sym_dat symptoms post_stat dth30_dat dth_caus fail_dth read_30 read_dt chf_com resol_dt
		   overall infx_doc trt_fail fail_dat fail_res1 fail_res2 fail_proc fail_icu fail_org fail_reop
		   fail_infx fail_tot dth_study emia EMDTH switch switch_dat switch_30 soc_dth_dat dth_30;
	set test;
	drop row_sums identified;
run;
* nrow = 688, ncol = 194;

/*
data test;
	set coinfx.main_fixed;
		faecium_faecalis = (faecium = 1 OR faecalis = 1);
run;

proc freq data = test;
	table vre * (faecium_faecalis)
		  / norow nocol nocum missing;
run;

ods html close; ods html;
proc freq data = coinfx.main_fixed;
	table abau--unidentified
		  / norow nocol nocum missing;
run;

data test;
	set coinfx.main_fixed;
		if staph = 1;
	keep infx_org infx_site1;
run;
*/
