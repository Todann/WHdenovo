#het = [0.5, 1.0, 1.5, 2.0]
het = [0.5, 0.1, 1.0]
genome = ['mom1', 'mom2', 'dad1', 'dad2', 'child1', 'child2']
#pacbiocov = [10, 15, 30]
pacbiocov =[5, 10, 15]
canucov=[15, 30, 45, 80, 100]

canu = '~/canu-1.8/Linux-amd64/bin/canu'
vg = '~/vg'
art_illumina= '~/anaconda3/bin/art_illumina'
simulate_mut = '../scripts/simulate_mutation.py'
spades = '../scripts/try/spades.py'
printnodes = '../scripts/printnodedegrees_gfa.py'
removenodes = '../scripts/remove_wrongnodes.py'
rule master:
	input:
		#expand('illumina/mom1.het{het}.cov30_1.fq', het=het),
		#expand('illumina/mom.het{het}.cov30_1.fq', het=het),
		#expand('illumina/spades_all_het{het}.cov30/assembly_graph.gfa', het=het),
		#expand('pacbio/{genome1}.het{het}.cov{cov}.fastq', genome1=genome, het=het, cov=pacbiocov),
		#expand('pacbio/mom.het{het}.cov{cov}.fasta', het=het, cov=pacbiocov),
		#expand('illumina/spadeshet{het}cov30graph.gfa', het=het),
		#expand('illumina/spadeshet{het}cov30graph.trans', het=het),
		#expand('triocanu/child_{het}_{cov}/', het=het, cov=canucov),
		#expand('triocanu/child_{het}_{cov}.hap1count_stats', het=het, cov=canucov),
		#expand('pacbio/aln_all.het{het}.cov{cov}_graph_selected.gam', het=het, cov=pacbiocov),
		#expand('bc1/spadeshet{het}cov{cov}graph.unitis', het=het, cov=pacbiocov),
		#expand('bc1/spadeshet{het}cov{cov}graph_contigs.paselectedread', het=het, cov=pacbiocov),
		expand('minimap2/canu_{het}cov{cov}_1.stats', het=het, cov=pacbiocov)
	message: 'MASTER rule'

# [sg461@compute-e-16-237 illumina]$ mv DBVPG6765.genome.fa DBVPG6765.genome.fa.gz

rule generate_hets:
	input:'illumina/mom1.het{het}.cov30.fasta' 
	output: 'illumina/mom2.het{het}.cov30.fasta', 'illumina/dad1.het{het}.cov30.fasta', 'illumina/dad2.het{het}.cov30.fasta', 'illumina/child1.het{het}.cov30.fasta', 'illumina/child2.het{het}.cov30.fasta'
	run:
		print(simulate_mut) 
		shell('python3 {simulate_mut} {input[0]} {wildcards.het} illumina/mom2.het{wildcards.het}.cov30')
		shell('python3 {simulate_mut} {input[0]} {wildcards.het} illumina/dad1.het{wildcards.het}.cov30')
		shell('python3 {simulate_mut} {input[0]} {wildcards.het} illumina/dad2.het{wildcards.het}.cov30')
		shell('cp illumina/mom1.het{wildcards.het}.cov30.fasta illumina/child1.het{wildcards.het}.cov30.fasta')
		shell('cp illumina/dad1.het{wildcards.het}.cov30.fasta illumina/child2.het{wildcards.het}.cov30.fasta')

rule simulate_illumina:
	input: 'illumina/mom1.het{het}.cov30.fasta', 'illumina/mom2.het{het}.cov30.fasta', 'illumina/dad1.het{het}.cov30.fasta', 'illumina/dad2.het{het}.cov30.fasta', 'illumina/child1.het{het}.cov30.fasta', 'illumina/child2.het{het}.cov30.fasta'
	output: 'illumina/mom1.het{het}.cov30_1.fq', 'illumina/mom1.het{het}.cov30_2.fq', 'illumina/mom2.het{het}.cov30_1.fq', 'illumina/mom2.het{het}.cov30_2.fq','illumina/dad1.het{het}.cov30_1.fq', 'illumina/dad1.het{het}.cov30_2.fq', 'illumina/dad2.het{het}.cov30_1.fq', 'illumina/dad2.het{het}.cov30_2.fq', 'illumina/child1.het{het}.cov30_1.fq', 'illumina/child1.het{het}.cov30_2.fq', 'illumina/child2.het{het}.cov30_1.fq', 'illumina/child2.het{het}.cov30_2.fq'
	run:
		pref1 = 'illumina/mom1.het' + str(wildcards.het) + '.cov30_'
		pref2 = 'illumina/mom2.het' + str(wildcards.het) + '.cov30_'
		pref3 = 'illumina/dad1.het' + str(wildcards.het) + '.cov30_'
		pref4 = 'illumina/dad2.het' + str(wildcards.het) + '.cov30_'
		pref5 = 'illumina/child1.het' + str(wildcards.het) + '.cov30_'
		pref6 = 'illumina/child2.het' + str(wildcards.het) + '.cov30_'
 		shell('{art_illumina} -ss HSXn -sam -i {input[0]} -p -d {input[0]} -l 150 -f 15 -m 200 -s 10 -o {pref1}')
		shell('{art_illumina} -ss HSXn -sam -i {input[1]} -p -d {input[1]} -l 150 -f 15 -m 200 -s 10 -o {pref2}')
		shell('{art_illumina} -ss HSXn -sam -i {input[2]} -p -d {input[2]} -l 150 -f 15 -m 200 -s 10 -o {pref3}')
		shell('{art_illumina} -ss HSXn -sam -i {input[3]} -p -d {input[3]} -l 150 -f 15 -m 200 -s 10 -o {pref4}')
		shell('{art_illumina} -ss HSXn -sam -i {input[4]} -p -d {input[4]} -l 150 -f 15 -m 200 -s 10 -o {pref5}')
		shell('{art_illumina} -ss HSXn -sam -i {input[5]} -p -d {input[5]} -l 150 -f 15 -m 200 -s 10 -o {pref6}')

rule combine_strains:
	input: 'illumina/mom1.het{het}.cov30_1.fq', 'illumina/mom1.het{het}.cov30_2.fq', 'illumina/mom2.het{het}.cov30_1.fq', 'illumina/mom2.het{het}.cov30_2.fq','illumina/dad1.het{het}.cov30_1.fq', 'illumina/dad1.het{het}.cov30_2.fq', 'illumina/dad2.het{het}.cov30_1.fq', 'illumina/dad2.het{het}.cov30_2.fq', 'illumina/child1.het{het}.cov30_1.fq', 'illumina/child1.het{het}.cov30_2.fq', 'illumina/child2.het{het}.cov30_1.fq', 'illumina/child2.het{het}.cov30_2.fq'
	output: 'illumina/mom.het{het}.cov30_1.fq', 'illumina/mom.het{het}.cov30_2.fq', 'illumina/dad.het{het}.cov30_1.fq', 'illumina/dad.het{het}.cov30_2.fq', 'illumina/child.het{het}.cov30_1.fq', 'illumina/child.het{het}.cov30_2.fq',
	run:
		shell('cat {input[0]} {input[2]} > {output[0]}')
		shell('cat {input[1]} {input[3]} > {output[1]}')
		shell('cat {input[4]} {input[6]} > {output[2]}')
		shell('cat {input[5]} {input[7]} > {output[3]}')
		shell('cat {input[8]} {input[10]} > {output[4]}')
		shell('cat {input[9]} {input[11]} > {output[5]}')
		shell('cat {output[0]} {output[2]} {output[4]} > illumina/all_het{wildcards.het}.cov30.R1.fastq')
		shell('cat {output[1]} {output[3]} {output[5]} > illumina/all_het{wildcards.het}.cov30.R2.fastq')

rule run_spades:
	input:'illumina/all_het{het}.cov30.R1.fastq', 'illumina/all_het{het}.cov30.R2.fastq'
	output: 'illumina/spades_all_het{het}.cov30/assembly_graph.gfa'
	shell:'python2 {spades} -t 16 -k 77 -1 {input[0]} -2 {input[1]} --only-assembler -o illumina/spades_all_het{wildcards.het}.cov30/'

rule simulate_pacbio_reads: 
	input: 'pacbio/SK1.filtered_subreads.fastq', 'illumina/{genome1}.het{het}.cov30.fasta',
	output: 'pacbio/{genome1}.het{het}.cov{cov}.fastq', 
	log : 'pacbio/{genome1}.het{het}.cov{cov}.fastq.log' 
	message: 'Simulating PacBio reads {output}'
	run:
		coverage = int(wildcards.cov)
		halfcoverage = coverage / 2
		seed = abs(hash(output))
		shell('mkdir -p pacbio/tmp')
		shell('time (pbsim --seed {seed} --prefix pacbio/tmp/{wildcards.genome1}.het{wildcards.het}.cov{wildcards.cov} --depth {halfcoverage} --sample-fastq {input[0]} {input[1]}) > {log} 2>&1')
		shell('for i in {{1..9}}; do awk -v i="$i" \'NR%4==1 {{printf("%s_HAP{wildcards.genome1}.het{wildcards.het}.cov{wildcards.cov}_chrom%s\\n",$0,i)}} NR%4!=1 {{print}}\' pacbio/tmp/{wildcards.genome1}.het{wildcards.het}.cov{wildcards.cov}_000$i.fastq >> {output}; done')
		shell('for i in {{10..16}}; do awk -v i="$i" \'NR%4==1 {{printf("%s_HAP{wildcards.genome1}.het{wildcards.het}.cov{wildcards.cov}_chrom%s\\n",$0,i)}} NR%4!=1 {{print}}\' pacbio/tmp/{wildcards.genome1}.het{wildcards.het}.cov{wildcards.cov}_00$i.fastq >> {output}; done')

rule combine_pacbio:
	input:'pacbio/mom1.het{het}.cov{cov}.fastq', 'pacbio/mom2.het{het}.cov{cov}.fastq', 'pacbio/dad1.het{het}.cov{cov}.fastq', 'pacbio/dad2.het{het}.cov{cov}.fastq', 'pacbio/child1.het{het}.cov{cov}.fastq', 'pacbio/child2.het{het}.cov{cov}.fastq'
	output: 'pacbio/mom.het{het}.cov{cov}.fasta', 'pacbio/dad.het{het}.cov{cov}.fasta', 'pacbio/child.het{het}.cov{cov}.fasta'
	run:
		shell('cat {input[0]} {input[1]} | seqtk seq -A -> {output[0]}')
		shell('cat {input[2]} {input[3]} | seqtk seq -A -> {output[1]}')
		shell('cat {input[4]} {input[5]} | seqtk seq -A -> {output[2]}')
		shell('cp {output[0]} ../run_trio/input/')
		shell('cp {output[1]} ../run_trio/input/')
		shell('cp {output[2]} ../run_trio/input/')

rule filter_graph:
	input: 'illumina/spades_all_het{het}.cov30/assembly_graph.gfa'
	output: 'illumina/spadeshet{het}cov30graph.gfa'
	run:
		#shell('mkdir tmp')
		shell("grep -v '^P' {input} | awk -F'\t' '{{ if ($2 != $4) print $0}}' | {vg} view --gfa-in - --vg | {vg} view -g - | awk -F'\t' '{{ if ($2 !=$4) print $0}}' > tmp/spadeshet{wildcards.het}cov30graph.gfa")
		shell("python2 {printnodes} tmp/spadeshet{wildcards.het}cov30graph.gfa | awk -F' ' '{{ if($2 > 70 || $2==0) printf \"%s\\n\", $1 }}' > tmp/spadeshet{wildcards.het}cov30graph.wrongnodes")
		shell('python2 {removenodes} tmp/spadeshet{wildcards.het}cov30graph.wrongnodes tmp/spadeshet{wildcards.het}cov30graph.gfa {output}')
		shell('cp {output} ../run_trio/input/')

rule snarls:
	input: 'illumina/spadeshet{het}cov30graph.gfa'
	output: 'illumina/spadeshet{het}cov30graph.snarls', 'illumina/spadeshet{het}cov30graph.trans', 'illumina/spadeshet{het}cov30graph.snarls.log'
	run: 
		shell('{vg} view --gfa-in --vg {input} | {vg} snarls -l -t -r {output[1]} - > {output[0]}')
		shell('{vg} view -Rj {output[0]} | wc -l > {output[2]}')

rule triocanu:
	input: 'illumina/mom.het{het}.cov30_1.fq', 'illumina/mom.het{het}.cov30_2.fq', 'illumina/dad.het{het}.cov30_1.fq', 'illumina/dad.het{het}.cov30_2.fq', 'pacbio/child.het{het}.cov{cov}.fasta'
	output: 'triocanu/child_{het}_{cov}/'
	run:
		shell('cat {input[0]} {input[1]} > tmp/illumina.mom.het{wildcards.het}.cov30.fq')
		shell('cat {input[2]} {input[3]} > tmp/illumina.dad.het{wildcards.het}.cov30.fq')
		shell('{canu} -p asm -d triocanu/child_{wildcards.het}_{wildcards.cov} genomeSize=12m -haplotypedad tmp/illumina.dad.het{wildcards.het}.cov30.fq -haplotypemom tmp/illumina.mom.het{wildcards.het}.cov30.fq -pacbio-raw {input[4]}')

# do and copy alignments to pacbio folder
#for i in 0.1 0.5 1.0; do for j in 5 10 15; do for k in mom dad child; do mv aln_${k}.het${i}.cov${j}_spadeshet${i}cov30graph_selected.gam aln_${k}.het${i}.cov${j}_graph_selected.gam; done; done;done
# put gams in output file in right format
# memory issue for hets 1.5 and 2.0 more than 370Gb
rule copy_alns:
	input: '../run_trio/output/aln_mom.het{het}.cov{cov}_graph_selected.gam', '../run_trio/output/aln_dad.het{het}.cov{cov}_graph_selected.gam', '../run_trio/output/aln_child.het{het}.cov{cov}_graph_selected.gam'
	output: 'pacbio/aln_all.het{het}.cov{cov}_graph_selected.gam', 'pacbio/mom.het{het}.cov{cov}_combined.gam', 'pacbio/dad.het{het}.cov{cov}_combined.gam', 'pacbio/child.het{het}.cov{cov}_combined.gam'
	run:
		shell('cat {input[0]} {input[1]} {input[2]} > {output[0]}')
		shell('../wh_test/whatshap/venv/bin/python3 ../scripts/combine_canu_chunks_chunks.py {input[0]} {output[1]}')
		shell('../wh_test/whatshap/venv/bin/python3 ../scripts/combine_canu_chunks_chunks.py {input[1]} {output[2]}')
		shell('../wh_test/whatshap/venv/bin/python3 ../scripts/combine_canu_chunks_chunks.py {input[2]} {output[3]}')


rule bubble_chains:
	input: 'illumina/spadeshet{het}cov30graph.trans', 'pacbio/aln_all.het{het}.cov{cov}_graph_selected.gam'
	output: 'bc1/spadeshet{het}cov{cov}graph.unitis', 'bc1/spadeshet{het}cov{cov}graph.unitis.log', 'bc1/spadeshet{het}cov{cov}graph.aux_unitis', 'bc1/spadeshet{het}cov{cov}graph.final_ctgs', 'bc1/spadeshet{het}cov{cov}graph.final_ctgs.log', 'bc1/spadeshet{het}cov{cov}graph.log'
	run: 
		shell('../wh_test/whatshap/venv/bin/python3 ../scripts/find_bubble_chains_new_test.py {input[0]} {input[1]} {output[0]} > {output[1]} 2>&1')
		shell('../wh_test/whatshap/venv/bin/python3 ../scripts/aux_contigs_new_test.py {input[1]} {output[0]} {output[2]} {input[0]}')
		shell('../wh_test/whatshap/venv/bin/python3 ../scripts/find_contigs_new.4.py {output[0]} {output[2]} {output[3]} > {output[4]}')
		shell('../wh_test/whatshap/venv/bin/python3 ../scripts/contigs_wh_test.py {input[0]} {output[3]} {wildcards.het} > {output[5]}')

# TODO: remove trans files with 0 size and run command for whatshap
# find . -size 0 -delete
# TODO: update whatshap phaseg according to new trans files
# for i in 0.5 1.0; do for j in 5 10 15; do ls bc1/*${i}*${j}.trans | parallel -j 80 '../wh_test/whatshap/venv/bin/whatshap phaseg {}.reads ped.ped {} pacbio/mom.het${i}.cov${j}_combined.gam pacbio/dad.het${i}.cov${j}_combined.gam pacbio/child.het${i}.cov${j}_combined.gam> {}.log'; done; done
#
# [ec2-user@ip-172-31-4-175 paper]$  ls bc/contigs*0.5*.trans | parallel -j 80 '../wh_test/whatshap/venv/bin/whatshap phaseg {}.cov10.reads ped.ped {} pacbio/mom.het0.5.cov10_combined.gam pacbio/dad.het0.5.cov10_combined.gam pacbio/child.het0.5.cov10_combined.gam> {}.cov10.log'
#

