mkdir result
echo "Dataset,precision,recall,f1,train_time(s),test_time(s)" > result/svm.csv
for dataset in "SUGG" 
do
    SEED=12
    echo ${dataset}
    DATA_DIR="../data/${dataset}"
    TRAIN_FILE=${DATA_DIR}/train.csv
    DEV_FILE=${DATA_DIR}/dev.csv
    LOG_FILE="./result/svm.csv"

    python ../model/svm.py ${TRAIN_FILE} ${DEV_FILE} ${LOG_FILE} ${SEED}
done
