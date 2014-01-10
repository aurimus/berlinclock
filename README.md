berlinclock
===========

Command line Berlin clock (mengenlehreuhr) class implementation.  

-

Supports 24 hours (instead of usual 25). Outputs a mengenlehreuhr string in format:  
X-OOOO-OOOO-OOOOOOOOOOO-OOOO.  

Which means:  
ON/OFF - Hours (5 for each X) - Hours - Minutes (5 for each X) - Minutes  

-

Usage:  

bundle  
ruby mengenlehreuhr.rb (outputs string for current time)  
rspec mengenlehreuhr_spec.rb (runs the tests)  