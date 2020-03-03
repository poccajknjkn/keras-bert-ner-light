PRETRAINED_LM_DIR="/home/liushaoweihua/pretrained_lm/albert_small_chinese"
DATA_DIR="../data"
OUTPUT_DIR="../models"

python run_train.py \
    -train_data ${DATA_DIR}/train.txt \
    -dev_data ${DATA_DIR}/dev.txt \
    -save_path ${OUTPUT_DIR} \
    -featurizer_url "http://192.168.110.10" \
    -featurizer_port "2706" \
    -featurizer_timeout 1 \
    -do_eval \
    -device_map "0" \
    -tag_padding "X" \
    -best_fit \
    -max_epochs 256 \
    -early_stop_patience 5 \
    -reduce_lr_patience 3 \
    -reduce_lr_factor 0.5 \
    -batch_size 64 \
    -max_len 35 \
    -learning_rate 5e-6 \
    -model_type "cnn" \
    -cnn_filters 128 \
    -cnn_kernel_size 3 \
    -cnn_blocks 4 \
    -dropout_rate 0.0 \
    -learning_rate 5e-5
