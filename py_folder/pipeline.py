from custom_outlier import MyOutlierReplacement #a custom sklearn-type class


#Loading preprocessing modules
from sklearn.impute import SimpleImputer
from sklearn.preprocessing import StandardScaler
from sklearn.preprocessing import OneHotEncoder
from sklearn.compose import ColumnTransformer

from sklearn.pipeline import Pipeline

#Lightgbm is a pretty fast and high performance algorithm
from lightgbm import LGBMClassifier

import constants as constants #List of columns



num_pipe = Pipeline([("Imputer for numerical", SimpleImputer(strategy='median')),
                     ("Standar Scaler",StandardScaler() )])

catego_pipe = Pipeline([("Imputer for Categotorical",SimpleImputer(strategy='most_frequent')),
                        ("OneHot",OneHotEncoder(drop="first",sparse=False))])

Column_Preprocess = ColumnTransformer(
        [("Custom Outlier", MyOutlierReplacement() , ["DAYS_EMPLOYED"]),
         ("Pipe for Numericals", num_pipe, constants.COLUMNS_NUM ),
         ("Imputer for Bools",SimpleImputer(strategy='most_frequent'), constants.COLUMNS_BOOL),
         ("Pipe for Categorical",catego_pipe, constants.COLUMNS_STR),
        ])

model = LGBMClassifier(boosting_type="goss",class_weight={0: 0.2, 1: 0.8}, 
                       subsample= 0.3, reg_alpha = 0.9, reg_lambda = 0.8)
                       

Full_Pipeline = Pipeline([("Preprocess", Column_Preprocess),
                          ("LightGBM",model)])