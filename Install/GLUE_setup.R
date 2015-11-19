#-------------------------------------------------------------------------------
# Obtain R installation directory, and then path to library directory
  R.path.new <- chartr(old='\\', new=.Platform$file.sep, x=R.home());
  R.path.lib <- file.path(R.path.new, 'library', fsep=.Platform$file.sep);
#-------------------------------------------------------------------------------
# MASS package (from GLUE/Install directory)
# install.packages(pkgs="C:/DSSAT45/Tools/GLUE/Install/MASS_7.3-5.zip",
  install.packages(pkgs="MASS_7.3-5.zip",
      lib=R.path.lib, repos=NULL);

# xlsReadWrite package (from GLUE/Install directory)
# install.packages(pkgs="C:/DSSAT45/Tools/GLUE/Install/xlsReadWrite_1.5.1.zip",
  install.packages(pkgs="xlsReadWrite_1.5.1.zip",
      lib=R.path.lib, repos=NULL);
  
