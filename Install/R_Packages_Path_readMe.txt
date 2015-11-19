Below is some information for GLUE install files:

GLUE install must have:
(1) A one-line default GLUE.BAT file for users. Note: After this line,
    an Enter Key has to be pressed. Spaces are used to delimit parts
    of the batch command, so the paths can NOT contain spaces.

(2) The R_Packages_Path.R file can be stored anywhere, but Suggest storing it
    in the location of C:/DSSAT45/Tools/GLUE/Install

(3) R packages: MASS_7.3-5.zip and xlsReadWrite_1.5.1.zip on GLUE/Install 
    directory.


USERS:
(1) Open R (Start -> Programs -> R  or double click on the desktop icon for R).  

(2) Copy and paste the following line into the R Console and hit Enter:
    
    source("C:/DSSAT45/Tools/GLUE/Install/R_Packages_Path.R")

(3) A Question Dialog Box will prompt you to make a choice:
      (i) Install the packages locally; 
     (ii) Install the packages remotely; or
    (iii) Do not install the packages

    Most users will want option (i) install locally, with the packages installed 
    with DSSAT.

################################################################################
If you choose to cancel or install the required R Package locally, please ignore
the steps below. If choosing to install the packages locally, just wait and the
packages will be installed very quickly. However, if you choose to install them
remotely, your computer has to be ready to connect to Internet and please
continue to follow the steps below.
################################################################################
    
(4)  A CRAN mirror dop-down list box will be prompted to you immediately.
    
(5) Move the mouse to the slide-bar on the right-side of the list box. Press
    and hold the right button of the mouse and slide down to the bottom.

(6) Select any CRAN mirror for USA. (Note: Other mirrors are also OK. Which one
    is better depends on where you are.) Finally, click on Ok Button and
    wait for installing the packages remotely.
