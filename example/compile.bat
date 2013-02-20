set jobname=thesis
@echo off
call clean.bat
del %jobname%.pdf
if exist %jobname%.pdf (
echo ��رմ򿪵�%jobname%.pdf������ִ�С�
pause
exit
) 
pdflatex .\%jobname%.tex
makeindex -s %jobname%.ist -t %jobname%.glg -o %jobname%.gls %jobname%.glo
bibtex .\%jobname%.aux
bibtex .\publications.aux
pdflatex .\%jobname%.tex
pdflatex .\%jobname%.tex
call clean.bat