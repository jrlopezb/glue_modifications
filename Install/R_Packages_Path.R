# Obtain R installation directory, and then bin directory for executable Rterm
R.path.new <- chartr(old='\\', new=.Platform$file.sep, x=R.home());
R.path.new <- file.path(R.path.new, 'bin', 'Rterm', fsep=.Platform$file.sep);
#-------------------------------------------------------------------------------
# Get GLUE batch file name and create its full path
bat.path.file <- file.path('C:', 'DSSAT45', 'Tools', 'GLUE', 'GLUE.BAT',
    fsep=.Platform$file.sep);
#-------------------------------------------------------------------------------
# Read default GLUE batch file which has one line ONLY, but after this line
# Enter key has to be pressed
batch.line <- read.table(bat.path.file, header=FALSE, as.is=TRUE, sep='');
names(batch.line) <- c('R.path', 'Rterm.option', 'pipe', 'GLUE.path');
#-------------------------------------------------------------------------------
# Obtain new one-line-ONLY content or R command for GLUE batch file
batch.line$R.path <- R.path.new;
batch.line$GLUE.path <- gsub(pattern='\\\\', replacement=.Platform$file.sep,
    x=batch.line$GLUE.path, fixed=TRUE);
#-------------------------------------------------------------------------------
# Write new one-line-ONLY content to GLUE.BAT file; older one will be removed
batch.line.new <- paste(batch.line[1,], collapse=" ");
write(batch.line.new, file=bat.path.file, append=FALSE, sep=' ');

#$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$

# Some messages for users or Windows Dialog Box, which are limited to 255 chars
# in Total (by Windows, checked by R)
message.str <- paste('If you want to install required R packages LOCALLY,',
    'click on Yes BUTTON.\n', 'If your computer is ready to connect to',
    'Internet as well as if you want to\n', 'install them REMOTELY, click on ',
    'No BUTTON.\n', "If DON'T want to install them now, click on",
    "Cancel BUTTON.", sep=' ');
# Open a Windows Dialog Box with messages, and get its returned value
response.user <- winDialog(type=c("yesnocancel"), message=message.str);
#-------------------------------------------------------------------------------
# Obtain new R installation directory, and then path to library directory
R.path.new <- chartr(old='\\', new=.Platform$file.sep, x=R.home());
R.path.lib <- file.path(R.path.new, 'library', fsep=.Platform$file.sep);
#-------------------------------------------------------------------------------
if (response.user=='YES') { # Intsall packages locally

  install.packages(pkgs="C:/DSSAT45/Tools/GLUE/Install/MASS_7.3-5.zip",
      lib=R.path.lib, repos=NULL);
  install.packages(pkgs="C:/DSSAT45/Tools/GLUE/Install/xlsReadWrite_1.5.1.zip",
      lib=R.path.lib, repos=NULL);
  
} else if (response.user=='NO') { # Intsall packages remotely

  install.packages(pkgs="MASS", lib=R.path.lib, repos=getOption("repos"));
  install.packages(pkgs="xlsReadWrite", lib=R.path.lib,
      repos=getOption("repos"));
      
} else if (response.user=='CANCEL') { # Do not install packages; show messages

  cat('\n', 'You do not install required R packages this time!!!', '\n\n');
}
