
import pandas as pd
from sklearn.tree import DecisionTreeClassifier
from sklearn.model_selection import train_test_split
from sklearn.metrics import accuracy_score, classification_report, confusion_matrix
from sklearn.preprocessing import LabelEncoder
from sklearn import tree

geral = pd.read_excel('geralModeloML2.xls', sheet_name=0) 
print("\nDimensões: {0}".format(geral.shape))
print("\nCampos: {0}".format(geral.keys()))
print(geral.describe(), sep='\n')

X_train = geral.iloc[:,0:(geral.shape[1]-1)]

le = LabelEncoder()
y_train = le.fit_transform(geral.iloc[:,(geral.shape[1] - 1)])

geral_tree = DecisionTreeClassifier(random_state=0)
geral_tree = geral_tree.fit(X_train, y_train)
print("Acurácia:", geral_tree.score(X_train, y_train))

Train_predict = geral_tree.predict(X_train)
print("Acurácia de previsão:", accuracy_score(y_train, Train_predict))
print(classification_report(y_train, Train_predict))

with open("geralModeloML.dot", "w") as f:
    f = tree.export_graphviz(geral_tree, out_file=f)
