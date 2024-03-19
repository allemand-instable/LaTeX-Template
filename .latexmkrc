# ~ LATEX COMMANDS
$latex = 'latex -shell-escape -interaction=nonstopmode';
$pdflatex = 'pdflatex -synctex=15 -shell-escape -interaction=nonstopmode';
$lualatex = 'lualatex --debug-format --shell-escape --synctex=15 --interaction=nonstopmode';
# PROJECT CODE FILES
$do_cd= 1;
$cd_dir="src";
@default_files = ('src/rapport.tex', 'src/documentation.tex', 'src/article.tex', 'src/rapport_article.tex');
# ~ OUTPUT FILES
$pdf_mode=1; # use pdflatex
# $dvi_mode=0; # render dvi
$out_dir = "../out";
# ~ AUXILIARY FILES
$clean_ext = "bbl nav out snm";
@generated_exts = (@generated_exts, 'synctex.gz');
$emulate_aux = 1;
$aux_dir = "../aux_files";
# ~ LOG AND REPORTS
$aux_out_dir_report = 1;
# VIEWER
if ($^O eq 'MSWin32') {
    $pdf_previewer = 'start gsview32';
} elsif ($^O eq 'darwin') {
    $pdf_previewer = 'open -a Skim';
} elsif ($^O eq 'linux') {
    # '${HOME}/bin/evince_synctex.zsh listen code --goto %f:%l'
    $pdf_previewer = "evince";
    $dvi_previewer = 'start xdvi';
}