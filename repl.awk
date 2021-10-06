# no-op; just print every line of the input
print

# print lines after the first one
#NR > 1

# print the first column (like 'cut -f1')
#print $1

# print the first three columns joined by a custom delimiter
# be sure to uncomment *both* lines, and comment out any other examples
#BEGIN { FS = "|" }
#{ print $1, $2, $3 }

# just print chromosome 10 coordinates
#$1 == "chr10"

# just print the sex chromosomes
#$1 ~ /chr[XY]/

# print SNPs in a range of interest on chromosome 8
#$1 == "chr8" && $2 > 11000000 && $2 < 12000000

# convert BED coordinates into UCSC Genome Browser coordinates; see also
# http://genome.ucsc.edu/blog/the-ucsc-genome-browser-coordinate-counting-systems
#print $1 ":" $2 + 1 "-" $3

#DATA
chrX	69009356	69009357	rs911397765
chr1	178100230	178100232	rs142688086
chr2	106962156	106962157	rs554435669
chr4	15619267	15619268	rs555507240
chr5	33057721	33057722	rs889778604
chr6	54521349	54521350	rs138891996
chr8	11371770	11371771	rs1045871018
chr8	33647611	33647612	rs537033502
chr10	66908242	66908243	rs960484820
