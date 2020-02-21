from azureml import Workspace

ws = Workspace()
ws = Workspace.from_config()

ds = ws.datasets['*.csv']
df = ds.to_dataframe()

#ws.name
#ws.location
#ws.subscription_id
#ws.resource_group

from azureml.core import Enviornment
env = Enviornment.get(workspace=ws, nmae="qwer")
env.get_image_details(ws)

from azureml.core.environment import CondaDependencies
myenv = Environment(name="myenv")
conda_dep = CondaDependencies()
conda_dep.add_conda_package("scikit-learn")

from azureml.core import Dataset
dataset = Dataset.Tabular.from_delimited_files(path = [(datastore, 'train-dataset/tabular/iris.csv')])
# preview the first 3 rows of the dataset
dataset.take(3).to_pandas_dataframe()

from azureml.core.compute import ComputeTarget, AmlCompute
   from azureml.core.compute_target import ComputeTargetException

   # Choose a name for your CPU cluster
   cpu_cluster_name = "cpu-cluster"

   # Verify that cluster does not exist already
   try:
       cpu_cluster = ComputeTarget(workspace=ws, name=cpu_cluster_name)
       print('Found existing cluster, use it.')
   except ComputeTargetException:
       compute_config = AmlCompute.provisioning_configuration(vm_size='STANDARD_D2_V2',
                                                              max_nodes=4)
       cpu_cluster = ComputeTarget.create(ws, cpu_cluster_name, compute_config)

   cpu_cluster.wait_for_completion(show_output=True)

   from azureml.train.estimator import Estimator

script_params = {
    # to mount files referenced by mnist dataset
    '--data-folder': ds.as_named_input('mnist').as_mount(),
    '--regularization': 0.8
}

sk_est = Estimator(source_directory='./my-sklearn-proj',
                   script_params=script_params,
                   compute_target=compute_target,
                   entry_script='train.py',
                   conda_packages=['scikit-learn'])