# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/apps/anaconda3_2018/4.6.9/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/apps/anaconda3_2018/4.6.9/etc/profile.d/conda.sh" ]; then
        . "/home/apps/anaconda3_2018/4.6.9/etc/profile.d/conda.sh"
    else
        export PATH="/home/apps/anaconda3_2018/4.6.9/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

conda activate /home/ee/btech/ee1180957/anaconda3/envs/wl-coref
