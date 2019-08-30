#!/bin/bash

set -e

#SEED=$1
#QUALITY=$2
SEED=11
QUALITY=10

#cd /research/transformer

#export PYTHONPATH=/nfs/site/home/mbhuiyan/tensorflow/models-tf-official-zoo/
export PYTHONPATH=/ec/fm/disks/aipg_lab_home_mbhuiyan/tensorflow/mlperf-train-intel-tensorflow/compliance:/localdisk/ashraf/private-tensorflow-bf16_bin/
#export PYTHONPATH=/ec/fm/disks/aipg_lab_home_mbhuiyan/tensorflow/mlperf-train-intel-tensorflow/compliance:/localdisk/ashraf/public-tensorflow_bin/
# Add compliance to PYTHONPATH
# export PYTHONPATH=/mlperf/training/compliance:${PYTHONPATH}

PARAM_SET=big
DATA_DIR=/nfs/site/home/mbhuiyan/tensorflow/models-tf-official-zoo/official/transformer/data
MODEL_DIR=/nfs/site/home/mbhuiyan/tensorflow/models-tf-official-zoo/official/transformer/model2_$PARAM_SET
VOCAB_FILE=$DATA_DIR/vocab.ende.32768

#python transformer_main.py --random_seed=${SEED} --data_dir=$DATA_DIR  --model_dir=$MODEL_DIR --params=big --bleu_source=/ec/fm/disks/aipg_lab_home_mbhuiyan/tensorflow/mlperf-training/translation/newstest2014.en --bleu_ref=/ec/fm/disks/aipg_lab_home_mbhuiyan/tensorflow/mlperf-training/translation/newstest2014.de --train_steps=1000
#python transformer_main.py --random_seed=${SEED} --data_dir=$DATA_DIR  --model_dir=$MODEL_DIR --bleu_threshold="20" --params=big --bleu_source=/ec/fm/disks/aipg_lab_home_mbhuiyan/tensorflow/mlperf-training/translation/newstest2014.en --bleu_ref=/ec/fm/disks/aipg_lab_home_mbhuiyan/tensorflow/mlperf-training/translation/newstest2014.de --train_steps=1000
#python transformer_main.py --random_seed=${SEED} --data_dir=/localdisk/ashraf/data-transformer  --model_dir=./model_big --params=big --bleu_threshold ${QUALITY} --bleu_source=/ec/fm/disks/aipg_lab_home_mbhuiyan/tensorflow/mlperf-training/translation/newstest2014.en --bleu_ref=/ec/fm/disks/aipg_lab_home_mbhuiyan/tensorflow/mlperf-training/translation/newstest2014.de
#working coammnd below but it evaluates
#python transformer_main.py --random_seed=${SEED} --data_dir=/localdisk/ashraf/data-transformer  --model_dir=./model_big --params=big --bleu_source=/ec/fm/disks/aipg_lab_home_mbhuiyan/tensorflow/mlperf-train-intel-tensorflow/translation/tensorflow/transformer/newstest2014.en --bleu_ref=/ec/fm/disks/aipg_lab_home_mbhuiyan/tensorflow/mlperf-train-intel-tensorflow/translation/tensorflow/transformer/newstest2014.de --train_steps=4 --steps_between_eval=4
#working below but it evaluates
python transformer_main.py --random_seed=${SEED} --data_dir=/localdisk/ashraf/data-transformer   --params=big --train_steps=1 --steps_between_eval=1
#python transformer_main.py --random_seed=${SEED} --data_dir=/localdisk/ashraf/data-transformer  --model_dir=./model_big --params=big  --train_steps=1 --steps_between_eval=1
