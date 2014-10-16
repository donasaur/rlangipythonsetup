rlangipythonsetup
=================
In order to run the R interpreter through IPython's notebook app, you will need to have the following installed:<br />
-Python<br />
-R<br />
-IPython + notebook app<br />
<br />
You will also need to install the rpy2 resource package, e.g. through pip:<br />
  pip install rpy2<br />
If you don't have pip installed, get it! It's a very useful command that can be used to install various Python packages<br />
<br />
After that, download the following zip here to a directory of your choice:<br />
  https://github.com/donhmai/rlangipythonsetup/archive/master.zip<br />
<br />
Unzip the files, and cd to that directory via terminal.<br />
<br />
Type:<br />
  sh create_rkernel_profile.sh<br />
to run the shell script that was included as part of the zip file.<br />
<br />
If you don't see rkernel.py in the current directory anymore, that means that the script ran successfully!<br />
<br />
To run the R Interpreter in IPython's notebook app, just type:<br />
  ipython notebook --profile rkernel<br />
<br />
When you create a new notebook, writing a series of R commands, such as:<br />
  X <- c(0,1,2,3,4)<br />
  Y <- c(3,5,4,6,7)<br />
  XYlm = lm(Y~X)<br />
  XYcoef = coef(XYlm)<br />
  print(summary(XYlm))<br />
  par(mfrow=c(2,2))<br />
  plot(XYlm)<br />
should result in the commands getting executed as they would in a standard R interpreter. Congrats!<br />
<br />
Note: to run the regular Python interpreter (and not R) in IPython, instead just run:<br />
  ipython notebook<br />
<br />
This guide was based off Fernando Perez's "hack" to convert a Python interpreter session into a R interpreter session by prepending "%%R" prior to ea. command getting run