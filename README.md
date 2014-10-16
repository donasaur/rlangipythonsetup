rlangipythonsetup
=================
In order to run the R interpreter through IPython's notebook app, you will need to have the following installed:
-Python
-R
-IPython + notebook app

You will also need to install the rpy2 resource package, e.g. through pip:
  pip install rpy2
If you don't have pip installed, get it! It's a very useful command that can be used to install various Python packages

After that, download the following zip here to a directory of your choice:
  https://github.com/donhmai/rlangipythonsetup/archive/master.zip

Unzip the files, and cd to that directory via terminal.

Type:
  sh create_rkernel_profile.sh
to run the shell script that was included as part of the zip file.

If you don't see rkernel.py in the current directory anymore, that means that the script ran successfully!

To run the R Interpreter in IPython's notebook app, just type:
  ipython notebook --profile rkernel

When you create a new notebook, writing a series of R commands, such as:
  X <- c(0,1,2,3,4)
  Y <- c(3,5,4,6,7)
  XYlm = lm(Y~X)
  XYcoef = coef(XYlm)
  print(summary(XYlm))
  par(mfrow=c(2,2))
  plot(XYlm)
should result in the commands getting executed as they would in a standard R interpreter. Congrats!

Note: to run the regular Python interpreter (and not R) in IPython, instead just run:
  ipython notebook

This guide was based off Fernando Perez's "hack" to convert a Python interpreter session into a R interpreter session by prepending "%%R" prior to ea. command getting run