
*install estout
ssc install estout

*Read data:
insheet using assignment1-research-methods.csv, comma names clear

*Label variables:
label variable eliteschoolcandidate "Elite Alum"
label variable calledback "Callback"

* Run regression: 
reg eliteschoolcandidate calledback

* Store regression:
eststo regression_final 

* Microsoft Output: 
global tableoptions "bf(%15.2gc) sfmt(%15.2gc) se label noisily noeqlines nonumbers varlabels(_cons Constant, end("" ) nolast)  starlevels(* 0.1 ** 0.05 *** 0.01) replace r2"
esttab regression_final using Elite-Regression-Table.rtf
