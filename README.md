# Setting up R interpreter in Notebook<br />
<br />
You will need to have the following installed<br />
- Python<br />
- R<br />
- IPython, and notebook<br />
<br />
Download and install R here:<br />
http://cran.r-project.org/bin<br />
<br />
To obtain Python + IPython + notebook app (if you don't have these already), I recommend the Anaconda Python distribution package here:<br />
http://continuum.io/downloads<br />
<br />
Now, you will also need to install the rpy2 resource package.<br />
<br />
**Mac OS/Linux specific instructions to get rpy2:**<br />
Type the following:<br />
```<br />
pip install rpy2<br />
```<br />
If you don't have pip installed (try typing pip at the terminal to test if you have it installed), get it! It's a very useful command that can be used to install various Python packages<br />
<br />
**Windows specific instructions to get rpy2:**<br />
Go here:<br />
  http://www.lfd.uci.edu/~gohlke/pythonlibs/#rpy2<br />
and download and install the appropriate binary executable for your system (i.e. 32-bit sys: rpy2‑2.x.x.win32‑py2.7.exe; 64-bit sys: rpy2‑2.x.x.win‑amd64‑py2.7.exe)<br />
<br />
**All Users:**<br />
After that, download the following zip here to a directory of your choice:<br />
  https://github.com/donhmai/rlangipythonsetup/archive/master.zip<br />
Unzip the files.<br />
<br />
**Mac OS/Linux specific instructions to set up rkernel.py:**<br />
cd to the directory you unzipped the files via terminal.<br />
Type:<br />
```<br />
  bash setup_rkernel_maclinux.sh<br />
```<br />
<br />
**Windows specific instructions to set up rkernel.py:**<br />
Double-click on setup_rkernel_win.bat. It will prompt you for administrator access privileges. Click yes: these privileges are required to set the R_HOME and R_USER system environment variables that rpy2 needs in order to run properly. After that, follow the instructions as prompted by the command-line that opens up.<br />
<br />
**All Users:**<br />
If you don't see rkernel.py in the current directory anymore, that means that the script ran successfully!<br />
<br />
To run the R Interpreter in IPython's notebook app, just type:<br />
```<br />
  ipython notebook --profile rkernel<br />
```<br />
<br />
When you create a new notebook, writing a series of R commands, such as:<br />
```<br />
  X <- c(0,1,2,3,4)<br />
  Y <- c(3,5,4,6,7)<br />
  XYlm = lm(Y~X)<br />
  XYcoef = coef(XYlm)<br />
  print(summary(XYlm))<br />
  par(mfrow=c(2,2))<br />
  plot(XYlm)<br />
```<br />
should result in the commands getting executed as they would in a standard R interpreter. Congrats!<br />
<br />
Note: to run the regular Python interpreter (and not R) in notebook instead, just run:<br />
```<br />
  ipython notebook<br />
```<br />
<br />
This guide was based off Fernando Perez's "hack" to convert a Python interpreter session into a R interpreter session by prepending "%%R" prior to ea. command getting run<br />
