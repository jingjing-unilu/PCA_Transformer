##################### 2 components ##################### 
features=MS
model_id=traffic_96_96_2c
data=custom
enc_in=3
dec_in=3 
c_out=1 

###### PatchTST ###### 
SECONDS=0
model_name=PatchTST

python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/traffic/ \
  --data_path traffic.csv \
  --model_id $model_id \
  --model $model_name \
  --data $data \
  --features $features \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 96 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in $enc_in \
  --dec_in $enc_in \
  --c_out $c_out \
  --d_model 512 \
  --d_ff 512 \
  --top_k 5 \
  --des 'Exp' \
  --batch_size 4 \
  --itr 1
  
echo $model_id " Elapsed Time: " $SECONDS


###### Crossformer ###### 

SECONDS=0
model_name=Crossformer

python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/traffic/ \
  --data_path traffic.csv \
  --model_id $model_id \
  --model $model_name \
  --data $data \
  --features $features \
  --seq_len 96 \
  --label_len 96 \
  --pred_len 96 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in $enc_in \
  --dec_in $enc_in \
  --c_out $c_out \
  --top_k 5 \
  --des 'Exp' \
  --n_heads 2 \
  --batch_size 4 \
  --itr 1
  
echo $model_id " Elapsed Time: " $SECONDS


###### Autoformer ###### 

SECONDS=0
model_name=Autoformer


python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/traffic/ \
  --data_path traffic.csv \
  --model_id $model_id \
  --model $model_name \
  --data $data \
  --features $features \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 96 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in $enc_in \
  --dec_in $enc_in \
  --c_out $c_out \
  --des 'Exp' \
  --itr 1 \
  --train_epochs 3
  
echo $model_id " Elapsed Time: " $SECONDS


###### Nonstationary_Transformer ###### 

SECONDS=0
model_name=Nonstationary_Transformer

python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/traffic/ \
  --data_path traffic.csv \
  --model_id $model_id \
  --model $model_name \
  --data $data \
  --features $features \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 96 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in $enc_in \
  --dec_in $enc_in \
  --c_out $c_out \
  --des 'Exp' \
  --itr 1 \
  --train_epochs 3 \
  --p_hidden_dims 128 128 \
  --p_hidden_layers 2


echo $model_id " Elapsed Time: " $SECONDS


###### Transformer ###### 

SECONDS=0
model_name=Transformer

python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/traffic/ \
  --data_path traffic.csv \
  --model_id $model_id \
  --model $model_name \
  --data $data \
  --features $features \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 96 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in $enc_in \
  --dec_in $enc_in \
  --c_out $c_out \
  --des 'Exp' \
  --itr 1 \
  --train_epochs 3

  
echo $model_id " Elapsed Time: " $SECONDS

###### iTransformer ###### 
SECONDS=0
model_name=iTransformer

python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/traffic/ \
  --data_path traffic.csv \
  --model_id $model_id \
  --model $model_name \
  --data $data \
  --features $features \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 96 \
  --e_layers 4 \
  --d_layers 1 \
  --factor 3 \
  --enc_in $enc_in \
  --dec_in $enc_in \
  --c_out $c_out \
  --des 'Exp' \
  --d_model 512 \
  --d_ff 512 \
  --batch_size 16 \
  --learning_rate 0.001 \
  --itr 1

echo $model_id " Elapsed Time: " $SECONDS

##################### 25 components ##################### 
features=MS
model_id=traffic_96_96_25c
data=custom
enc_in=26
dec_in=26
c_out=1 

###### PatchTST ###### 
SECONDS=0
model_name=PatchTST

python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/traffic/ \
  --data_path traffic.csv \
  --model_id $model_id \
  --model $model_name \
  --data $data \
  --features $features \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 96 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in $enc_in \
  --dec_in $enc_in \
  --c_out $c_out \
  --d_model 512 \
  --d_ff 512 \
  --top_k 5 \
  --des 'Exp' \
  --batch_size 4 \
  --itr 1
  
echo $model_id " Elapsed Time: " $SECONDS


###### Crossformer ###### 

SECONDS=0
model_name=Crossformer

python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/traffic/ \
  --data_path traffic.csv \
  --model_id $model_id \
  --model $model_name \
  --data $data \
  --features $features \
  --seq_len 96 \
  --label_len 96 \
  --pred_len 96 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in $enc_in \
  --dec_in $enc_in \
  --c_out $c_out \
  --top_k 5 \
  --des 'Exp' \
  --n_heads 2 \
  --batch_size 4 \
  --itr 1
  
echo $model_id " Elapsed Time: " $SECONDS


###### Autoformer ###### 

SECONDS=0
model_name=Autoformer


python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/traffic/ \
  --data_path traffic.csv \
  --model_id $model_id \
  --model $model_name \
  --data $data \
  --features $features \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 96 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in $enc_in \
  --dec_in $enc_in \
  --c_out $c_out \
  --des 'Exp' \
  --itr 1 \
  --train_epochs 3
  
echo $model_id " Elapsed Time: " $SECONDS


###### Nonstationary_Transformer ###### 

SECONDS=0
model_name=Nonstationary_Transformer

python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/traffic/ \
  --data_path traffic.csv \
  --model_id $model_id \
  --model $model_name \
  --data $data \
  --features $features \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 96 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in $enc_in \
  --dec_in $enc_in \
  --c_out $c_out \
  --des 'Exp' \
  --itr 1 \
  --train_epochs 3 \
  --p_hidden_dims 128 128 \
  --p_hidden_layers 2


echo $model_id " Elapsed Time: " $SECONDS


###### Transformer ###### 

SECONDS=0
model_name=Transformer

python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/traffic/ \
  --data_path traffic.csv \
  --model_id $model_id \
  --model $model_name \
  --data $data \
  --features $features \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 96 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in $enc_in \
  --dec_in $enc_in \
  --c_out $c_out \
  --des 'Exp' \
  --itr 1 \
  --train_epochs 3

  
echo $model_id " Elapsed Time: " $SECONDS

###### iTransformer ###### 

SECONDS=0
model_name=iTransformer

python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/traffic/ \
  --data_path traffic.csv \
  --model_id $model_id \
  --model $model_name \
  --data $data \
  --features $features \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 96 \
  --e_layers 4 \
  --d_layers 1 \
  --factor 3 \
  --enc_in $enc_in \
  --dec_in $enc_in \
  --c_out $c_out \
  --des 'Exp' \
  --d_model 512 \
  --d_ff 512 \
  --batch_size 16 \
  --learning_rate 0.001 \
  --itr 1

echo $model_id " Elapsed Time: " $SECONDS

##################### 50 components ##################### 
features=MS
model_id=traffic_96_96_50c
data=custom
enc_in=51
dec_in=51 
c_out=1 

###### PatchTST ###### 
SECONDS=0
model_name=PatchTST

python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/traffic/ \
  --data_path traffic.csv \
  --model_id $model_id \
  --model $model_name \
  --data $data \
  --features $features \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 96 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in $enc_in \
  --dec_in $enc_in \
  --c_out $c_out \
  --d_model 512 \
  --d_ff 512 \
  --top_k 5 \
  --des 'Exp' \
  --batch_size 4 \
  --itr 1
  
echo $model_id " Elapsed Time: " $SECONDS


###### Crossformer ###### 

SECONDS=0
model_name=Crossformer

python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/traffic/ \
  --data_path traffic.csv \
  --model_id $model_id \
  --model $model_name \
  --data $data \
  --features $features \
  --seq_len 96 \
  --label_len 96 \
  --pred_len 96 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in $enc_in \
  --dec_in $enc_in \
  --c_out $c_out \
  --top_k 5 \
  --des 'Exp' \
  --n_heads 2 \
  --batch_size 4 \
  --itr 1
  
echo $model_id " Elapsed Time: " $SECONDS


###### Autoformer ###### 

SECONDS=0
model_name=Autoformer


python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/traffic/ \
  --data_path traffic.csv \
  --model_id $model_id \
  --model $model_name \
  --data $data \
  --features $features \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 96 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in $enc_in \
  --dec_in $enc_in \
  --c_out $c_out \
  --des 'Exp' \
  --itr 1 \
  --train_epochs 3
  
echo $model_id " Elapsed Time: " $SECONDS


###### Nonstationary_Transformer ###### 

SECONDS=0
model_name=Nonstationary_Transformer

python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/traffic/ \
  --data_path traffic.csv \
  --model_id $model_id \
  --model $model_name \
  --data $data \
  --features $features \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 96 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in $enc_in \
  --dec_in $enc_in \
  --c_out $c_out \
  --des 'Exp' \
  --itr 1 \
  --train_epochs 3 \
  --p_hidden_dims 128 128 \
  --p_hidden_layers 2


echo $model_id " Elapsed Time: " $SECONDS


###### Transformer ###### 

SECONDS=0
model_name=Transformer

python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/traffic/ \
  --data_path traffic.csv \
  --model_id $model_id \
  --model $model_name \
  --data $data \
  --features $features \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 96 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in $enc_in \
  --dec_in $enc_in \
  --c_out $c_out \
  --des 'Exp' \
  --itr 1 \
  --train_epochs 3

  
echo $model_id " Elapsed Time: " $SECONDS

###### iTransformer ###### 

SECONDS=0
model_name=iTransformer

python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/traffic/ \
  --data_path traffic.csv \
  --model_id $model_id \
  --model $model_name \
  --data $data \
  --features $features \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 96 \
  --e_layers 4 \
  --d_layers 1 \
  --factor 3 \
  --enc_in $enc_in \
  --dec_in $enc_in \
  --c_out $c_out \
  --des 'Exp' \
  --d_model 512 \
  --d_ff 512 \
  --batch_size 16 \
  --learning_rate 0.001 \
  --itr 1

echo $model_id " Elapsed Time: " $SECONDS

##################### 105 components ##################### 
features=MS
model_id=traffic_96_96_105c
data=custom
enc_in=106
dec_in=106 
c_out=1 

###### PatchTST ###### 
SECONDS=0
model_name=PatchTST

python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/traffic/ \
  --data_path traffic.csv \
  --model_id $model_id \
  --model $model_name \
  --data $data \
  --features $features \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 96 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in $enc_in \
  --dec_in $enc_in \
  --c_out $c_out \
  --d_model 512 \
  --d_ff 512 \
  --top_k 5 \
  --des 'Exp' \
  --batch_size 4 \
  --itr 1
  
echo $model_id " Elapsed Time: " $SECONDS


###### Crossformer ###### 

SECONDS=0
model_name=Crossformer

python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/traffic/ \
  --data_path traffic.csv \
  --model_id $model_id \
  --model $model_name \
  --data $data \
  --features $features \
  --seq_len 96 \
  --label_len 96 \
  --pred_len 96 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in $enc_in \
  --dec_in $enc_in \
  --c_out $c_out \
  --top_k 5 \
  --des 'Exp' \
  --n_heads 2 \
  --batch_size 4 \
  --itr 1
  
echo $model_id " Elapsed Time: " $SECONDS


###### Autoformer ###### 

SECONDS=0
model_name=Autoformer


python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/traffic/ \
  --data_path traffic.csv \
  --model_id $model_id \
  --model $model_name \
  --data $data \
  --features $features \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 96 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in $enc_in \
  --dec_in $enc_in \
  --c_out $c_out \
  --des 'Exp' \
  --itr 1 \
  --train_epochs 3
  
echo $model_id " Elapsed Time: " $SECONDS


###### Nonstationary_Transformer ###### 

SECONDS=0
model_name=Nonstationary_Transformer

python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/traffic/ \
  --data_path traffic.csv \
  --model_id $model_id \
  --model $model_name \
  --data $data \
  --features $features \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 96 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in $enc_in \
  --dec_in $enc_in \
  --c_out $c_out \
  --des 'Exp' \
  --itr 1 \
  --train_epochs 3 \
  --p_hidden_dims 128 128 \
  --p_hidden_layers 2


echo $model_id " Elapsed Time: " $SECONDS


###### Transformer ###### 

SECONDS=0
model_name=Transformer

python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/traffic/ \
  --data_path traffic.csv \
  --model_id $model_id \
  --model $model_name \
  --data $data \
  --features $features \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 96 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in $enc_in \
  --dec_in $enc_in \
  --c_out $c_out \
  --des 'Exp' \
  --itr 1 \
  --train_epochs 3

  
echo $model_id " Elapsed Time: " $SECONDS


###### iTransformer ###### 

SECONDS=0
model_name=iTransformer

python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/traffic/ \
  --data_path traffic.csv \
  --model_id $model_id \
  --model $model_name \
  --data $data \
  --features $features \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 96 \
  --e_layers 4 \
  --d_layers 1 \
  --factor 3 \
  --enc_in $enc_in \
  --dec_in $enc_in \
  --c_out $c_out \
  --des 'Exp' \
  --d_model 512 \
  --d_ff 512 \
  --batch_size 16 \
  --learning_rate 0.001 \
  --itr 1

echo $model_id " Elapsed Time: " $SECONDS

##################### 215 components ##################### 
features=MS
model_id=traffic_96_96_215c
data=custom
enc_in=216
dec_in=216
c_out=1 

###### PatchTST ###### 
SECONDS=0
model_name=PatchTST

python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/traffic/ \
  --data_path traffic.csv \
  --model_id $model_id \
  --model $model_name \
  --data $data \
  --features $features \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 96 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in $enc_in \
  --dec_in $enc_in \
  --c_out $c_out \
  --d_model 512 \
  --d_ff 512 \
  --top_k 5 \
  --des 'Exp' \
  --batch_size 4 \
  --itr 1
  
echo $model_id " Elapsed Time: " $SECONDS


###### Crossformer ###### 

SECONDS=0
model_name=Crossformer

python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/traffic/ \
  --data_path traffic.csv \
  --model_id $model_id \
  --model $model_name \
  --data $data \
  --features $features \
  --seq_len 96 \
  --label_len 96 \
  --pred_len 96 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in $enc_in \
  --dec_in $enc_in \
  --c_out $c_out \
  --top_k 5 \
  --des 'Exp' \
  --n_heads 2 \
  --batch_size 4 \
  --itr 1
  
echo $model_id " Elapsed Time: " $SECONDS


###### Autoformer ###### 

SECONDS=0
model_name=Autoformer


python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/traffic/ \
  --data_path traffic.csv \
  --model_id $model_id \
  --model $model_name \
  --data $data \
  --features $features \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 96 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in $enc_in \
  --dec_in $enc_in \
  --c_out $c_out \
  --des 'Exp' \
  --itr 1 \
  --train_epochs 3
  
echo $model_id " Elapsed Time: " $SECONDS


###### Nonstationary_Transformer ###### 

SECONDS=0
model_name=Nonstationary_Transformer

python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/traffic/ \
  --data_path traffic.csv \
  --model_id $model_id \
  --model $model_name \
  --data $data \
  --features $features \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 96 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in $enc_in \
  --dec_in $enc_in \
  --c_out $c_out \
  --des 'Exp' \
  --itr 1 \
  --train_epochs 3 \
  --p_hidden_dims 128 128 \
  --p_hidden_layers 2


echo $model_id " Elapsed Time: " $SECONDS


###### Transformer ###### 

SECONDS=0
model_name=Transformer

python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/traffic/ \
  --data_path traffic.csv \
  --model_id $model_id \
  --model $model_name \
  --data $data \
  --features $features \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 96 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in $enc_in \
  --dec_in $enc_in \
  --c_out $c_out \
  --des 'Exp' \
  --itr 1 \
  --train_epochs 3

  
echo $model_id " Elapsed Time: " $SECONDS

###### iTransformer ###### 

SECONDS=0
model_name=iTransformer

python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/traffic/ \
  --data_path traffic.csv \
  --model_id $model_id \
  --model $model_name \
  --data $data \
  --features $features \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 96 \
  --e_layers 4 \
  --d_layers 1 \
  --factor 3 \
  --enc_in $enc_in \
  --dec_in $enc_in \
  --c_out $c_out \
  --des 'Exp' \
  --d_model 512 \
  --d_ff 512 \
  --batch_size 16 \
  --learning_rate 0.001 \
  --itr 1

echo $model_id " Elapsed Time: " $SECONDS

##################### 430 components ##################### 
features=MS
model_id=traffic_96_96_430c
data=custom
enc_in=431
dec_in=431 
c_out=1 

###### PatchTST ###### 
SECONDS=0
model_name=PatchTST

python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/traffic/ \
  --data_path traffic.csv \
  --model_id $model_id \
  --model $model_name \
  --data $data \
  --features $features \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 96 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in $enc_in \
  --dec_in $enc_in \
  --c_out $c_out \
  --d_model 512 \
  --d_ff 512 \
  --top_k 5 \
  --des 'Exp' \
  --batch_size 4 \
  --itr 1
  
echo $model_id " Elapsed Time: " $SECONDS


###### Crossformer ###### 

SECONDS=0
model_name=Crossformer

python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/traffic/ \
  --data_path traffic.csv \
  --model_id $model_id \
  --model $model_name \
  --data $data \
  --features $features \
  --seq_len 96 \
  --label_len 96 \
  --pred_len 96 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in $enc_in \
  --dec_in $enc_in \
  --c_out $c_out \
  --top_k 5 \
  --des 'Exp' \
  --n_heads 2 \
  --batch_size 4 \
  --itr 1
  
echo $model_id " Elapsed Time: " $SECONDS


###### Autoformer ###### 

SECONDS=0
model_name=Autoformer


python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/traffic/ \
  --data_path traffic.csv \
  --model_id $model_id \
  --model $model_name \
  --data $data \
  --features $features \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 96 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in $enc_in \
  --dec_in $enc_in \
  --c_out $c_out \
  --des 'Exp' \
  --itr 1 \
  --train_epochs 3
  
echo $model_id " Elapsed Time: " $SECONDS


###### Nonstationary_Transformer ###### 

SECONDS=0
model_name=Nonstationary_Transformer

python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/traffic/ \
  --data_path traffic.csv \
  --model_id $model_id \
  --model $model_name \
  --data $data \
  --features $features \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 96 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in $enc_in \
  --dec_in $enc_in \
  --c_out $c_out \
  --des 'Exp' \
  --itr 1 \
  --train_epochs 3 \
  --p_hidden_dims 128 128 \
  --p_hidden_layers 2


echo $model_id " Elapsed Time: " $SECONDS


###### Transformer ###### 

SECONDS=0
model_name=Transformer

python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/traffic/ \
  --data_path traffic.csv \
  --model_id $model_id \
  --model $model_name \
  --data $data \
  --features $features \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 96 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in $enc_in \
  --dec_in $enc_in \
  --c_out $c_out \
  --des 'Exp' \
  --itr 1 \
  --train_epochs 3

  
echo $model_id " Elapsed Time: " $SECONDS

###### iTransformer ###### 

SECONDS=0
model_name=iTransformer

python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/traffic/ \
  --data_path traffic.csv \
  --model_id $model_id \
  --model $model_name \
  --data $data \
  --features $features \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 96 \
  --e_layers 4 \
  --d_layers 1 \
  --factor 3 \
  --enc_in $enc_in \
  --dec_in $enc_in \
  --c_out $c_out \
  --des 'Exp' \
  --d_model 512 \
  --d_ff 512 \
  --batch_size 16 \
  --learning_rate 0.001 \
  --itr 1

echo $model_id " Elapsed Time: " $SECONDS

##################### 645 components ##################### 
features=MS
model_id=traffic_96_96_645c
data=custom
enc_in=646
dec_in=646
c_out=1 

###### PatchTST ###### 
SECONDS=0
model_name=PatchTST

python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/traffic/ \
  --data_path traffic.csv \
  --model_id $model_id \
  --model $model_name \
  --data $data \
  --features $features \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 96 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in $enc_in \
  --dec_in $enc_in \
  --c_out $c_out \
  --d_model 512 \
  --d_ff 512 \
  --top_k 5 \
  --des 'Exp' \
  --batch_size 4 \
  --itr 1
  
echo $model_id " Elapsed Time: " $SECONDS


###### Crossformer ###### 

SECONDS=0
model_name=Crossformer

python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/traffic/ \
  --data_path traffic.csv \
  --model_id $model_id \
  --model $model_name \
  --data $data \
  --features $features \
  --seq_len 96 \
  --label_len 96 \
  --pred_len 96 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in $enc_in \
  --dec_in $enc_in \
  --c_out $c_out \
  --top_k 5 \
  --des 'Exp' \
  --n_heads 2 \
  --batch_size 4 \
  --itr 1
  
echo $model_id " Elapsed Time: " $SECONDS


###### Autoformer ###### 

SECONDS=0
model_name=Autoformer


python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/traffic/ \
  --data_path traffic.csv \
  --model_id $model_id \
  --model $model_name \
  --data $data \
  --features $features \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 96 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in $enc_in \
  --dec_in $enc_in \
  --c_out $c_out \
  --des 'Exp' \
  --itr 1 \
  --train_epochs 3
  
echo $model_id " Elapsed Time: " $SECONDS


###### Nonstationary_Transformer ###### 

SECONDS=0
model_name=Nonstationary_Transformer

python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/traffic/ \
  --data_path traffic.csv \
  --model_id $model_id \
  --model $model_name \
  --data $data \
  --features $features \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 96 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in $enc_in \
  --dec_in $enc_in \
  --c_out $c_out \
  --des 'Exp' \
  --itr 1 \
  --train_epochs 3 \
  --p_hidden_dims 128 128 \
  --p_hidden_layers 2


echo $model_id " Elapsed Time: " $SECONDS


###### Transformer ###### 

SECONDS=0
model_name=Transformer

python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/traffic/ \
  --data_path traffic.csv \
  --model_id $model_id \
  --model $model_name \
  --data $data \
  --features $features \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 96 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in $enc_in \
  --dec_in $enc_in \
  --c_out $c_out \
  --des 'Exp' \
  --itr 1 \
  --train_epochs 3

  
echo $model_id " Elapsed Time: " $SECONDS

###### iTransformer ###### 

SECONDS=0
model_name=iTransformer

python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/traffic/ \
  --data_path traffic.csv \
  --model_id $model_id \
  --model $model_name \
  --data $data \
  --features $features \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 96 \
  --e_layers 4 \
  --d_layers 1 \
  --factor 3 \
  --enc_in $enc_in \
  --dec_in $enc_in \
  --c_out $c_out \
  --des 'Exp' \
  --d_model 512 \
  --d_ff 512 \
  --batch_size 16 \
  --learning_rate 0.001 \
  --itr 1

echo $model_id " Elapsed Time: " $SECONDS
