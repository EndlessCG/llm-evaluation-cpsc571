#!/bin/bash

datasets=("Hanna" "Meva")

for dataset in ${datasets[@]}
do
    mkdir -p results/plots/${dataset}-faws
    mkdir -p results/logs/${dataset}-faws
    python main.py --estimator BetaBernoulli \
                    --dataset ${dataset} \
                    --calibrator None \
                    --compare_models All \
                    --q_prior_ood \
                    --plot_dir results/plots/${dataset}-faws/in_dist_cv | tee results/logs/${dataset}-faws/in_dist_cv.log
done
