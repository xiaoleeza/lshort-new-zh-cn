jobname=lshort-zh-cn
./clean.sh
rm $jobname.pdf
xelatex ./$jobname.tex
makeindex -s $jobname.ist -t $jobname.glg -o $jobname.gls $jobname.glo
bibtex ./$jobname.aux
xelatex ./$jobname.tex
makeindex -s $jobname.ist -t $jobname.glg -o $jobname.gls $jobname.glo
xelatex ./$jobname.tex
./clean.sh
clear
echo ****************************************************************************
echo 正式编译前应该访问 https://github.com/louisstuart96/lshort-new-zh-cn 检查模板是否有更新！
echo ****************************************************************************
