Rpath=R.home()
old='\\'
new='/'
Rpath_new=chartr(old,new,Rpath)
Rpath_new
install.packages(pkgs="MASS_7.3-5.zip", repos = NULL)
install.packages(pkgs="xlsReadWrite_1.5.1.zip", repos = NULL)
