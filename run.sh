#source source.sh
# partition=${1}
config=${1}
gpu=${2}
# num_gpus=1
# srun --mpi=pmi2 -p ${partition} \
#   -n${num_gpus} --gres=gpu:1 --ntasks-per-node=1 \
#   --job-name=UT 
python3 -u train.py --config ${config} --gpu ${gpu}
# python3 -u inference.py --config configs/inference.yaml