#!/bin/sh
DATASET_FOLER=/mnt/Data/Data/coco_dataset/coco2014/coco

TRAIN_IMAGE_DIR=${DATASET_FOLER}/train2014
VAL_IMAGE_DIR=${DATASET_FOLER}/val2014
TEST_IMAGE_DIR=${DATASET_FOLER}/test2014

TRAIN_ANNOTATIONS_FILE=${DATASET_FOLER}/annotations/instances_train2014.json
VAL_ANNOTATIONS_FILE=${DATASET_FOLER}/annotations/instances_val2014.json
TESTDEV_ANNOTATIONS_FILE=${DATASET_FOLER}/annotations/image_info_test2014.json
OUTPUT_DIR=${DATASET_FOLER}/tfrecords/

python ${HOME}/models/research/object_detection/dataset_tools/create_coco_tf_record.py \
    --logtostderr \
    --train_image_dir="${TRAIN_IMAGE_DIR}" \
    --val_image_dir="${VAL_IMAGE_DIR}" \
    --test_image_dir="${TEST_IMAGE_DIR}" \
    --train_annotations_file="${TRAIN_ANNOTATIONS_FILE}" \
    --val_annotations_file="${VAL_ANNOTATIONS_FILE}" \
    --testdev_annotations_file="${TESTDEV_ANNOTATIONS_FILE}" \
    --output_dir="${OUTPUT_DIR}"

