Profile Require
---------------

My first public gem ;)

Profile_require is a simple profiling tool that measures time elapsed 
in requires. I need it because our application (TISS at the Vienna
University of Technology) takes ages to boot where much time is 
spent in require. 

There are several ruby patches (both C and ruby) elsewhere that 
speed up the process by about 20-30%, so if you are experiencing
the same problem that patches probably help.

Usage
-----

Profile require is very easy to use: just insert

require 'profile_require'

somewhere near the beginning of your application (for example 
test/test_helper.rb). In addition set the (shell) environment
variable PROFILE_REQUIRE to a non-empty value:

bash$ export PROFILE_REQUIRE=1

Then run your tests, you will see the profile_require measurements
on the console.

To analyze the output, pipe the STDERR output through the
analyze-require-profile.sh shell script that comes with the gem
(if you are using bundle use bundle show profile_require to 
locate the directory where profile_require is located).

The script will print the total time (in seconds) spent in require as 
well as creating a file called profile-require-sorted with the 
sorted output (which in turn can be plotted with gnuplot, for example:

bash$ gnuplot -e 'plot "profile-require-sorted"' -p 

----

Please drop me a note on any issues that you may encounter with
this gem: johannes.thoma@gmx.at
