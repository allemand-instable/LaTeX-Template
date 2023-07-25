$latex = 'latex -interaction=nonstopmode -shell-escape';
$pdflatex = 'pdflatex -synctex=1 -shell-escape -interaction=nonstopmode';
$clean_ext = "bbl nav out snm synctex(busy)";
# note : synctex is not supported for external viewers, but can still be used viewing the pdf inside vscode

$pdf_previewer = 'open -a Skim';
@generated_exts = (@generated_exts, 'synctex.gz');
# WINDOWS
# $pdf_previewer = 'start gsview32';

@default_files = ('rapport.tex');