#This is the script for staging in
#SGE flags
#$ -N Rsync
#$ -cwd
#$ -l h_rt=4:00:00
#$ -r yes
#$ -notify
#$ -q staging
#$ -M katie.dubarry@ed.ac.uk -m bea
#$ -o $HOME/logs/
#$ -e $HOME/logs/
 
#Make directory for files
#mkdir /exports/eddie/scratch/s2118930/workingdata
#Paths on the interactive node
SOURCE=/exports/cmvm/datastore/eb/groups/clark_grp2/kdubarry_phd/WGS_ref_panel/sheep_ASE_wgs/bams/completed/*_mkdups.bam
DESTINATION=/exports/eddie/scratch/s2118930/data/sheep_ref_genotypes/bams
#Function
rsync -rvl ${SOURCE} ${DESTINATION}
