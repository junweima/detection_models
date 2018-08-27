#!/bin/sh

PIPELINE_CONFIG_PATH=${HOME}/detection_models/models/ssdlite_mobilenet_v2_coco.config
MODEL_DIR=/mnt/Data/Data/coco_dataset/model_zoo/ssdlite_mobilenet_v2_coco_2018_05_09/
# MODEL_DIR=/mnt/Data/Data/coco_dataset/model_zoo/mobilenet_v2_1.0_224/
NUM_TRAIN_STEPS=50000
NUM_EVAL_STEPS=2000

python ${HOME}/models/research/object_detection/model_main.py \
    --pipeline_config_path=${PIPELINE_CONFIG_PATH} \
    --model_dir=${MODEL_DIR} \
    --num_train_steps=${NUM_TRAIN_STEPS} \
    --num_eval_steps=${NUM_EVAL_STEPS} \
    --alsologtostderr


