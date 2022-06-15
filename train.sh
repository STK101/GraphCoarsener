#!/bin/sh
### Set the job name (for your reference)
#PBS -N 'graphcoarsening'
### Set the project name, your department code by default
#PBS -P ksandeep.p2.429
### Request email when job begins and ends, don't change anything on the below line
#PBS -m bea
### Specify email address to use for notification, don't change anything on the below line
#PBS -M $USER@iitd.ac.in
#### Request your resources, just change the numbers
### PBS -l select=1:ncpus=1:ngpus=1:mem=32G:centos=skylake
#PBS -l select=1:ncpus=1:ngpus=1:centos=skylake
### Specify "wallclock time" required for this job, hhh:mm:ss
#PBS -l walltime=02:00:00

# After job starts, must goto working directory.
# $PBS_O_WORKDIR is the directory from where the job is fired.
echo "==============================="
echo $PBS_JOBID
cat $PBS_NODEFILE
echo "==============================="
cd $PBS_O_WORKDIR
echo $PBS_O_WORKDIR

module () {
        eval `/usr/share/Modules/$MODULE_VERSION/bin/modulecmd bash $*`
}

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/ee/btech/ee1180542/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/ee/btech/ee1180542/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/ee/btech/ee1180542/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/ee/btech/ee1180542/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

conda activate test2

# module load apps/pytorch/1.5.0/gpu/anaconda3
# module load compiler/cuda/10.0/compilervars
module load compiler/gcc/6.5.0/compilervars 
# export PYTHONPATH=/home/apps/centos7/pytorch/1.5.0/torchvision/lib/python3.6/site-packages/torchvision-0.6.0a0-py3.6-linux-x86_64.egg:/home/apps/centos7/pytorch/1.5.0:/home/apps/anaconda3_2018/4.6.9/lib/python3.6/site-packages
# # export PYTHONUNBUFFERED=1

python block.py