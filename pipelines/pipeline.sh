#!/bin/sh
REF=$(readlink -f $1)
ASM=$(readlink -f $2)
PBPATH=$(readlink -f $3)
HICPATH=$(readlink -f $4)
SAMPLE=$5
SCRIPTPATH=$(readlink -f $0)
SCRIPTPATH=${SCRIPTPATH%/*}
if [ $# != 5 ] ; then 
echo "USAGE: $0 REF ASM PACBIOCCSPATH HICPATH SAMPLE" 
exit 1; 
fi

source activate pipeline

echo Using reference: $REF
echo Using assembly: $ASM
echo Using PacBioCCS data saved at: $PBPATH "All .fastq files here will be used"
echo Using Hi-C data saved at: $HICPATH "All .fastq files here will be used"
echo Sample name: $SAMPLE
echo Output will be in ${SAMPLE}_output

[ -d ${SAMPLE}_output ] || mkdir -p ${SAMPLE}_output
cd ${SAMPLE}_output

[ -d ragoo ] || mkdir -p ragoo
[ -d alignment ] || mkdir -p alignment
cd alignment
[ -d hic ] || mkdir -p hic
[ -d pacbioccs ] || mkdir -p pacbioccs
cd ../
[ -d hapcut2 ] || mkdir -p hapcut2
[ -d whatshap ] || mkdir -p whatshap
[ -d haplotag ] || mkdir -p haplotag

echo Start to concatenate pacbioccs reads for RaGOO use
for i in $PBPATH/*f*q; do seqtk seq -A $i >> alignment/pacbioccs/pacbioccs.fasta; done

[ -d ragoo ] || mkdir -p ragoo

echo Running RaGOO
cd ragoo
ln -s $REF
ln -s $ASM
\time -v python $SCRIPTPATH/tools/RaGOO/ragoo.py -t 96  -s -C -T corr -R ../alignment/pacbioccs/pacbioccs.fasta ${ASM##*/} ${REF##*/} 1> ragoo1.log 2> ragoo2.log

cd ../
$SCRIPTPATH/pacbioccs.sh $PBPATH ragoo/ragoo_output/ragoo.fasta $SAMPLE &
$SCRIPTPATH/hic.sh $HICPATH ragoo/ragoo_output/ragoo.fasta $SAMPLE
wait

$SCRIPTPATH/phase.sh $SAMPLE

