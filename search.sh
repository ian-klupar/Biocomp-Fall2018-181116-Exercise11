#Usage: bash script.sh
# run script in directory that has a .fasta file containing all gene sequences of interest,
# the muscle program, the hmmbuild program and the hmmsearch program.

muscle3.8.31_i86linux64 -in alltransport.fasta -out alltransport.align.fasta
hmmbuild transport.hmm alltransport.align.fasta

rm alltransport.align.fasta results.final.txt

for a in [A-Z]*.fasta
do
hmmsearch --tblout "$a".Results.txt transport.hmm $a
echo "$a" >> results.final.txt
cat "$a".Results.txt | grep -c -v "#" >> results.final.txt
done

cat results.final.txt
