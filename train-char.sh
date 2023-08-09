torchrun --nproc_per_node=10 train/fine-tune_on_custom_dataset.py \
--model_name openai/whisper-base \
--language en \
--sampling_rate 16000 \
--num_proc 4 \
--train_strategy epoch \
--learning_rate 6.25e-6 \
--warmup 1000 \
--train_batchsize 32 \
--eval_batchsize 16 \
--num_epochs 500 \
--resume_from_ckpt None \
--output_dir op_dir_epoch-char \
--train_datasets output_data-char/train  \
--eval_datasets output_data-char/dev

