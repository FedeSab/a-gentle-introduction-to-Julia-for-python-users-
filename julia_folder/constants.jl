module Constants

COLUMNS_TO_DROP = ["COMMONAREA_MEDI","NONLIVINGAPARTMENTS_AVG","NONLIVINGAPARTMENTS_MEDI",
                    "LIVINGAPARTMENTS_MEDI","LIVINGAPARTMENTS_AVG","SK_ID_CURR",
                   "COMMONAREA_AVG","YEARS_BUILD_MODE","YEARS_BUILD_MEDI","LANDAREA_MEDI",
                   "LANDAREA_AVG","LIVINGAREA_AVG","LIVINGAREA_MEDI","FLOORSMAX_AVG",
                   "FLOORSMAX_MEDI","YEARS_BEGINEXPLUATATION_AVG","YEARS_BEGINEXPLUATATION_MEDI",
                   "FLAG_MOBIL","ELEVATORS_AVG","ELEVATORS_MEDI",
                   "WALLSMATERIAL_MODE","APARTMENTS_AVG","APARTMENTS_MEDI","ENTRANCES_MEDI",
                   "ENTRANCES_AVG","NONLIVINGAREA_AVG","NONLIVINGAREA_MEDI",
                   "FLOORSMIN_AVG","FLOORSMIN_MEDI","YEARS_BUILD_AVG",
                   "BASEMENTAREA_AVG","BASEMENTAREA_MEDI"];



COLUMNS_STR=["NAME_CONTRACT_TYPE","CODE_GENDER","FLAG_OWN_CAR","FLAG_OWN_REALTY",
                   "NAME_TYPE_SUITE","NAME_INCOME_TYPE","NAME_EDUCATION_TYPE",
                   "NAME_FAMILY_STATUS","NAME_HOUSING_TYPE","OCCUPATION_TYPE",
                   "WEEKDAY_APPR_PROCESS_START","ORGANIZATION_TYPE","FONDKAPREMONT_MODE",
                   "HOUSETYPE_MODE","EMERGENCYSTATE_MODE"];
                   
COLUMNS_BOOL=["FLAG_EMP_PHONE","FLAG_WORK_PHONE","FLAG_CONT_MOBILE","FLAG_PHONE",
                   "FLAG_EMAIL","REG_REGION_NOT_LIVE_REGION","REG_REGION_NOT_WORK_REGION",
                   "LIVE_REGION_NOT_WORK_REGION","REG_CITY_NOT_LIVE_CITY",
                   "REG_CITY_NOT_WORK_CITY","LIVE_CITY_NOT_WORK_CITY","FLAG_DOCUMENT_2",
                   "FLAG_DOCUMENT_3","FLAG_DOCUMENT_4","FLAG_DOCUMENT_5","FLAG_DOCUMENT_6",
                   "FLAG_DOCUMENT_7","FLAG_DOCUMENT_8","FLAG_DOCUMENT_9","FLAG_DOCUMENT_10",
                   "FLAG_DOCUMENT_11","FLAG_DOCUMENT_12","FLAG_DOCUMENT_13","FLAG_DOCUMENT_14",
                   "FLAG_DOCUMENT_15","FLAG_DOCUMENT_16","FLAG_DOCUMENT_17","FLAG_DOCUMENT_18",
                   "FLAG_DOCUMENT_19","FLAG_DOCUMENT_20","FLAG_DOCUMENT_21"];
                   
COLUMNS_NUM=["CNT_CHILDREN","AMT_INCOME_TOTAL","AMT_CREDIT","AMT_ANNUITY",
                   "AMT_GOODS_PRICE","REGION_POPULATION_RELATIVE","DAYS_BIRTH","DAYS_EMPLOYED",
                   "DAYS_REGISTRATION","DAYS_ID_PUBLISH","OWN_CAR_AGE","CNT_FAM_MEMBERS",
                   "REGION_RATING_CLIENT","REGION_RATING_CLIENT_W_CITY","HOUR_APPR_PROCESS_START",
                   "EXT_SOURCE_1","EXT_SOURCE_2","EXT_SOURCE_3",
                   "APARTMENTS_MODE","BASEMENTAREA_MODE",
                   "YEARS_BEGINEXPLUATATION_MODE","COMMONAREA_MODE","ELEVATORS_MODE",
                   "ENTRANCES_MODE","FLOORSMAX_MODE","FLOORSMIN_MODE","LANDAREA_MODE",
                   "LIVINGAPARTMENTS_MODE","LIVINGAREA_MODE","NONLIVINGAPARTMENTS_MODE",
                   "NONLIVINGAREA_MODE","TOTALAREA_MODE","OBS_30_CNT_SOCIAL_CIRCLE",
                   "DEF_30_CNT_SOCIAL_CIRCLE","OBS_60_CNT_SOCIAL_CIRCLE",
                   "DEF_60_CNT_SOCIAL_CIRCLE","DAYS_LAST_PHONE_CHANGE",
                   "AMT_REQ_CREDIT_BUREAU_HOUR","AMT_REQ_CREDIT_BUREAU_DAY",
                   "AMT_REQ_CREDIT_BUREAU_WEEK","AMT_REQ_CREDIT_BUREAU_MON",
                   "AMT_REQ_CREDIT_BUREAU_QRT","AMT_REQ_CREDIT_BUREAU_YEAR"]
end