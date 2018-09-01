#!/bin/sh

if [[ $# -lt 1 ]]; then
    MODEL='ssdlite_mbv2'
elif [[ $# -gt 1 ]]; then
    echo 'Illegal number of parameters'
else
    MODEL=$1
    echo ${MODEL}
fi

MODEL_ROOT_DIR=/mnt/Data/Data/coco_dataset/model_zoo
TRAIN_FROM_SCRATCH=True

if [[ ${MODEL} == 'faster_resnet50' ]]; then
    PIPELINE_CONFIG_PATH=${HOME}/detection_models/models/faster_rcnn_resnet50_coco.config
    if [[ ${TRAIN_FROM_SCRATCH} ]]; then
        MODEL_DIR=${MODEL_ROOT_DIR}/faster_rcnn_resnet50_coco_scratch/
        # rm -rf ${MODEL_ROOT_DIR}/faster_rcnn_resnet50_coco_scratch/*
    else
        MODEL_DIR=${MODEL_ROOT_DIR}/faster_rcnn_resnet50_coco_2018_01_28/
    fi

elif [[ ${MODEL} == 'faster_resnet101' ]]; then
    PIPELINE_CONFIG_PATH=${HOME}/detection_models/models/faster_rcnn_resnet101_coco.config
    if [[ ${TRAIN_FROM_SCRATCH} ]]; then
        MODEL_DIR=${MODEL_ROOT_DIR}/faster_rcnn_resnet101_coco_scratch/
        # rm -rf ${MODEL_ROOT_DIR}/faster_rcnn_resnet101_coco_scratch/*
    else
        MODEL_DIR=${MODEL_ROOT_DIR}/faster_rcnn_resnet101_coco_2018_01_28/
    fi

elif [[ ${MODEL} == 'ssdlite_mbv2' ]]; then
    PIPELINE_CONFIG_PATH=${HOME}/detection_models/models/ssdlite_mobilenet_v2_coco.config
    if [[ ${TRAIN_FROM_SCRATCH} ]]; then
        MODEL_DIR=${MODEL_ROOT_DIR}/mobilenet_v2_1.0_224/
        # rm -rf ${MODEL_ROOT_DIR}/ssdlite_mobilenet_v2_coco_scratch/*
    else
        MODEL_DIR=${MODEL_ROOT_DIR}/ssdlite_mobilenet_v2_coco_2018_05_09/
    fi

else
    echo 'Invalid model input'
fi


NUM_TRAIN_STEPS=500000000
NUM_EVAL_STEPS=2000

python ${HOME}/models/research/object_detection/model_main.py \
    --pipeline_config_path=${PIPELINE_CONFIG_PATH} \
    --model_dir=${MODEL_DIR} \
    --num_train_steps=${NUM_TRAIN_STEPS} \
    --num_eval_steps=${NUM_EVAL_STEPS} \
    --continue_train=True
    --alsologtostderr

# additional parameters:
# hparams_overrides
# checkpoint_dir
# run_once
# eval_training_data
# 