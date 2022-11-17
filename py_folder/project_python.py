from time import perf_counter
time_start = perf_counter()

import pandas as pd
import numpy as np
from sklearn.metrics import roc_auc_score

train_path = "application_train.csv" #or the path to file
test_path = "application_test.csv" #or the path to file


#Reading the files
train_df = pd.read_csv(train_path) 

target_train = train_df[["TARGET"]]
train_df.drop(columns=["TARGET"], inplace=True)

test_df = pd.read_csv(test_path)

target_test = test_df[["TARGET"]]
test_df.drop(columns=["TARGET"], inplace=True)


from pipeline import Full_Pipeline #Loading pipeline

Full_Pipeline.fit(train_df, target_train.values.ravel())

train_results = Full_Pipeline.predict_proba(train_df)[:,1]
test_results = Full_Pipeline.predict_proba(test_df)[:,1]



print("roc_auc in train: ", roc_auc_score(target_train.values.ravel(), train_results))
print("roc_auc in test: ", roc_auc_score(target_test.values.ravel(), test_results))

time_end = perf_counter()

print("Time elepsed: ", round(time_end-time_start))

#18.8s mean of runtime (10 runs)
