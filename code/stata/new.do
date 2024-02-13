use "data/derived/tender_da.dta", clear

keep if strlen(win_country_code) ==2

gen same_country = ( iso_country_code == win_country_code)
tabulate same_country

reg award_value_euro same_country
reg ln_award_value_euro same_country