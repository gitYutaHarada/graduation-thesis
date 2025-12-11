$latex            = 'uplatex -halt-on-error -enable-write18';
$latex_silent     = 'uplatex -halt-on-error -enable-write18 -interaction=batchmode';
$bibtex           = 'upbibtex';
$dvipdf           = 'dvipdfmx %O -o %D %S';
$makeindex        = 'mendex %O -o %D %S';
$max_repeat       = 5;
$do_cd            = 1;  # change to directory of source file
$pdf_mode	      = 3; # generates pdf via dvipdfmx

# Prevent latexmk from removing PDF after typeset.
# This enables Skim to chase the update in PDF automatically.
$pvc_view_file_via_temporary = 0;

# Use Skim as a previewer
$pdf_previewer    = "open -ga /Applications/Skim.app";

# Auto refreshing
$pdf_update_method = 4; # call following command
# $pdf_update_command = "open -a Preview %S;sleep 0.1;hoge.app";
$pdf_update_command = "open -ga /Applications/Skim.app";

