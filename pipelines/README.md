# WHdenovo
A fast and accurate diploid assembly pipeline for human genomes.

### Environment Setup
```
./INSTALLATION.sh
```

### Run
```
usage: pipeline.py [-h] --hic-path PATH --pb-path PATH --scaffolds FASTA
                   [--ragoo] [--reference FASTA] --sample NAME [--female]
                   --prefix STR

optional arguments:
  -h, --help         show this help message and exit
  --hic-path PATH    Use Hi-C data from this path. Should be named by *1.fastq
                     and *2.fastq.
  --pb-path PATH     Use PacBioCCS data from this path. All fastq will be
                     used.
  --scaffolds FASTA  The input reference scaffolds
  --ragoo            If specified, will use RaGOO to perform scaffolding on
                     the input scaffolds. This will require another reference
                     as input.
  --reference FASTA  The reference for RaGOO based scaffolding.
  --sample NAME      Sample name to put for Read Group of BAM and Sample of
                     VCF.
  --female           When sample is a female, specify this to also do phasing
                     on chrX.
  --prefix STR       Prefix name for the experiment, for example "refBased",
                     "ragooBased".

Example:

python pipeline.py --hic-path data/hic --pb-path data/pacbiocss --scaffolds pgp1.assembly.fasta --ragoo --reference grch38.fasta --sample PGP1 --prefix ragooBased
```
