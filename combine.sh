
#run this script in a folder that has sporecoat (and transporter) fasta files. It will combine them all into one file
# and then run the single file through muscle. For transporter files just change sporecoat* to transport*

for a in sporecoat*
do
(cat "${a}"; echo) >> allspore.fasta
done

muscle3.8.31_i86linux64 -in allspore.fasta -out allspore.afa

