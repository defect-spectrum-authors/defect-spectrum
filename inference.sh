#!/bin/sh
CUDA_VISIBLE_DEVICES='2, 3' \
python -m torch.distributed.launch \
--nproc_per_node=2 \
--master_port=29511 \
inference_for_perception.py \
--step_inference 400 \
--sample_dir 'PATH_TO_YOUR_WORKING_DIR' \
--large_recep 'YOUR_LARGE_RECPETIVE_FIELD_CKPT' \
--small_recep 'YOUR_LARGE_RECPETIVE_FIELD_CKPT' \
--num_defect 3 \
--large_recep_config 'YOUR_LARGE_RECEP_CONFIG' \
--small_recep_config 'YOUR_SMALL_RECEP_CONFIG' \
