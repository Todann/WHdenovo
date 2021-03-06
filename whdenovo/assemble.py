'''
Get partitioned FASTA/FASTQ from "partition", and run diploid assembly from them.
'''
import subprocess
import argparse
import sys
from Bio import SeqIO

'''
Usage
whdenovo assemble -f son.inputreads.fa -0 path/to/output/HP0.reads -1 path/to/output/HP1.reads --assemble -s 15k -t 40
'''
def run(args):
    son_all = set()
    if args.fasta[-1] == 'a':
        for record in SeqIO.parse(args.fasta, "fasta"):
            son_all.add(record.id)
    elif args.fasta[-1] == 'q':
        for record in SeqIO.parse(args.fasta, "fastq"):
            son_all.add(record.id)

    HP0_all = set(open(args.hp0, 'r').read().split('\n')[:-1])
    HP1_all = set(open(args.hp1, 'r').read().split('\n')[:-1])
    
    son_hp0 = son_all.intersection(HP0_all)
    son_hp1 = son_all.intersection(HP1_all)
    son_unp = son_all.difference(HP0_all).difference(HP1_all)
    
    son_HP0 = son_hp0.union(son_unp)
    son_HP1 = son_hp1.union(son_unp)
    
    HP1 = open('son_HP1.reads','w')
    for i in son_HP1:
        HP1.write(i+'\n')
    HP1.close()
    
    HP0 = open('son_HP0.reads','w')
    for i in son_HP0:
        HP0.write(i+'\n')
    HP0.close()
    
    subprocess.call('seqtk subseq %s son_HP1.reads > son_HP1.fasta' % args.fasta, shell = True)
    subprocess.call('seqtk subseq %s son_HP0.reads > son_HP0.fasta' % args.fasta, shell = True)
    
    sys.stderr.write('Reads written to output FASTA.\n')
    
    if args.pacbio:
        data = '--pacbio-raw'
    elif args.nano:
        data = '--nano-raw'
    if args.assemble:
        if args.pacbio:
            data = '--pacbio-raw'
        elif args.nano:
            data = '--nano-raw'
        else:
            sys.stderr.write('"--assemble" specified without specifying the read type (pacbio/nano), assuming pacbio\n')
            data = '--pacbio-raw'  
        if args.size == None:
            sys.stderr.write('[ERROR] Flye requires genome size parameter, which we cannot infer. Please add "-s"\n')
            exit(1)
        sys.stderr.write('starting Flye\n')
        subprocess.call('flye %s son_HP0.fasta -g %s -o flye_hp0 -t %d' % (data, args.size, args.threads), shell = True)
        subprocess.call('flye %s son_HP1.fasta -g %s -o flye_hp1 -t %d' % (data, args.size, args.threads), shell = True)

def add_arguments(parser):
    arg = parser.add_argument
    arg('-f', '--fasta', metavar = 'FASTA|FASTQ', type = str, required = True,
                     help = 'FASTA|FASTQ file of the child input reads')
    arg('-0', '--hp0', metavar = 'HP0_READS', type = str, required = True,
                                         help = 'Read name list file that contain all the reads labeled as "0". Generated by WHdenovo.')
    arg('-1', '--hp1', metavar = 'HP1_READS', type = str, required = True,
                                         help = 'Read name list file that contain all the reads labeled as "1". Generated by WHdenovo.')
    arg('--assemble', action = 'store_true', help = 'If specified, we directly send the partitioned reads to preset assembler, Flye. Otherwise, use other assembler by yourself.')
    arg('-s', '--size', type = str, help = 'Genome size. accept [k|m|g].')
    arg('-t', '--threads', metavar = 'INT', type = int, default = 4,
                     help = 'Maximum number of threads to use. [4]')
    arg('--pacbio', action='store_true')
    arg('--nano', action='store_true')

def main(args):
    run(args)
