cd ..

CUDA_VISIBLE_DEVICES=0,1,2,3 python -m torch.distributed.launch --nproc_per_node=4 main_train.py --savedir OriData\
    --dataroot ./dataset/ --batch_size 8 --ROI_SIZE 128 --nepochs 50 --multi_GPU --backbone resnet101 --eos_coef 0.2\
    --lr 9e-5 --lr_backbone 9e-5 --weight_decay 1e-5 --noise 8 --image_size 1280\
    --candidate_filter_threshold 30 --logit_threshold 0.75 --extract_candidate_threshold 0.55 --alignment_distance 5\
    --multi_scale --num_queries 10