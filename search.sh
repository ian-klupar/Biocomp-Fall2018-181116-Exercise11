#build an alignment profile using muscle (muscle -in <inputfile> -out <outputfile>) and
# then hmmbuild (hmmbuild <output hmm file> <seq alignment from above>).
# Next, run it through this loop to search each .fasta file for matches.

for a in *.fasta
do
hmmsearch -A results.txt alltransport.hmm $a >> results.txt
done

