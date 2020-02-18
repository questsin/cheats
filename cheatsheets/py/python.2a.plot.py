!pip install -U seaborn

from matplotlib import pyplot as plt
import seaborn as sns

fig, ax = plt.subplots(figsize = (10,8))
sns.boxplot(df['x'], orient = 'v'))

sns.distplot(x)
sns.lmplot(x)
sns.regplot(x)
sns.pairplot(x)
sns.stripplot(x)
sns.swampplot(x)
sns.kdeplot(x)
sns.heatmap(x,y)
sns.scatterplot(x=,y=,data=)
#boxplot, barplot, countplot
#violinplot
df.groupby(['branch','gender']).size().unstack().plot(kind='bar')
plt.show()plt.show()
#Kernel Density Estimation (KDE) Plots,
#Joint Plots
#hexbin plots