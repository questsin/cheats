!pip install -U scikit-learn
from sklearn.model_selection import train_test_splt

scaled_data = scaled_data.reset_index()
categorical_data = categorical_data.reset_index()
df = pd.concat([scaled_data,categorical_data], axis =1)

X = df #without field to predict
Y = df # with field to predict only

 X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=101)

 X_train.shape, X_test.shape

 from sklearn.linear_model import LogisticRegression

  lr_model = LogisticRegression(solver=solver='lbfgs',
                                multi_class='multinomial',
                                max_iter=10000)

lr_model.fit(X_train, y_train)

lr_model.score(X_test, y_test)