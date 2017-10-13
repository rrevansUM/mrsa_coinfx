**********************************************************************************************************************************
| Coding file for "Epidemiology of Polymicrobial Infections in Methicillin Resistant Staphylococcus aureus-Associated cSSTIs"    |
*********************************************************************************************************************************;



*renaming drugs;

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

proc sort data = co_infx.past_and_indx; by id; run;

data co_infx.past_and_indx;
	set co_infx.past_and_indx;
	if abx_nam = "Linezolid" then lzd = 1;
	if abx_nam ne "Linezolid" then lzd = 0;
run;

proc sort data = co_infx.past_and_indx; by id; run;
proc sort data = co_infx.main; by id; run;

data work.trtment;
	merge co_infx.main (in = main) co_infx.past_and_indx (in = abx);
	by id;
	if main AND abx;
run;

data treatment_split;
	do until (last.id);
		set work.trtment;
		by id;
		if lzd = 1 then lzd_group = 1;
	end;
	lzd_group = coalesce(lzd_group, 0);
	keep id lzd_group;
run;

data work.lzd_group;
	set treatment_split;
	where lzd_group = 1;
run;

data work.control_group;
	set treatment_split;
	where lzd_group ne 1;
run;

proc sort data = work.lzd_group; by id; run;
proc sort data = work.trtment; by id; run;

data co_infx.lzd_group;
	merge work.lzd_group (in=inlzd) work.trtment (in=intrt);
	by id;
	if inlzd AND intrt;
run;

proc sort data = work.control_group; by id; run;
proc sort data = work.trtment; by id; run;

data co_infx.control_group;
	merge work.control_group (in=incontrol) work.trtment (in=intrtment);
	by id;
	if incontrol AND intrtment;
run;

proc sort data = work.lzd_group; by id; run;
proc sort data = co_infx.main; by id; run;

data co_infx.lzd_clin;
	merge work.lzd_group (in=inlzd) co_infx.main (in=inmain);
	by id;
	if inlzd and inmain;
run;

proc sort data = work.control_group; by id; run;
proc sort data = co_infx.main; by id; run;

data co_infx.control_clin;
	merge work.control_group (in=control) co_infx.main (in=main);
	by id;
	if control AND main;
run;

data co_infx.all_clin_data;
	set co_infx.control_clin
		co_infx.lzd_clin;
run;

ods rtf;
proc freq data = co_infx.all_clin_data;
tables infx_org;
run;

proc freq data = co_infx.all_clin_data;
tables resist;
run;
ods rtf close;

ods rtf;
proc freq data = co_infx.all_clin_data;
tables poly_infx*lzd_group / chisq expected;
title 'presence of other microbes in MRSA culture';
run;

proc freq data = co_infx.all_clin_data;
tables res_org*lzd_group / chisq expected;
title 'presence of resistant microbes discovered in MRSA culture';
run;
ods rtf close;

ods rtf;
proc freq data = co_infx.all_clin_data;
tables infx_org;
title 'all microbes cultured along w/MRSA';
run;
ods rtf close;

*/making variables for tables*/;

data co_infx.all_clin_data;
	set co_infx.all_clin_data;
	drop site;
run;

proc sort data = co_infx.all_clin_data; by id; run;
proc sort data = co_infx.resist; by id; run;

data co_infx.all_clin_data;
	merge co_infx.all_clin_data co_infx.resist;
	by id;
run;

data co_infx.all_clin_data;
	set co_infx.all_clin_data;
	if charlson = 'score : 1, age-related score: 2, 10yr: 90%' then charlson = "score: 1, age-related score: 2, 10yr: 90%";
run;

data co_infx.all_clin_data;
	set co_infx.all_clin_data;
	if age > 65 then eld=1;
	if ulc_loc ne ' ' then ulc = 1;
	score = substr(charlson, 7, 2);
	if wt_unit = 'lb' then weight = weight*0.453592;
	if prxmatch("m/leg|knee|ankle|foot|lle|heel|hand|toe|hallux|tibia|malleolus|arm|feet|finger|wrist|elbow|forearm|extremity|le/i", infx_site) then extremity = 1;
	if prxmatch("m/leg|knee|ankle|foot|lle|heel|hand|toe|hallux|tibia|malleolus|arm|feet|finger|wrist|elbow|forearm|fingers|extremity|le/i", site) then extremity = 1;
	if prxmatch("m/leg|knee|ankle|foot|lle|heel|hand|toe|hallux|tibia|malleolus|arm|feet|finger|wrist|elbow|forearm|extremity|le|calf/i", infx_site1) then extremity = 1;
	if extremity = '.' then extremity = 0;
	if eld = '.' then eld = 0;
	if ulc = '.' then ulc = 0;
	if male = '.' then delete;
run;

ods html;
proc freq data = co_infx.all_clin_data;
tables score;
run;
ods html close;

data co_infx.all_clin_data;
	set co_infx.all_clin_data;
	c_score = input(score, best12.);
	drop score;
run;

data lzd_9_3.death_dmc;
	set lzd_9_3.death_dmc;
	keep study_id dth_study dth_dat;
run;

data lzd_9_3.death_hfh;
	set lzd_9_3.death_hfh;
	keep study_id dth_study dth_dat
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


data co_infx.all_clin_data;
	set co_infx.all_clin_data;
	los = dis_dat - adm_dat;
	if trt_fail = 1 and fail_res1 = 1 then abx_chng = 1;
	if trt_fail = 1 and fail_res1 ne 1 then abx_chng = 0;
	if dth30_dat ne '.' then dth_study = 1;
	if fail_dth = 1 then dth_study = 1;
run;

***///Begin Characteristics Analysis//***;

ods rtf;
proc univariate data = co_infx.all_clin_data;
class poly_infx;
var age;
title 'univariate stats on age between single and multiple organism infection';
run;

proc ttest data = co_infx.all_clin_data;
class poly_infx;
var age;
title 't-test on age between single and multiple organism infection';
run;

proc ttest data = co_infx.all_clin_data;
class poly_infx;
var weight;
title 't-test of weight between single and multiple organism infections';
run;

proc freq data = co_infx.all_clin_data;
tables poly_infx*eld / chisq expected;
title 'chi-sq on elderly status between single and multiple organism infections';
run;

proc freq data = co_infx.all_clin_data;
tables poly_infx*male / chisq expected;
title 'chi-sq on gender between single and multiple organism infections';
run;

proc freq data = co_infx.all_clin_data;
tables poly_infx*race / chisq expected;
title 'contingency analysis on race';
run;

proc freq data = co_infx.all_clin_data;
tables poly_infx*obese / chisq expected;
title 'contingency analysis on obesity condition';
run;

proc freq data = co_infx.all_clin_data;
tables poly_infx*resid / chisq expected;
title 'contingency analysis on residence prior to hospitalization';
run;

proc freq data = co_infx.all_clin_data;
tables poly_infx*diabetes / chisq expected;
title 'contingency analysis on diabetes condition';
run;

proc freq data = co_infx.all_clin_data;
tables poly_infx*ulc / chisq expected;
title 'contingency analysis on presence of ulcers';
run;

proc freq data = co_infx.all_clin_data;
tables poly_infx*chr_wnd / chisq expected;
title 'contingency analysis on history of chronic skin wounds';
run;

proc freq data = co_infx.all_clin_data;
tables poly_infx*extremity / chisq expected;
title 'location of cSSTI: extremity vs. other';
run;

proc freq data = co_infx.all_clin_data;
tables poly_infx*cssti / chisq expected;
title 'contingency analysis of cSSTI classes between single and multiple organism infections';
run;
ods rtf close;

data co_infx.all_clin_data;
	set co_infx.all_clin_data;
	if race = 4 then black = 1;
	if race = 5 then black = 0;
	if race = '.' then black = 3;
run;

ods html;
proc freq data = co_infx.all_clin_data;
tables poly_infx*black / chisq expected;
run;
ods html close;

ods html;
proc npar1way data = co_infx.all_clin_data wilcoxon;
class poly_infx;
var c_score;
run;
ods html close;

ods html;
proc univariate data = co_infx.all_clin_data;
class poly_infx;
var c_score;
run;
ods html close;

***///end characteristics analysis///***;

data co_infx.all_clin_data;
	set co_infx.all_clin_data;
	if id = 6587 then los = 10;
	if id = 6623 then los = 8;
run;

data co_infx.all_clin_data;
	set co_infx.all_clin_data;
	if dth30_dat ne '.' then dth30 = 1;
	if dth30_dat = '.' then dth30 = 0;
run;

data co_infx.all_clin_data;
	set co_infx.all_clin_data;
	if read_30 = 2 then read_30 = 1;
run;

***///start outcomes_R///***;

ods rtf;
proc univariate data = co_infx.all_clin_data;
class res_org;
var los;
title 'univariate statistics on LOS between MRSA only and multiple resistant organism cultures';
run;

proc npar1way data = co_infx.all_clin_data wilcoxon;
class res_org;
var los;
title 'Mann-Whitney U-test on LOS between MRSA only and multiple resistant organism cultures';
run;

proc freq data = co_infx.all_clin_data;
tables res_org*new_icu / chisq expected;
title 'contingency analysis on New ICU Transfer from 48hr prior (to culture date) to 7 days post culture date';
run;

proc freq data = co_infx.all_clin_data;
tables res_org*new_int / chisq expected;
title 'contingency analysis on New Intubation from 48hr prior (to culture date) to 7 days post culture';
run;

proc freq data = co_infx.all_clin_data;
tables res_org*new_surg / chisq expected;
title 'contingency analysis on new surgery 48hr prior (to culture date) to 14 days post culture date';
run;

proc freq data = co_infx.all_clin_data;
tables res_org*new_cvc / chisq expected;
title 'contingency analysis on new CVC 48 hr prior to (culture date) to 7 days post culture';
run;

proc freq data = co_infx.all_clin_data;
tables res_org*new_uc / chisq expected;
title 'contingency analysis on new Urinary Catheter 48 hr prior to (culture date) to 7 days post culture';
run;

proc freq data = co_infx.all_clin_data;
tables res_org*new_arf / chisq expected;
title 'contingency analysis on new Acute Renal Failure 48 hr prior to (culture date) to 7 days post culture';
run;

proc freq data = co_infx.all_clin_data;
tables res_org*new_liv / chisq expected;
title 'contingency analysis on new Acute Liver Injury 48 hr prior to (culture date) to 7 days post culture';
run;

proc freq data = co_infx.all_clin_data;
tables res_org*new_endo / chisq expected;
title 'contingency analysis on new Endocarditis 48 hr prior to (culture date) to 7 days post culture';
run;

proc freq data = co_infx.all_clin_data;
tables res_org*vaso / chisq expected;
title 'contingency analysis on new Vasopressor usage 48 hr prior to (culture date) to 7 days post culture';
run;

proc freq data = co_infx.all_clin_data;
tables res_org*trt_fail / chisq expected;
title 'contingency analysis on Documentation of Treatment Failure between MRSA only and multiple resistant organism cultures';
run;

proc freq data = co_infx.all_clin_data;
tables res_org*abx_chng / chisq expected;
title 'contingency analysis on Change of ABX as a result of treatment failure between MRSA only and multiple resistant organism cultures';
run;

proc freq data = co_infx.all_clin_data;
tables res_org*fail_icu / chisq expected;
title 'contingency analysis on ICU transfer a result of Treatment Failure between MRSA only and multiple resistant organism cultures';
run;

proc freq data = co_infx.all_clin_data;
tables res_org*fail_org / chisq expected;
title 'contingency analysis on Need for Organ Support as a result of treatment failure between MRSA only and multiple resistant organism cultures';
run;

proc freq data = co_infx.all_clin_data;
tables res_org*fail_reop / chisq expected;
title 'contingency analysis on Need for Re-operation as a result of Treatment Failure between MRSA only and multiple resistant organism cultures';
run;

proc freq data = co_infx.all_clin_data;
tables res_org*fail_infx / chisq expected;
title 'contingency analysis on Evidence of Infection Greater Than 4 days during therapy between MRSA only and multiple resistant organism cultures';
run;

proc univariate normal data = co_infx.all_clin_data;
class res_org;
var fail_tot;
histogram fail_tot/normal;
title 'number of additional failures comparison between single and multiple resistant organism cultures';
run;

proc npar1way data = co_infx.all_clin_data wilcoxon;
class res_org;
var fail_tot;
title 'number of additional failures comparison between single and multiple resistant organism cultures';
run;

proc freq data = co_infx.all_clin_data;
tables res_org*read_30 / chisq expected;
title 'contingency analysis on Thirty-day Readmission between single and multiple resistant organism cultures';
run;

proc freq data = co_infx.all_clin_data;
tables res_org*dth_study / chisq expected;
title 'contingency analysis on All-Cause Mortality between single and multiple resistant organism cultures';
run;

proc freq data = co_infx.all_clin_data;
tables res_org*fail_dth / chisq expected;
title 'contingency analysis between single and multiple resistant organism cultures regarding Death due to Infection';
run;

proc freq data = co_infx.all_clin_data;
tables res_org*dth30 / chisq expected;
title 'contingency analysis on Death within 30 days of Discharge between single and multiple resistant organism cultures';
run;
ods rtf close;

***///start outcomes_p///***;

ods rtf;
proc univariate data = co_infx.all_clin_data;
class poly_infx;
var los;
title 'univariate statistics on LOS between single and multiple infection MRSA positive patients';
run;

proc npar1way data = co_infx.all_clin_data wilcoxon;
class poly_infx;
var los;
title 'Mann-Whitney U-test on LOS between single and multiple infection MRSA positive patients ';
run;

proc freq data = co_infx.all_clin_data;
tables poly_infx*new_icu / chisq expected;
title 'contingency analysis on New ICU Transfer from 48hr prior (to culture date) to 7 days post culture date';
run;

proc freq data = co_infx.all_clin_data;
tables poly_infx*new_int / chisq expected;
title 'contingency analysis on New Intubation from 48hr prior (to culture date) to 7 days post culture';
run;

proc freq data = co_infx.all_clin_data;
tables poly_infx*new_surg / chisq expected;
title 'contingency analysis on new surgery 48hr prior (to culture date) to 14 days post culture date';
run;

proc freq data = co_infx.all_clin_data;
tables poly_infx*new_cvc / chisq expected;
title 'contingency analysis on new CVC 48 hr prior to (culture date) to 7 days post culture';
run;

proc freq data = co_infx.all_clin_data;
tables poly_infx*new_uc / chisq expected;
title 'contingency analysis on new Urinary Catheter 48 hr prior to (culture date) to 7 days post culture';
run;

proc freq data = co_infx.all_clin_data;
tables poly_infx*new_arf / chisq expected;
title 'contingency analysis on new Acute Renal Failure 48 hr prior to (culture date) to 7 days post culture';
run;

proc freq data = co_infx.all_clin_data;
tables poly_infx*new_liv / chisq expected;
title 'contingency analysis on new Acute Liver Injury 48 hr prior to (culture date) to 7 days post culture';
run;

proc freq data = co_infx.all_clin_data;
tables poly_infx*new_endo / chisq expected;
title 'contingency analysis on new Endocarditis 48 hr prior to (culture date) to 7 days post culture';
run;

proc freq data = co_infx.all_clin_data;
tables poly_infx*vaso / chisq expected;
title 'contingency analysis on new Vasopressor usage 48 hr prior to (culture date) to 7 days post culture';
run;

proc freq data = co_infx.all_clin_data;
tables poly_infx*trt_fail / chisq expected;
title 'contingency analysis on Documentation of Treatment Failure between single and multiply infected MRSA patients';
run;

proc freq data = co_infx.all_clin_data;
tables poly_infx*abx_chng / chisq expected;
title 'contingency analysis on Change of ABX as a result of treatment failure between single and multiply infected MRSA patients';
run;

proc freq data = co_infx.all_clin_data;
tables poly_infx*fail_icu / chisq expected;
title 'contingency analysis on ICU transfer a result of Treatment Failure between single and multiply infected MRSA patients';
run;

proc freq data = co_infx.all_clin_data;
tables poly_infx*fail_org / chisq expected;
title 'contingency analysis on Need for Organ Support as a result of treatment failure between single and mutliply infected MRSA patients';
run;

proc freq data = co_infx.all_clin_data;
tables poly_infx*fail_reop / chisq expected;
title 'contingency analysis on Need for Re-operation as a result of Treatment Failure between single and multiply infected MRSA patients';
run;

proc freq data = co_infx.all_clin_data;
tables poly_infx*fail_infx / chisq expected;
title 'contingency analysis on Evidence of Infection Greater Than 4 days during therapy between single and multiply infected MRSA patients';
run;

proc univariate normal data = co_infx.all_clin_data;
class poly_infx;
var fail_tot;
histogram fail_tot/normal;
title 'number of additional failures comparison between single and multiple resistant organism cultures';
run;

proc npar1way data = co_infx.all_clin_data wilcoxon;
class poly_infx;
var fail_tot;
title 'number of additional failures comparison between single and multiply infected MRSA positive patients';
run;

proc freq data = co_infx.all_clin_data;
tables poly_infx*read_30 / chisq expected;
title 'contingency analysis on Thirty-day Readmission between single and multiply infected MRSA positive patients';
run;

proc freq data = co_infx.all_clin_data;
tables poly_infx*dth_study / chisq expected;
title 'contingency analysis on All-Cause Mortality between single and multiply infected MRSA positive patients';
run;

proc freq data = co_infx.all_clin_data;
tables poly_infx*fail_dth / chisq expected;
title 'contingency analysis between single and multiply infected MRSA positive patients regarding Death due to Infection';
run;

proc freq data = co_infx.all_clin_data;
tables poly_infx*dth30 / chisq expected;
title 'contingency analysis on Death within 30 days of Discharge between single and multiply infected MRSA positive patients';
run;
ods rtf close;

***///start characteristics_R///****;

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

ods html;
ods graphics on;
proc univariate data = co_infx.all_clin_data normal;
class res_org;
var c_score;
histogram;
run;
ods graphics off;
ods html close;

ods html;
proc npar1way data = co_infx.all_clin_data wilcoxon;
class res_org;
var c_score;
run;
ods html close;

ods html;
proc freq data = co_infx.all_clin_data;
tables poly_infx*lzd_group res_org*lzd_group / chisq expected;
run;
ods html close;

data organisms;
	set co_infx.all_clin_data;
	keep infx_org;
run;

data work.hfh;
	set co_infx.all_clin_data;
	if adm_hosp = 'HFH';
run;

ods html;
proc freq data = work.hfh;
tables male*race;
run;
ods html close;

ods html;
proc freq data = work.hfh;
tables male*eth;
run;
ods html close;

ods html;
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
ods html close;

ods html;
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

ods html;
proc gchart data = co_infx.poly_org;
hbar organism / discrete;
title 'all organisms detected';
run;
ods html close;

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

ods html;
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

proc npar1way data = co_infx.all_clin_data wilcoxon;
class poly_infx;
var cult_days;
run;

proc npar1way data = co_infx.all_clin_data wilcoxon;
class res_org;
var cult_days;
run;
ods html close;

data co_infx.all_clin_data;
set co_infx.all_clin_data;
if adm_hosp = "HUH" then hosp = 'DMC';
if adm_hosp = "SGH" then hosp = 'DMC';
if adm_hosp = "HVH" then hosp = 'DMC';
if adm_hosp = "DRH" then hosp = 'DMC';
if adm_hosp = "HFH" then hosp = 'HFH';
year = year(cult_dat);
run;

ods rtf;
proc freq data = co_infx.all_clin_data;
tables lzd_group*hosp*year;
title 'lzd_group=1 <-linezolid patient, lzd_group=0 <-control patient';
run;
ods rtf close;

data co_infx.all_clin_data;
	set co_infx.all_clin_data;
	if cssti = 1 then
		do;
			cssti1=1;
		end;
	else
		do;
			cssti1=0;
		end;
	if cssti = 2 then
		do;
			cssti2=1;
		end;
	else
		do;
			cssti2=0;
		end;
	if cssti = 3 then
		do;
			cssti3=1;
		end;
	else
		do;
			cssti3=0;
		end;
	if cssti = 4 then
		do;
			cssti4=1;
		end;
	else
		do;
			cssti4=0;
		end;
run;

ods rtf;
proc freq data = co_infx.all_clin_data;
tables poly_infx*cssti1 poly_infx*cssti2 poly_infx*cssti3 poly_infx*cssti4 / chisq expected;
run;
ods rtf close;

ods html;
proc gchart data = co_infx.all_clin_data;
pie cssti;
run;
ods html close;

ods html;
proc univariate data = co_infx.all_clin_data;
class poly_infx;
var c_score;
run;

proc npar1way data = co_infx.all_clin_data wilcoxon;
class poly_infx;
var c_score;
run;
ods html close;

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
ods rtf close;

ods html;
proc gchart data = co_infx.poly_org;
vbar important / discrete;
title 'distribution of co-infection organisms cultured from SSTIs positive for MRSA';
run;
ods html close;

PROC IMPORT OUT= CO_INFX.ORG_r 
            DATAFILE= "C:\Users\Emily Martin\Desktop\co_infx\organisms.x
ls" 
            DBMS=EXCEL REPLACE;
     RANGE="resist$"; 
     GETNAMES=YES;
     MIXED=NO;
     SCANTEXT=YES;
     USEDATE=YES;
     SCANTIME=NO;
RUN;
