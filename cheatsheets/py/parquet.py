import pyarrow.parquet as pq
import numpy as np
import pandas as pd
import pyarrow as pa
df = pd.DataFrame({'one': [-1, np.nan, 2.5],
                    'two': ['foo', 'bar', 'baz'],
                    'three': [True, False, True]},
                    index=list('abc'))
table = pa.Table.from_pandas(df)
pq.write_table(table, 'example.parquet')
pq.read_table('example.parquet', columns=['one', 'three'])
pq.read_pandas('example.parquet', columns=['two']).to_pandas()
t = pq.read_table('example_noindex.parquet')
t.to_pandas()