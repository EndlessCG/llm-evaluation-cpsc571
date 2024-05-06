# llm-evaluation

Processing LLM pairwise evaluation results. Please refer to `run.sh` for example usage.
If the console output is saved to a file under `./results/logs`, then `process_logs.py` can be used to process the log file into a csv.

## Datasets

Our datasets can be accessed at huggingface: [HANNA](https://huggingface.co/datasets/llm-aes/hanna-annotated-latest), [OpenMEVA-MANS](https://huggingface.co/datasets/llm-aes/meva-annotated-latest). These two repos will be accessed by modules under `dataset_loaders`, there's no need to download them manually.

Code for analyzing the datasets can be found in `experiments.ipynb`.

## Run experiments

First, install the required packages:

```pip install -r requirements.txt```

The scripts under `scripts/` can be used to run the experiments. For example, to run the Bayesian DS experiment for Hanna with no prior, run the following command:

```bash scripts/bayesian_ds/no_prior/hanna.sh```

Please note that the Bayesian experiments may take a long time to run.

The script will run the experiment and save the results to `./results/`. To process the results, please refer to the "process logs" section in `experiments.ipynb`.
