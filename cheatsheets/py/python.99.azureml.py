from azureml import Workspace

ws = Workspace()
ds = ws.datasets['*.csv']
df = ds.to_dataframe()
