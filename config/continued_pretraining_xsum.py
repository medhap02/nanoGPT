import time

out_dir = 'out-xsum-save'
eval_interval = 5
eval_iters = 50
wandb_log = False # feel free to turn on
wandb_project = 'xsum'
wandb_run_name = 'ft-' + str(time.time())

dataset = 'xsum'
init_from = 'gpt2-large' # this is the largest GPT-2 model

# only save checkpoints if the validation loss improves
always_save_checkpoint = False

# the number of examples per iter:
# 1 batch_size * 8 grad_accum * 1024 tokens = 8192 tokens/iter
# xsum has 5,373,173 tokens, so 1 epoch ~= 655.9 iters
batch_size = 1
gradient_accumulation_steps = 8
max_iters = 655

# finetune at constant LR
learning_rate = 3e-5
decay_lr = True
