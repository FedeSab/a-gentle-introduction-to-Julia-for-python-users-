from sklearn.base import BaseEstimator, TransformerMixin
import pandas as pd
import numpy as np

#This class is for dealing with a single column in dataset that has a high positive outlier
#And the rest are negative numbers.

class MyOutlierReplacement(BaseEstimator, TransformerMixin): 
    '''
    This class deals with outliers in the following way:
    all positives are replace with 0
    for negatives, It truncates the values at numbers lowers than percentile 25 + percentile 25*1.5
    '''
    def __init__(self):
        
        return None
    
    def fit(self, X, y=None):
        '''
      Arguments:
          X: pd.DataFrame

      
      Returns:
          X: np.ndarrary
        '''
        
        if isinstance(X, pd.Series):
            X = X.to_frame()
        self.columns = X.columns.to_list()
        _25_quartile = []
        for _ in self.columns:
            _25_quartile.append(np.percentile(X[_],25))
        self.quar = _25_quartile
        return self
    
    def transform(self, X, y=None):
        '''
        FUTURE IMPLEMENTS
        .Check if fit
        .Check same columns as when fit
        
          Arguments:
              X: pd.DataFrame
      
          Returns:
              X: np.ndarrary
        '''
        X_arr = X
        if isinstance(X_arr,pd.Series):
            X_arr = X_arr.to_frame()   

        for indx, coln in enumerate(self.columns):      
            X_arr.loc[X_arr[coln] > 0, [coln]] = 0
            if self.quar[indx] < 0:                
                X_arr.loc[
                    X_arr[coln] < self.quar[indx]+self.quar[indx]*1.5, [coln] 
                ] = self.quar[indx]+self.quar[indx]*1.5
            else:
                X_arr.loc[
                    X_arr[coln] < self.quar[indx]-self.quar[indx]*1.5, [coln] 
                ] = self.quar[indx]-self.quar[indx]*1.5
                
        return X_arr.to_numpy()