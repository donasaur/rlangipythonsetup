# Setting up R interpreter in Notebook

<p>
You will need to have the following installed<br />
- Python<br />
- R<br />
- IPython, and notebook<br />
</p>

<p>
Download and install R here:<br />
http://cran.r-project.org/bin
</p>

<p>
To obtain Python + IPython + notebook app (if you don't have these already), I recommend the Anaconda Python distribution package here:<br />
http://continuum.io/downloads
</p>

<p>
Now, you will also need to install the rpy2 resource package.
</p>

<p>
**Mac OS/Linux specific instructions to get rpy2:**<br />
Type the following:
```
pip install rpy2
```
If you don't have pip installed (try typing pip at the terminal to test if you have it installed), get it! It's a very useful command that can be used to install various Python packages
</p>

<p>
**Windows specific instructions to get rpy2:**<br />
Go here:<br />
  http://www.lfd.uci.edu/~gohlke/pythonlibs/#rpy2<br />
and download and install the appropriate binary executable for your system (i.e. 32-bit sys: rpy2‑2.x.x.win32‑py2.7.exe; 64-bit sys: rpy2‑2.x.x.win‑amd64‑py2.7.exe)
</p>

<p>
**All Users:**<br />
After that, download the following zip here to a directory of your choice:<br />
  https://github.com/donhmai/rlangipythonsetup/archive/master.zip<br />
Unzip the files.
</p>

<p>
**Mac OS/Linux specific instructions to set up rkernel.py:**<br />
cd to the directory you unzipped the files via terminal.<br />
Type:<br />
```
  bash setup_rkernel_maclinux.sh
```
</p>

<p>
**Windows specific instructions to set up rkernel.py:**<br />
Double-click on setup_rkernel_win.bat. It will prompt you for administrator access privileges. Click yes: these privileges are required to set the R_HOME and R_USER system environment variables that rpy2 needs in order to run properly. After that, follow the instructions as prompted by the command-line that opens up.
</p>

<p>
**All Users:**<br />
If you don't see rkernel.py in the current directory anymore, that means that the script ran successfully!<br />
<br />
To run the R Interpreter in IPython's notebook app, just type:<br />
```
  ipython notebook --profile rkernel
```
</p>

<p>
When you create a new notebook, writing a series of R commands, such as:
```
  X <- c(0,1,2,3,4)
  Y <- c(3,5,4,6,7)
  XYlm = lm(Y~X)
  XYcoef = coef(XYlm)
  print(summary(XYlm))
  par(mfrow=c(2,2))
  plot(XYlm)
```
should result in the commands getting executed as they would in a standard R interpreter. Congrats!
</p>

<p>
Note: to run the regular Python interpreter (and not R) in notebook instead, just run:
```
  ipython notebook
```
</p>

<p>
This guide was based off Fernando Perez's "hack" to convert a Python interpreter session into a R interpreter session by prepending "%%R" prior to ea. command getting run
</p>
