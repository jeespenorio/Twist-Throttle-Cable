 import pandas as pd

#init data
data1 = {
    'Make': ['utv/atv'],
    'Model': ['all models'],
    'Vendor Code': ['NACH'],
    'Vendor Name': ['NACHMAN INTERNATIONAL CO. LTD'],
    
     'MPN': ['104-312**'],
    
    'AD ITEM NUMBER': ['127783'],
    
    'Vendor Notes': ['BRAKE'],
}

#List of Models

list_models = [
    
'LT-A400 Eiger 2x4 Auto',
'LT-A400F Eiger 4x4 Auto',
'LT-A400F KingQuad AS',
'LT-A400F KingQuad ASi',
'LT-A400F KingQuad ASi LE',
'LT-A400F KingQuad ASi SE',
'LT-A400F KingQuad ASi+',
'LT-A400F KingQuad ASi SE+',
'LT-F400F Eiger 4x4',
'LT-F400F KingQuad FS',
'LT-F400 Eiger 2x4',
'LT-F400F KingQuad FSi',
'LT-F400F KingQuad FSi LE'


]
#Range of years
years = list(range(2005, 2009))

#Function to generate Dataframe for each model
def generate_df(model, data, year):
    data_copy = data.copy() # Creating a copy of data1 to avoid modifying the original dictionary
    data_copy['Model'] = model
    data_copy['Year'] = year
    return pd.DataFrame(data_copy)

# Generate DataFrames for all sets of data
dfs = []
for year in years:
    df1 = pd.concat([generate_df(model, data1, year) for model in list_models], ignore_index=True)
    dfs.append(df1)

# Concatenate all DataFrames
final_df = pd.concat(dfs, ignore_index=True)

# Print / Display
final_df
