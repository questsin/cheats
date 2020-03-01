from azureml.core import Workspace, Datastore

ws = Workspace.from_config()

# Register a new datastore
blob_ds = Datastore.register_azure_blob_container(workspace=ws,
    datastore_name='blob_data',
    container_name='data_container',
    account_name='az_store_acct',
    account_key='123456abcde789…')

    for ds_name in ws.datastores:
    print(ds_name)

    blob_store = Datastore.get(ws, datastore_name='blob_data')

    default_store = ws.get_default_datastore()

    ws.set_default_datastore('blob_data')

    blob_ds.upload(src_dir='/files',
               target_path='/data/files',
               overwrite=True, show_progress=True)

blob_ds.download(target_path='downloads',
                 prefix='/data',
                 show_progress=True)

data_ref = blob_ds.path('data/files').as_download(path_on_compute='training_data')
estimator = SKLearn(source_directory='experiment_folder',
                    entry_script='training_script.py'
                    compute_target='local',
                    script_params = {'--data_folder': data_ref})

import os
import argparse

parser = argparse.ArgumentParser()
parser.add_argument('--data_folder', type=str, dest='data_folder')
args = parser.parse_args()
data_files = os.listdir(args.data_folder)

from azureml.core import Dataset

blob_ds = ws.get_default_datastore()
csv_paths = [(blob_ds, 'data/files/current_data.csv'),
             (blob_ds, 'data/files/archive/*.csv')]
tab_ds = Dataset.Tabular.from_delimited_files(path=csv_paths)
tab_ds = tab_ds.register(workspace=ws, name='csv_table')

df = tab_ds.to_pandas_dataframe()
# code to work with dataframe goes here