torchrun --nproc_per_node=1 train/fine-tune_on_custom_dataset.py \
--model_name openai/whisper-medium \
--language zh \
--sampling_rate 16000 \
--num_proc 4 \
--train_strategy epoch \
--learning_rate 6.25e-6 \
--warmup 1000 \
--train_batchsize 12 \
--eval_batchsize 6 \
--num_epochs 20 \
--resume_from_ckpt None \
--output_dir op_dir_epoch-han \
--train_datasets output_data-han/train  \
--eval_datasets output_data-han/dev

